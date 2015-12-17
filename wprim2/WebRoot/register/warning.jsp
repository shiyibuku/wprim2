<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
 <head>
  <link href="static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
 </head>
  <body>
		
		<h1>E-mail Registered</h1><br>
		<h1>
    		<a href="register" style="color:#990000">
    			Please Register Again
    		</a>
    	</h1>
  </body>
</html>
