package BankingApplicationSpringBoot.Controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import BankingApplicationSpringBoot.Model.User;
import BankingApplicationSpringBoot.Repository.AccountReposetory;
import BankingApplicationSpringBoot.Repository.PaymentRepository;
import BankingApplicationSpringBoot.Repository.TransactRepository;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/transact")
public class TransactController {
	
	@Autowired
	private AccountReposetory accountReposetory;
	
	@Autowired
	private PaymentRepository paymentRepository;
	
	@Autowired
	TransactRepository transactRepository;
	
	String successMessage;
	String errorMessage;

	//	deposite
	@PostMapping("/deposit")
	public String deposit(@RequestParam("deposit_amount")String depositeAmount,
						@RequestParam("account_id")String account_Id, HttpSession httpSession,RedirectAttributes redirectAttributes) {
//		check for empty string:
		if (depositeAmount.isEmpty() || account_Id.isEmpty()) {
			redirectAttributes.addAttribute("error", "Deposite amount cant be empty or account cant be empty");
			return "redirect:/app/dashbord";
		}
		
		User user = (User) httpSession.getAttribute("user");
		int acc_id = Integer.parseInt(account_Id);
		double depositeAmountValue = Double.parseDouble(depositeAmount);
		double currentBalance = accountReposetory.getAccountBalance(user.getUser_id(), acc_id);
		if (depositeAmountValue ==0) {
			redirectAttributes.addAttribute("error", "Deposite Amount Cant be Zero");
			return "reddirect:/app/dashbord";
		}
		
		double newBalance = currentBalance+depositeAmountValue;
		accountReposetory.changeAccontBalance(newBalance, acc_id);
		LocalDateTime currentDate = LocalDateTime.now();
		transactRepository.logTransaction(acc_id, "deposit", depositeAmountValue, "online", "success", "Deposite Transaction Success", null);
		redirectAttributes.addAttribute("success", "Amount Deposite Success");
		return "reddirect:/app/dashbord";
	}
	
	@PostMapping("/transfer")
	public String transfer(@RequestParam("transfer_form")String transfer_form,@RequestParam("transfer_to") String transfer_to,
							@RequestParam("transfer_amount")String transfer_amount,HttpSession httpSession,RedirectAttributes redirectAttributes) {
		if (transfer_form.isEmpty()||transfer_form.isEmpty()||transfer_amount.isEmpty()) {
			redirectAttributes.addFlashAttribute("error", "The account cant be empty");
			return "redirect:/app/dashbord";
		}
		
		int transferFromId = Integer.parseInt(transfer_amount);
		int transferToId = Integer.parseInt(transfer_amount);
		double transferAmount = Double.parseDouble(transfer_amount);
		
		if (transferFromId == transferToId) {
			 errorMessage = "cant transfer into the same account, please selet another acc";
			redirectAttributes.addFlashAttribute("error", errorMessage);
		}
		
		if (transferAmount == 0) {
			errorMessage = "cant transfer an 0 value";
			redirectAttributes.addFlashAttribute("error",errorMessage);
			return "redirect:/app/dashbord";
		}
		
		User user = (User) httpSession.getAttribute("user");
		double currentBalanceOfAccountTransferingFrom = accountReposetory.getAccountBalance(user.getUser_id(), transferToId);
		double currentBalanceOfAccountTransferingTo = accountReposetory.getAccountBalance(user.getUser_id(), transferToId);
//		currentBalance = accountReposetory.getAccountBalance(user.getUser_id(), transferToId);
//		newBalance = currentBalance-transferAmount;
		double newBalanceOfAccountTransferTo = currentBalanceOfAccountTransferingFrom - transferAmount;
		double newBalanceOfAccountTransferingFrom = currentBalanceOfAccountTransferingTo + transferAmount;
		LocalDateTime currentDate = LocalDateTime.now();
		accountReposetory.changeAccontBalance(newBalanceOfAccountTransferingFrom, transferFromId);
		accountReposetory.changeAccontBalance(newBalanceOfAccountTransferTo, transferToId);
		redirectAttributes.addFlashAttribute("success", "amount transfered sucessful");
		return "redirect:/app/dashbord";
	}
	
	@PostMapping("/withdraw")
	public String withdraw(@RequestParam("withdrwa_amount")String withdrawAmount,@RequestParam("account_id")String accountId,
							HttpSession session, RedirectAttributes redirectAttributes) {
		
		if (withdrawAmount.isEmpty()|| accountId.isEmpty()) {
			errorMessage= "withdraw amount and account cant be empty";
			redirectAttributes.addFlashAttribute("error",errorMessage);
			return "redirect:/app/dashbord";
		}
		
		double withdraw_amount = Double.parseDouble(withdrawAmount);
		int account_id = Integer.parseInt(accountId);
		
		if (withdraw_amount==0) {
			errorMessage = "withdraw amount cant be 0";
			redirectAttributes.addFlashAttribute("erroe", errorMessage);
			return "redirect:/app/dashbord";
		}
		
		User user = (User) session.getAttribute("user");
		double currentBalance = accountReposetory.getAccountBalance(user.getUser_id(), account_id);
		double newBalance = currentBalance-withdraw_amount;
		accountReposetory.changeAccontBalance(newBalance, account_id);
		successMessage = "withdraw Success";
		return "redirect:/app/dashbord";
		
	}
	
//	payment
	@PostMapping("/payment")
	public String payment(@RequestParam("beneficiary") String beneficiary,
							@RequestParam("acccount_no")String account_no,
							@RequestParam("account_id")String account_id,
							@RequestParam("reference")String reference,
							@RequestParam("beneficiary")String payment_amount,HttpSession httpSession, RedirectAttributes redirectAttributes) 
	{
							
		
		if (beneficiary.isEmpty()||account_no.isEmpty()||account_id.isEmpty()) {
			errorMessage = "Beneficiary Account number cant be empty";
			redirectAttributes.addFlashAttribute("error", errorMessage);
			return "redirect:/app/dasnbord";
		}
		
		int accountId = Integer.parseInt(account_id);
		double paymentAmount = Double.parseDouble(payment_amount);
		
		if (paymentAmount==0) {
			errorMessage="payment amount cant be 0";
			redirectAttributes.addFlashAttribute("erroe",errorMessage);
			return "redirect:/app/dashbord";
		}
		
		User user = (User) httpSession.getAttribute("user");
		double currentBalance = accountReposetory.getAccountBalance(user.getUser_id(), accountId);
		if (currentBalance<paymentAmount) {
			errorMessage = "you have insufficient balance";
			redirectAttributes.addFlashAttribute("error", errorMessage);
			return "redirect:/app/dashbord";
		}
		
		double newBalance = currentBalance-paymentAmount;
		String reasonCode = "payment processed Successful";
		LocalDateTime currentDateTime = LocalDateTime.now();
		accountReposetory.changeAccontBalance(newBalance, accountId);
		successMessage = reasonCode;
		redirectAttributes.addFlashAttribute("success", successMessage);
		return "redirect:/app/dashbord";
	}
}
