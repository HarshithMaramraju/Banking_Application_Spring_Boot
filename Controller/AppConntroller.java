package BankingApplicationSpringBoot.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import BankingApplicationSpringBoot.Model.Account;
import BankingApplicationSpringBoot.Model.PaymentHistory;
import BankingApplicationSpringBoot.Model.TransactionHistory;
import BankingApplicationSpringBoot.Model.User;
import BankingApplicationSpringBoot.Repository.AccountReposetory;
import BankingApplicationSpringBoot.Repository.PaymentHistiryRepository;
import BankingApplicationSpringBoot.Repository.PaymentRepository;
import BankingApplicationSpringBoot.Repository.TransactRepository;
import BankingApplicationSpringBoot.Repository.TransactionHistoryReposetory;
import jakarta.servlet.http.HttpSession;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/app")
public class AppConntroller {
	
	@Autowired
	private AccountReposetory accountReposetory;
	
	@Autowired
	private PaymentHistiryRepository paymentHistiryRepository;
	
	@Autowired
	private TransactionHistoryReposetory transacthHistoryReposetory;

	@GetMapping("/dashbord")
	public ModelAndView getDashbord(HttpSession session) {
		ModelAndView getDashboardPage = new ModelAndView();
		User user = (User) session.getAttribute("user");
		List<Account> getUserAccount = accountReposetory.getUserAccountById(user.getUser_id());
		BigDecimal totalAccountBalance = accountReposetory.getTotalBalance(user.getUser_id());
		getDashboardPage.addObject("userAccount", getUserAccount);
		getDashboardPage.addObject("totalBalance", totalAccountBalance);
		return getDashboardPage;

	}
	
	@GetMapping("/payment_history")
	public ModelAndView getPaymentHiistory(HttpSession session) {
		ModelAndView getPaymentHistoryPage = new ModelAndView("paymentHistory");
		User user = (User) session.getAttribute("user");
		List<PaymentHistory> userPaymentHistory = paymentHistiryRepository.gettPaymentRecordsById(user.getUser_id());
		getPaymentHistoryPage.addObject("payment_history", userPaymentHistory);
		return getPaymentHistoryPage;
	}
	
	@GetMapping("/transaction_history")
	public ModelAndView getTransactionHiistory(HttpSession session) {
		ModelAndView getTransactionHistoryPage = new ModelAndView("transactionHistory");
		User user = (User) session.getAttribute("user");
		List<TransactionHistory> userTransactionHistory = transacthHistoryReposetory.getTransactionRecordsById(user.getUser_id());
		getTransactionHistoryPage.addObject("payment_history", userTransactionHistory);
		return getTransactionHistoryPage;
	}
}