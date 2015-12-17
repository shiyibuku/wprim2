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
		<header class="nav_title fw f20">Register</header><br>
		<form id="registerForm" action="admin/user/registerVirify" method="post">
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
				<input type="password" class="form-control" name="Password" placeholder="Password">
			</div><br>
			<div class="min_fix w310">
				<button type="submit" class="btn btn-info">Submit</button>
			</div>
		</form>
	</section>
	
	<script src="static/js/jquery-1.11.2.min.js"></script>
	<script src="static/js/jquery.validate.min.js"></script>
	<script>
		$(function(){
			
			$("#registerForm").validate({
				rules:{
					validateCode:{
						required:true
					},
					Password:{
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
					}
				}
			});
			
			$("#sendEmail").click(function(){
				var email = $("#email").val();
				$(this).addClass("disabled");
				$.ajax({
					url:"admin/email/send",
					data:{"email":email},
					success:function(data){
						if(data.msg === "success"){
							alert("We hava sent an validate email to your email address,please check it and input below.");
						}else if(data.msg === "fair"){
							alert("Some thing bad happened,please check your email address and try again later.");
						}
					},
					error:function(){
						alert("Server Error!");
					}
				});
			});
		});
	</script>
</body>
</html>
