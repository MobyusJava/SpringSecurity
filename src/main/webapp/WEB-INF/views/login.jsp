<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" media="screen" />
    <link rel="stylesheet" href="/css/navbar.css" media="screen" />    
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="container">
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav nav-tabs">
	<li role="presentation" ><a href="#">Mobyus</a></li>
	<li role="presentation"><a href="/">Home</a></li>
	<li role="presentation" class="active"><a href="/login">Log in</a></li>
	</ul>
</div>


      <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
			<h1><spring:message code="user.login" /></h1>
			<p>You can use: demo@localhost / demo</p>
			
			<c:if test="${error.isPresent()}">
				<p class="error">The email or password you have entered is invalid, try again.</p>
			</c:if>
			
			<form class="form-horizontal" role="form" action="/login" method="post">
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
			        <div class="col-lg-6">
			        <span class="input-group-btn">
						<button type="submit" class="btn btn-default">Sign in</button>
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