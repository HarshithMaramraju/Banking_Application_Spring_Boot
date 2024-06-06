package BankingApplicationSpringBoot.Helpers;

import java.util.UUID;

public class Tocken {

	public static String generateToken() {
		String token = UUID.randomUUID().toString();
		return token;
	}
}
