<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<title>WPRIM Candidate Journal Selection System</title>
	<link href="static2/css/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="DatePicker/skin/WdatePicker.css">
	<link rel="stylesheet" href="static/select2/css/select2.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<style>
		.error{
			color:red
		}
	</style>
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
<div class="container">
	<c:if test="${not empty sessionScope.curr_user }">
		<div class="UserStatus">
		    <span class="a_img">
		    	<img src="static2/images/u_info.gif" align="middle" width="20" height="17" style="line-height: 17px;" />
		    </span>
		    &nbsp;Hello 
		    <span class="blue_color">${sessionScope.curr_user.UserName }</span>!
		</div>
	</c:if>
  <div class="main">
    <div id="left">
      <div class="l_nav">
        <ul>
          <li>
            <h1>WPRIM</h1>
          </li>
          <li>
            <a href="admin/journal/website">Website</a>
            <c:if test="${sessionScope.isManage }">
          		<br><a href="admin/journal/findAll">Wprim</a>
          	</c:if>
          </li>
        </ul>
        <ul>
          <li>
            <h1>Settings</h1>
          </li>
          <li>
          	<c:if test="${empty sessionScope.curr_user }">
          		<a href="index.jsp">Login</a>
          	</c:if>
          	<c:if test="${not empty sessionScope.curr_user }">
          		<a href="admin/user/logout">Logout</a>
          	</c:if>
          	<br>
          	<c:if test="${!sessionScope.isManage }">
          		<a href="admin/user/index">Manage System</a>
          	</c:if>
          </li>
        </ul>
      </div>
    </div>

