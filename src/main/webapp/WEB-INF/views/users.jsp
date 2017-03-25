<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>List of Users</title>
     <link rel="stylesheet" href="/css/bootstrap.min.css" media="screen" />
    <link rel="stylesheet" href="/css/navbar.css" media="screen" />
</head>
<body>
<div class="container">
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav nav-tabs">
	<li role="presentation" ><a href="#">Mobyus</a></li>
	<li role="presentation"><a href="/">Home</a></li>
	<li role="presentation" class="active"><a href="#">Users</a></li>
	<c:if test="${not empty currentUser}">
		<li role="presentation">
			<form action="/logout" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			 <span class="input-group-btn">
		        <button class="btn btn-default" type="submit">Log out</button>
		      </span>
			</form>
		</li>
	</c:if>
	</ul>
</div>
     <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
			<h1><spring:message code="user.users" /></h1>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Email</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
					    <tr>
					        <td><a href="/user/${user.id}">${user.email}</a></td>
					        <td>${user.role}</td>
					    </tr>
	    			</c:forEach>
				    </tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>