<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<link href="static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
<link href="resource/css/style.css" rel="stylesheet"  type="text/css"/>
</head>

<body>
	<section class="w1000 mc split_header">
		<header class="nav_title fw f20">Forgot Password</header><br>
		<form id="passwordForm" action="admin/user/forgotPasswordVirify">
			<div class="min_fix w310">
				<label>Email address</label>
				<input value="${inputEmail }" id="email" type="email" class="form-control" name="Email" placeholder="Email">
				<button type="button" id="sendEmail" class="btn btn-sm btn-primary" style="margin-top:2px">Send validate email</button>
			</div><br>
			<div class="min_fix w310">
				<label>Validate code</label>
				<input type="text" class="form-control" name="validateCode" placeholder="Validate code">
				<c:if test="${not empty errorMsg }">
					<div class="error">${errorMsg }</div>
				</c:if>
			</div><br>
			<div class="min_fix w310">
				<label>Password</label>
				<input type="password" class="form-control" name="Password" id="Password" placeholder="Password">
			</div><br>
			<div class="min_fix w310">
				<label>Confirm Password</label>
				<input type="password" class="form-control" name="Password2"  id="Password2" placeholder="Password" ><br>
				<span id="pass" style="color: Red; display: none; font-size: 10pt; font-weight: bold; font-family: Andalus;">输入的两次密码不一致</span>
			</div><br>
			<div class="min_fix w310">
				<button id="button" type="submit" class="btn btn-info">Submit</button>
			</div>
		</form>
	</section>
<script src="static/assets/global/plugins/jquery-1.4.4.min.js" type="text/javascript"></script>	
<script src="static/js/jquery-1.11.2.min.js"></script>
<script src="static/js/jquery.validate.min.js"></script>
<script>
	$(function(){
		
		$("#passwordForm").validate({
			rules:{
				validateCode:{
					required:true
				},
			Password:{
					required:true,
					requiredLength:[6,18]
				},
			Password2:{
					required:true,
					requiredLength:[6,18]
				}
			},
			messages:{
				validate:{
					required:"You haven't input the validate code yet."
				},
				Password:{
					required:"The password can not be empty.",
					requiredLength:"The length of password you set must between 6 and 18."
				},
				Password2:{
					required:"The password can not be empty.",
					requiredLength:"The length of password you set must between 6 and 18."
				}
			}
		});
		//判断邮件是否发送
		$("#sendEmail").click(function(){
			var email = $("#email").val();
			//点击发送按钮之后,将按钮置灰
			$(this).addClass("disabled");
			$.ajax({
				url:"admin/email/sendByForgotPassword",
				data:{"email":email},
				success:function(data){
					if(data.msg === "success"){
						alert("We hava sent an validate email to your email address,please check it and input below.");
					}else if(data.msg === "fail"){
						alert("Some thing bad happened,please check your email address and try again later.");
					}
				},
				error:function(){
					alert("Server Error!");
				}
			});
		});
		//密码校验
		$("#Password2").blur(function(){
			var password1=$("#Password").val();
			var password2=$("#Password2").val();
			
			if(password1==password2){
				
				$("#pass").hide();
				$("#button").removeAttr("disabled");
			}else{
				
				$("#pass").show();
				$("#button").attr({"disabled":"disabled"});
			}
		});	
	});
</script>
</body>
</html>


