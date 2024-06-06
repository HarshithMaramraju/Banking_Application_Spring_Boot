package BankingApplicationSpringBoot.ControllerAdvicer;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import BankingApplicationSpringBoot.Model.User;

@ControllerAdvice
public class AdvicorController {
	
	@ModelAttribute("registerUser")
	public User getUserDefaults() {
		return new User();
	}
}
