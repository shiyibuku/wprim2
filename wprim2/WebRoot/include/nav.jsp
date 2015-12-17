<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<title>Wprim2.0</title>
	<meta content="width=device-width, initial-scale=1" name="viewport"/>
	<link href="static/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
	<link href="static/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
	<link href="static/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
	<link href="static/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="static/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="static/select2/css/select2.min.css">
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square"> 
<div class="page-header navbar navbar-fixed-top">
	<div class="page-header-inner">
		<div class="page-logo">
			<span style="color:white">Wprim2.0</span>
		</div>
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown dropdown-user">
					<a href="admin/user/profile" class="dropdown-toggle" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img-circle" src="static/assets/admin/layout/img/avatar3_small.png"/>
						<span class="username username-hide-on-mobile">
						${sessionScope.curr_user.UserName } </span>
					</a>
				</li>
				<li class="dropdown dropdown-quick-sidebar-toggler">
					<a href="admin/user/logout" class="dropdown-toggle">
					<i class="icon-logout"></i>
					</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="page-container">
<div class="page-sidebar-wrapper">
	<div class="page-sidebar navbar-collapse collapse">
		<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
			<li class="sidebar-toggler-wrapper">
				<div class="sidebar-toggler hidden-phone">
					<h3 style="margin-left:-170px; line-height:1px;  color:#666;"> Menu List</h3>
				</div>
			</li>
			<li class="sidebar-search-wrapper">
				<form class="sidebar-search " action="#" method="post">
				</form>
			</li>
			<li class="active">
		    <a href="javascript:;">
			    <i class="icon-home"></i> 
			    <span class="title">Mangement Home</span>
		    </a>
	    	</li>
			<li class="start active open">
				<a href="javascript:;">
				<i class="icon-settings"></i>
				<span class="title">System Mangement</span>
				<span class="arrow open"></span>
				</a>
				<ul class="sub-menu">
					<li >
						<a href="admin/user/index">User Mangement</a>
					</li>
				</ul>
			</li>
			<li class="start active open">
				<a href="admin/journal/findAll">
					<i class="icon-home"></i>
					<span class="title">Journal Home</span>
				</a>
			</li>
		</ul>
	</div>
</div>