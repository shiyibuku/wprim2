package com.ninemax.service;

public interface IEmailService {

	boolean sendEmail(String email,String type);

	boolean validateEmailAndCode(String email, String validateCode);

}
