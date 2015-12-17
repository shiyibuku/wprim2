package com.ninemax.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.ninemax.service.IEmailService;

public class EmailServiceImpl implements IEmailService {

	/**
	 * 发送验证码邮件
	 */
	@Override
	public boolean sendEmail(String email,String type) {
		//生成6位数字的验证码
		int validateCode = (int) (Math.random() * 1000000);
		//发送邮件
		boolean isComplete = email(email,validateCode);
		//添加邮件发送记录
		if(isComplete){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String sendTime = sdf.format(new Date());
			Record emailLog = new Record().set("email_address", email).set("send_time",sendTime).set("validate_code", String.valueOf(validateCode)).set("type", type);
			Db.save("Wprim_Email", emailLog);
			return true;
		}
		return false;
	}

	/**
	 * 发送邮件
	 * @param emailAddress 收件人邮件地址
	 * @param validateCode 
	 * @return 发送邮件是否成功 true/false
	 */
	private boolean email(String emailAddress, int validateCode){
		Properties prop = new Properties();
		try {
			prop.load(EmailServiceImpl.class.getClassLoader().getResourceAsStream("email.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String hostName = prop.getProperty("hostName");
		String userName = prop.getProperty("userName");
		String password = prop.getProperty("password");
		String from = prop.getProperty("from");
		String subject = prop.getProperty("subject");
		
		SimpleEmail email = new SimpleEmail();
		email.setHostName(hostName);
		email.setAuthentication(userName, password);
		email.setCharset("UTF-8");
		try {
			email.setFrom(from);
			email.addTo(emailAddress);
			email.setSubject(subject);
			email.setMsg("Your validate code:" + validateCode);
			email.send();
		} catch (EmailException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

	/**
	 * 验证用户提交的邮箱地址和验证码是否匹配
	 */
	@Override
	public boolean validateEmailAndCode(String email, String validateCode) {
		Record emailLog = Db.findFirst("select top 1 * from Wprim_Email where email_address = ? and type = 'register' order by id desc",email);
		if(emailLog != null){
			return emailLog.get("validate_code").equals(validateCode);
		}
		return false;
	}
}
