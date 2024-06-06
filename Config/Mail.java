package BankingApplicationSpringBoot.Config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

public class Mail {

	@Bean
	public static JavaMailSenderImpl getMailConfig() {
		JavaMailSenderImpl emailConfig = new JavaMailSenderImpl();
//		set props
		Properties props = emailConfig.getJavaMailProperties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.debug", "true");
		
//		set mail Credentials
		emailConfig.setHost("localhost");
		emailConfig.setPort(25);
		emailConfig.setUsername("no-reply@easybanking.com");
		emailConfig.setPassword("password123");
		return emailConfig;
	}
	
}
