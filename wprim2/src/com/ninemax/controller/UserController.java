package com.ninemax.controller;

import java.util.List;

import com.jfinal.plugin.activerecord.Record;
import com.ninemax.controller.base.BaseController;
import com.ninemax.service.IEmailService;
import com.ninemax.service.IUserService;
import com.ninemax.service.impl.EmailServiceImpl;
import com.ninemax.service.impl.UserServiceImpl;

@SuppressWarnings("unchecked")
public class UserController extends BaseController {
	
	private IUserService userService = new UserServiceImpl();
	private IEmailService emailService = new EmailServiceImpl();
	
	//修改个人信息
	public void profile(){
		Object user = getSessionAttr("curr_user");
		if(user == null){
			render("/index.jsp");
		}else{
			setAttr("roles", userService.findRolesForUser(user));
			setAttr("user", user);
			render("/user/profile.jsp");
		}
	}
	
	//新增用户
	public void save(){
		userService.save(getPara("username"),getPara("password"),getPara("country"),getPara("editDep"),getPara("address"),getPara("phone"),getPara("fax"),getPara("email"),getRequest().getParameterValues("role"));
		redirect("/admin/user/index");
	}
	
	//注销
	public void logout(){
		getSession().invalidate();
		render("/index.jsp");
	}
	
	//转到新增用户界面
	public void newUser(){
		Record user = getSessionAttr("curr_user");
		setAttr("countryList", userService.findCountry(user));
		setAttr("roleList", userService.findRoles(user));
		render("/user/new.jsp");
	}
	
	//转到用户列表页
	public void index(){
		Record curr_user = getSessionAttr("curr_user");
		if(curr_user != null){
			setAttr("canAddUser", userService.checkForAddUser(curr_user));
			setAttr("userList", userService.findAll(curr_user));
			setSessionAttr("isManage", true);
			render("/user/list.jsp");
		}else{
			render("/index.jsp");
		}
	}
	
	//用户登录
	public void login(){
		Record user = userService.login(getPara("username"),getPara("password"));
		if(user != null){
			setSessionAttr("curr_user", user);
			String requestUrl = getSessionAttr("requestUrl");
			if(requestUrl != null && !requestUrl.trim().equals("")){
				redirect(requestUrl);
			}else{
				redirect("/admin/user/home");
			}
		}else{
			render("/index.jsp");
		}
	}
	
	//登录后跳转用户管理主页
	public void manageHome(){
		Record curr_user = getSessionAttr("curr_user");
		if(curr_user != null){
			render("/home/home.jsp");
		}else{
			render("/index.jsp");
		}
	}
	
	//跳转注册页面
	public void register(){
		render("/register/register.jsp");
	}
	
	//跳转到修改密码页面
	public void forgotpassword(){
		render("/user/password.jsp");
	}
	
	//注册验证
	public void registerVirify(){
		String email = getPara("Email");
		
		//验证邮箱是否存在
		Record user=userService.EmailVerify(email);
		
		//校验邮箱和验证码是否匹配
		boolean isMatch = emailService.validateEmailAndCode(email,getPara("validateCode"));
		
		if(user!=null){
			render("/register/warning.jsp");
		}else{
			if(isMatch){
				userService.VerifyPass(email, getPara("Password"));
				render("/index.jsp");
			}else{
				setAttr("errorMsg", "Validate code not match.");
				setAttr("inputEmail", email);
				render("/register/register.jsp");
			}
		}
	}
		//忘记密码验证
		public void forgotPasswordVirify(){
			
			String email = getPara("Email");
			//验证邮箱是否存在
			Record isEmail=userService.EmailVerify(email);
			//校验邮箱和验证码是否匹配
			boolean isMatch = emailService.validateEmailAndCode(email,getPara("validateCode"));
			//邮箱不存在,跳转到注册页面
			if(isEmail==null){
				render("/register/warning.jsp");
			}else{
				if(isMatch){
					userService.ModifyPass(email, getPara("Password"));
					render("/index.jsp");
				}else{
					setAttr("errorMsg", "Validate code not match.");
					setAttr("inputEmail", email);
					render("/register/register.jsp");
				}
			}
		}
	
	//跳转登录后主页
	public void home(){
		redirect("/admin/journal/findAll");
	}
	
	//删除用户
	public void delete(){
		userService.delete(getPara("id"),(Record)getSessionAttr("curr_user"));
		setAttr("data", true);
		renderJson();
	}
	
	//查询用户信息
	public void queryUser(){
			//查询用户
			Record user=userService.queryData(getPara("id"));
			//用户绑定的角色
			List<Record> role1= userService.FindRoleByUserId(getPara("id"));
			//所有国家
			List<Record>list=(List<Record>)userService.findAllCountry();
			//所有角色
			List<Record> role2=userService.findRoles();
			//移除用户绑定的角色
			userService.RoleRemove(role1, role2);
			//移除用户已有的国家
			userService.CountryRemove(user, list);
			
			setAttr("countryList", list);
			
			setAttr("role2",role2);
			
			setAttr("role1",role1);
			
			setAttr("user", user);
			
			render("/user/update.jsp");
	
	}
	
	//更新用户信息
	public void update(){
		userService.update(getSessionAttr("curr_user"),getPara("userid"),getPara("username"),getPara("password"),getPara("country"),getPara("editDep"),getPara("address"),getPara("phone"),getPara("fax"),getPara("email"),getRequest().getParameterValues("role"));
		redirect("/admin/user/index");
	}
	
//	//查询用户是否存在
//	public void queryUserIsExit(){
//		 System.out.println(getPara("username"));
//		 Record user =userService.UserIsExit(getPara("username"));
//		 if(null==user){
//			 
//			 renderJson("没有此用户："+getPara("username"));
//			 
//		 }else{
//			 
//			 renderJson("请修改密码!");
//		 }
//	
//	}
	
//	//修改密码
//	public void modifyPassword(){
//		
//		userService.ModifyPass(getPara("username"), getPara("password"));
//		
//		render("/index.jsp");
//	}
	
}
