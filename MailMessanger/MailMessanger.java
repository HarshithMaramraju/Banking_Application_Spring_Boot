package BankingApplicationSpringBoot.MailMessanger;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import BankingApplicationSpringBoot.Config.Mail;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

public class MailMessanger {

	public static void htmlEmailMessanger(String from, String toMail, String subject, String body) throws MessagingException {
//		mail config
		JavaMailSender sender = Mail.getMailConfig();
//		ste mime message
		MimeMessage message = sender.createMimeMessage();
//		set mime message helper
		MimeMessageHelper htmlMessage = new MimeMessageHelper(message,true);
//		set mail atribute/properties
		htmlMessage.setTo(toMail);
		htmlMessage.setFrom(from);
		htmlMessage.setSubject(subject);
		htmlMessage.setText(body, true);
//		send message
		sender.send(message);
	}
}
