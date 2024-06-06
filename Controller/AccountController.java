package BankingApplicationSpringBoot.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import BankingApplicationSpringBoot.Helpers.GenAccountNumber;
import BankingApplicationSpringBoot.Model.User;
import BankingApplicationSpringBoot.Repository.AccountReposetory;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	private AccountReposetory accountReposetory;

	private String createAccount(@RequestParam("account_name")String account_name,
								@RequestParam("account_type")String account_type,
								RedirectAttributes redirectAttributes, HttpSession httpSession) {
//		check for empty strings
		if (account_name.isEmpty() || account_type.isEmpty()) {
			redirectAttributes.addFlashAttribute("error","account name and type cant be empty");
			return "redirect:/app/dashbord";
		}
//		get logged in user
		User user = (User) httpSession.getAttribute("user");
//		get the user
		int setAccountNumber = GenAccountNumber.generateAccountNumber();
		String bankAccountNumber = Integer.toString(setAccountNumber);
//		to create account
		
		accountReposetory.createBankAccount(user.getUser_id(), bankAccountNumber,account_name ,account_type);
//		set success msg
		redirectAttributes.addAttribute("success", "Account created successful");
		return "redirect:/app/dashbord";
	}
	
}
