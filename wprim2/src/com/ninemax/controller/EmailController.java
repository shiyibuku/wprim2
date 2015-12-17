package com.ninemax.controller;

import com.ninemax.controller.base.BaseController;
import com.ninemax.service.IEmailService;
import com.ninemax.service.impl.EmailServiceImpl;

public class EmailController extends BaseController {
	
	private IEmailService emailService = new EmailServiceImpl();
	
	public void send(){
		boolean isSuccess = emailService.sendEmail(getPara("email"),"register");
		if(isSuccess){
			setAttr("msg", "success");
		}else{
			setAttr("msg", "fair");
		}
		renderJson();
	}
	//忘记密码发送邮件
	public void sendByForgotPassword(){
		boolean isSuccess = emailService.sendEmail(getPara("email"),"forgot");
		if(isSuccess){
			setAttr("msg", "success");
		}else{
			setAttr("msg", "fail");
		}
		renderJson();
	}
}
