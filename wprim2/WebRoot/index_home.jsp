<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Wprim2</title>
  </head>
  <body>
    <script>
    	(function(){
    		window.location.href = "admin/user/home";
    	})();
    </script>
  </body>
</html>
