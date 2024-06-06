package BankingApplicationSpringBoot.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oracle.wls.shaded.org.apache.xalan.lib.Redirect;

import BankingApplicationSpringBoot.Helpers.Tocken;
import BankingApplicationSpringBoot.Model.User;
import BankingApplicationSpringBoot.Repository.UserRepository;
import jakarta.servlet.http.HttpSession;

@RestController
public class AuthController {
	
	@Autowired
	private UserRepository  userRepository;

	@GetMapping("/logIn")
	public ModelAndView getLogin() {
		ModelAndView getLoginPage = new ModelAndView("log");
		String token = Tocken.generateToken();
		getLoginPage.addObject("PageTitle", "log");
		return getLoginPage;
	}
	
	@PostMapping("/log")
	public String login(@RequestParam("email")String email, 
						@RequestParam("password")String password, 
						@RequestParam("_token")String token,
						Model model, HttpSession httpSession) {
//		validate inputs for form data
		if (email.isEmpty() || email== null || password.isEmpty() || password == null)
{
			model.addAttribute("error","username or password cant be empty");
			return "log";
		}
		else
		{
			model.addAttribute("success", "login successful");
		}
		
		String getEmailInDatabase = userRepository.getUserEmail(email);
		
		if (!getEmailInDatabase.isEmpty() || getEmailInDatabase != null) {
			String getPasswordInDatabase = userRepository.getUserPassword(getEmailInDatabase);
			if (!BCrypt.checkpw(password,getEmailInDatabase)) {
				model.addAttribute("error", "Incorret username or password");
			}
			else {
				model.addAttribute("error", "Somthing went wrong please contact suppoer");
				return "error";
			}
			
		}
		
		int verified = userRepository.varifide(getEmailInDatabase);
		if (verified != 1){
			model.addAttribute("error", "this account is not verified, please check email and verify acc");
			return "log";
		}
		
		User user = userRepository.getUserDetails(getEmailInDatabase);
		
		httpSession.setAttribute("user", user);
		httpSession.setAttribute("token", token);
		httpSession.setAttribute("authenticated", true);
	
		
		return "redirect:/app/dashbord";
	}
	
	@GetMapping("/logout")
	public String logiut(HttpSession session, RedirectAttributes redirectAttributes) {
		session.invalidate();
		redirectAttributes.addFlashAttribute("logged_out","Logout successfull");
		return"redirect:/log";
	}
}
