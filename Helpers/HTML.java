package BankingApplicationSpringBoot.Helpers;

public class HTML {

	public static String htmlEmailTamplete(String token, int code) {
//		verify account
		String url = "http://localhost:8080/verify?token"+token + "&code=" + code;
		String emailTamplete = "<!DOCTYPE html>\r\n"
				+ "<html lang='en'>\r\n"
				+ "<head>\r\n"
				+ "    <meta charset='UTF-8'>\r\n"
				+ "    <meta http-equiv='X-UA-Compatible' content='IE-edge'>\r\n"
				+ "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\r\n"
				+ "    <link rel='stylesheet' href='./css/email.css'>\r\n"
				+ "    <title>Document</title>\r\n"
				+ "    <style>\r\n"
				+ "        *{\r\n"
				+ "            box-sizing: border-box;\r\n"
				+ "            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',\r\n"
				+ "            'Lucida Sans', Arial, sans-serif;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        body{\r\n"
				+ "            height: 100vh;\r\n"
				+ "            background-color: rgb(212, 222, 230);\r\n"
				+ "            display: flex;\r\n"
				+ "            align-items: center;\r\n"
				+ "            justify-content: center;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .wrapper{\r\n"
				+ "            width: 550px;\r\n"
				+ "            height: auto;\r\n"
				+ "            padding: 15px;\r\n"
				+ "            background-color: white;\r\n"
				+ "            border-radius: 7px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .email-msg-header{\r\n"
				+ "            text-align: center;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .company-name{\r\n"
				+ "            font-size: 40px;\r\n"
				+ "            /* margin: 15px 0px; */\r\n"
				+ "            color: grey;\r\n"
				+ "            text-align: center;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .welcome-text{\r\n"
				+ "            text-align: center;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .verify-account-btn{\r\n"
				+ "            padding: 15px;\r\n"
				+ "            background-color: rgb(0, 109, 252);\r\n"
				+ "            text-decoration: none;\r\n"
				+ "            color: white;\r\n"
				+ "            border-radius: 5px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .copy-right{\r\n"
				+ "            text-align: center;\r\n"
				+ "            padding: 15px;\r\n"
				+ "            color: gray;\r\n"
				+ "            font-size:15px;\r\n"
				+ "            margin: 15px 0px;\r\n"
				+ "            display: flex;\r\n"
				+ "            justify-content: center;\r\n"
				+ "        }   \r\n"
				+ "    </style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "    \r\n"
				+ "    <div class='wrapper'>\r\n"
				+ "        <h2 class='email-msg-header'>\r\n"
				+ "            Welcome and Thanks for choosing <br>\r\n"
				+ "        </h2>\r\n"
				+ "        <div class='company-name'>Easy-Banking</div>\r\n"
				+ "        <hr>\r\n"
				+ "        <p class='welcome-text'>\r\n"
				+ "            Your Account has been successfully Registered, Please click below to verify your account.\r\n"
				+ "        </p>\r\n"
				+ "        <br>\r\n"
				+ "        <center><a href='"+url+"' class='verify-account-btn' role='button'>Verify Account</a></center>\r\n"
				+ "        \r\n"
				+ "        <div class='copy-right'>\r\n"
				+ "            &copy; Copy Right 2024. All Rights Reserved.\r\n"
				+ "        </div>\r\n"
				+ "\r\n"
				+ "    </div>\r\n"
				+ "\r\n"
				+ "</body>\r\n"
				+ "</html>";
		return emailTamplete;
	}
}
