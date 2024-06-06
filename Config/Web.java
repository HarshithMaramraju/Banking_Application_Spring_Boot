package BankingApplicationSpringBoot.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import BankingApplicationSpringBoot.Inspectors.AppInspector;

@Configuration
@ComponentScan(basePackages = {"BankingApplicationSpringBoot"})
public class Web extends WebMvcConfigurationSupport {

	@Override
	protected void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("css/**","js/**","ErrorHandiling/**")
		.addResourceLocations("classpath:/tamplates/css/","classpath:/tamplates/js/","classpath:/tamplates/ErrorHandiling/");
	}
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
		jspViewResolver.setPrefix("/WEB-INF/jsp/");
		jspViewResolver.setSuffix(".jsp");
		jspViewResolver.setViewClass(JstlView.class);
		return jspViewResolver;
	}
	
	protected void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new AppInspector()).addPathPatterns("/app/*");
	}
}
