<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>User details</title>
     <link rel="stylesheet" href="/css/bootstrap.min.css" media="screen" />
    <link rel="stylesheet" href="/css/navbar.css" media="screen" />
</head>
<body>
<div class="container">
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav nav-tabs">
	<li role="presentation" ><a href="#">Mobyus</a></li>
	<li role="presentation"><a href="/">Home</a></li>
	<li role="presentation" class="active"><a href="#">User</a></li>
	</ul>
</div>

      <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-8 col-md-7 col-sm-6">
			<h1><spring:message code="user.userdetails" /></h1>
			<fieldset>
				<div class="row">
          		<div class="col-lg-8 col-md-7 col-sm-6">
			        <label class="col-lg-4 control-label" for="email">Email address</label>
			        <div class="col-lg-6">${user.email} </div>
			    </div>
			    </div>
			   <div class="row">
          		<div class="col-lg-8 col-md-7 col-sm-6">
			        <label class="col-lg-4 control-label" for="role">Role</label>
			        <div class="col-lg-6"> ${user.role}"</div>
			    </div>		
			    </div>	   
			    </fieldset>
		   </div>
		</div>
	</div>
</div>
</body>
</html>