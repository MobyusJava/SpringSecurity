<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Home page</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" media="screen" />
<link rel="stylesheet" href="/css/navbar.css" media="screen" />
</head>
<body>
	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav nav-tabs">
			<li role="presentation" ><a href="#">Mobyus</a></li>
			<li role="presentation" class="active"><a href="/">Home</a></li>
			<c:if test="${empty currentUser}">
				<li role="presentation"><a href="/login">Log in</a></li>
			</c:if> 
			<c:if test="${not empty currentUser}">
				<li role="presentation"><a href="/user/${currentUser.id}">View myself</a></li>
			</c:if>
			<c:if test="${not empty currentUser && currentUser.role == 'ADMIN'}">
			    <li role="presentation" ><a href="/user/create">Create a new user</a></li>
			    <li role="presentation" ><a href="/users">View all users</a></li>
			</c:if>
			<c:if test="${not empty currentUser}">
				<li role="presentation">
					<form action="/logout" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					 <span class="input-group-btn">
				        <button class="btn btn-default" type="button">Log out</button>
				      </span>
					</form>
				</li>
			</c:if>
			</ul>
		</div>
	</div>
		
<div class="container">
	<div class="page-header" id="banner">
		<div class="row">
			<div class="col-lg-8 col-md-7 col-sm-6">
				<h1><spring:message code="user.home" /></h1>
			</div>
		</div>
	</div>
</div>
</body>
</html>