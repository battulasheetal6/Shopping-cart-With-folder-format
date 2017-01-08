<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<form:form method="POST" commandName="user" action="register/add">
     Name:
    <form:input type="text" name="name" path="name"/><br>
    Password:
    <form:input type="password" name="password" path="password"/><br>
    Address:
    <form:input type="text" name="address" path="address"/><br>
    E-mail:
    <form:input type="text" name="email" path="email"/><br>
     Phone:
    <form:input type="text" name="phonenumber" path="phonenumber"/><br>
    <input type="submit" value="submit"/><br>
</form:form>
</body>
</html>