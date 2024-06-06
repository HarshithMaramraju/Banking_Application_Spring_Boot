package BankingApplicationSpringBoot.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import BankingApplicationSpringBoot.Repository.UserRepository;

//@org.springframework.stereotype.Controller
@RestController
public class IndexController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/home")
//	@RequestMapping()
	public ModelAndView getIndex() {
		ModelAndView getIndexPage = new ModelAndView("home");
		getIndexPage.addObject("PageTitle","index");
		return getIndexPage;
	}
	
	@GetMapping("/log")
	public ModelAndView getLogin() {
		ModelAndView getLoginPage = new ModelAndView("log");
		getLoginPage.addObject("PageTitle","Log");
		return getLoginPage;
	}
	
	@GetMapping("/registerPage")
	public ModelAndView getRegister() {
		ModelAndView getRegisterPage = new ModelAndView("registerPage");
		getRegisterPage.addObject("PageTitle", "Register");
		return getRegisterPage;
	}
	
	@GetMapping("/error")
	public ModelAndView getError() {
		ModelAndView getErrorPage = new ModelAndView("error");
		getErrorPage.addObject("PageTitle", "Error");
		return getErrorPage;
	}
	
	@GetMapping("/verify")
	public ModelAndView getVerify(@RequestParam("token")String token,
								  @RequestParam("code")String code) {
		ModelAndView getVerify = new ModelAndView("log");
		String dbToken = userRepository.checkToken(token);
//		check token is valid or not
		if (dbToken.isEmpty()) {
			getVerify = new ModelAndView("error");
			getVerify.addObject("error","This session has expired");
			return getVerify;
		}
//		update and verify
		userRepository.VeifyAccount(token,code);
		getVerify = new ModelAndView();
		getVerify.addObject("success", "Verified successfully, Please proceed to login");
		return getVerify;
	}
	
	@GetMapping("/dashbord")
	public ModelAndView getDashbord() {
		ModelAndView getDashbordPage = new ModelAndView("dashbord");
		getDashbordPage.addObject("PageTitle", "dashbord");
		return getDashbordPage;
	}
	
}
