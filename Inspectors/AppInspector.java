package BankingApplicationSpringBoot.Inspectors;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import BankingApplicationSpringBoot.Model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class AppInspector implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler,RedirectAttributes redirectAttributes) throws Exception {
		if (request.getRequestURI().startsWith("/app")) {
			HttpSession session = request.getSession();
			String token = (String) session.getAttribute("token");
			User user = (User) session.getAttribute("user");
			boolean isAuthenticated = (boolean) session.getAttribute("authenticed");
			if (token == null|| user ==null ) {
				String errorMsg = "you need to login to access";
				redirectAttributes.addFlashAttribute("error",errorMsg);
				response.sendRedirect("/log");
				return false;
			}
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
