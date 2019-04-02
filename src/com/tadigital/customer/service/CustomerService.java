package com.tadigital.customer.service;

import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class CustomerService {
	CustomerDao cd=new CustomerDao();




	public boolean registerCustomer(Customer c) {
		boolean status=cd.insertCustomer(c);
		if(status) {
			sendWelcomeMail(c.getFirstName()+" "+c.getLastName(),c.getEmail());
		}
		return status;
	}




	public boolean loginCustomer(Customer c) {
		boolean status = cd.CustomerLoginCheck(c);
		return status;
	}
	
	public String sendWelcomeMail(String name, String email) {
		String status = "NOT SENT";
		
		//MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",	"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
		
		//CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator() {
																	protected PasswordAuthentication getPasswordAuthentication() {
																		return new PasswordAuthentication("arunkumarreddy127@gmail.com","9133422652");
																	}
																});
		try {
			//COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("arunkumarreddy127@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(email));
			/*mimeMessage.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(email));
			mimeMessage.setRecipients(Message.RecipientType.CC,	InternetAddress.parse(email));
			mimeMessage.setRecipients(Message.RecipientType.CC,	InternetAddress.parse(email));
			mimeMessage.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(email));*/
			mimeMessage.setSubject("Welcome to TA Digital Online Shopping Portal.");
			String msg = "Dear " + name + ",\n\n" +
						 "Thanks for Registering on our portal." +
						 "\nWelcome to TA Digital Family." +
						 "\n\nThanks & Regards" +
						 "\nTA Digital";
			mimeMessage.setText(msg);

			//SEND MAIL
			Transport.send(mimeMessage);
			
			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
		
		return status;
	}

}
