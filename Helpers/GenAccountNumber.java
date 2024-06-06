package BankingApplicationSpringBoot.Helpers;

import java.util.Random;

public class GenAccountNumber {

	public static int generateAccountNumber() {
		int accoutNumber;
		Random random = new Random();
		int bound = 1000;
		accoutNumber = bound*random.nextInt();
		return accoutNumber;
	}
	
}
