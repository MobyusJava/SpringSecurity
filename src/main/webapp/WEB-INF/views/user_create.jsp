<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" media="screen" />
    <link rel="stylesheet" href="/css/navbar.css" media="screen" />    
    <link rel="stylesheet" href="/css/style.css" media="screen" />
</head>
<body>
<div class="container">
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav nav-tabs">
	<li role="presentation" ><a href="#">Mobyus</a></li>
	<li role="presentation"><a href="/">Home</a></li>
	<li role="presentation" class="active"><a href="#">Create User</a></li>
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
			<h1><spring:message code="user.create" /></h1>
			<spring:hasBindErrors name="form"> 		
				<ul>
					<c:forEach items="${errors.allErrors}" var="error">
				        <li class="error"><spring:message message="${error}" /></li>
				    </c:forEach >
				</ul>
			</spring:hasBindErrors>
 		<form class="form-horizontal" role="form" name="form" action="" method="post">
			    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<fieldset>
				<div class="form-group">
			        <label class="col-lg-2 control-label" for="email">Email address</label>
			        <div class="col-lg-6">
			        <input class="form-control" type="email" name="email" id="email" required autofocus/>
			        </div>
			    </div>
			   <div class="form-group">
			        <label class="col-lg-2 control-label" for="password">Password</label>
			        <div class="col-lg-6">
			        <input class="form-control" type="password" name="password" id="password" required/>
			    	</div>
			    </div>
			    <div class="form-group">
			        <label class="col-lg-2 control-label" for="passwordRepeated">Repeat</label>
			        <div class="col-lg-6">
			        <input class="form-control" type="password" name="passwordRepeated" id="passwordRepeated" required/>
			    	</div>
			    </div>
			    <div class="form-group">
			        <label class="col-lg-2 control-label" for="role">Role</label>
			        <div class="col-lg-6">
			        <select class="form-control" name="role" id="role" required>
			            <option <c:if test="${form.role == 'USER'}">selected</c:if>>USER</option>
			            <option <c:if test="${form.role == 'ADMIN'}">selected</c:if>>ADMIN</option>
			        </select>
			    	</div>
			    </div>
			    <div class="form-group">
			        <div class="col-lg-6">
			        <span class="input-group-btn">
						<button type="submit" class="btn btn-default">Save</button>
					</span>
			        </div>
			    </div>
			    </fieldset>
			</form>
 			</div>
		</div>
	</div>
</div>
</body>
</html>