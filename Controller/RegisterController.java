package BankingApplicationSpringBoot.Controller;

import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailMessage;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import BankingApplicationSpringBoot.Helpers.HTML;
import BankingApplicationSpringBoot.Helpers.Tocken;
import BankingApplicationSpringBoot.MailMessanger.MailMessanger;
import BankingApplicationSpringBoot.Model.User;
import BankingApplicationSpringBoot.Repository.UserRepository;
import ch.qos.logback.core.subst.Token;
import jakarta.mail.MessagingException;
import jakarta.validation.Valid;

@RestController
//@Controller
public class RegisterController {

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/register")
	public ModelAndView	getRegister() {
		ModelAndView getRegisterPage = new ModelAndView("register");
		getRegisterPage.addObject("PageTitle", "Register");
		return getRegisterPage;
	}

	@PostMapping("/registerInsert")
	public ModelAndView register(@Valid @ModelAttribute("registerUser") User user, BindingResult result,
								 @RequestParam("first_name") String first_name,
								 @RequestParam("last_name") String last_name,
								 @RequestParam("email") String email,
								 @RequestParam("password") String password,
								 @RequestParam("conform_password") String conform_password) throws MessagingException
								 
	{
		
		ModelAndView registrationPage = new ModelAndView("register");
//		check for errors
		if (result.hasErrors() && conform_password.isEmpty()) {
			registrationPage.addObject("conform_password","This field is required");
			return registrationPage;
		}
		
//		todo check for password match
		if (!password.equals(conform_password)) {
			registrationPage.addObject("passwordMisMatch", "password not matching");
			return registrationPage;
		}
		
//		get token string
		String token = Tocken.generateToken();
		
//		generate random code
		Random rand = new Random();
		int bound =1234;
		int code = bound*rand.nextInt(bound);
		
//		get email html body
		String emailBody = HTML.htmlEmailTamplete(token, code);
		
//		hashpassword
		String hashed_password = BCrypt.hashpw(password, BCrypt.gensalt());
		
//		regster user
		userRepository.registerUser(first_name, last_name, emailBody, hashed_password, conform_password, token, code);
//		send mail notification
		MailMessanger.htmlEmailMessanger("no-reply@easybanking.com",email,"verify account",emailBody);
//		return to registration page
		String successMessage = "Accouted registered successfully and verify account";
		registrationPage.addObject("success",successMessage);
		return registrationPage;
	}
	
}
