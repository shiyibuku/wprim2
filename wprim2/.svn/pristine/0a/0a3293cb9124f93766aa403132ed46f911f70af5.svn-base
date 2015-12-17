<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Wprim2</title>
	<link href="static2/css/style.css" rel="stylesheet" type="text/css" />
	<link href="static2/eng_dl.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>

<body>
<div class="manageheader" style="height:110px;">
  <div class="qlink">
    <a href="admin/user/profile">Edit My Information   </a>
    |
    <c:if test="${empty sessionScope.curr_user }">
    	<a href="index.jsp">Login</a>
    </c:if>
    <c:if test="${not empty sessionScope.curr_user }">
    	<a href="admin/user/logout">Logout</a>
    </c:if>
  </div>
</div>