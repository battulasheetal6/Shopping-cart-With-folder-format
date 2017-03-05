<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 10 ;
      border-radius: 10 ;
    } 
    .img
    {
   max-height:100px;
    }
       .navbar { 
    margin-bottom: 10; 
     z-index: 9999; 
     border: 0; 
     font-size: 12px !important; 
     line-height: 1.42857143 !important; 
     letter-spacing: 4px; 
    border-radius: 0; 
}
 </style>
</head>
<body>
<div class="w3-container w3-teal">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
<!--     <ul class="nav navbar-nav"> -->
<%--       <li class="active"><a class="navbar-brand" href="index"><a href="#"><img class="img-responsive2" src="<c:url value="/resources/images/fabulous-white.png"/>" style="max-width:100px; margin-top: -10px;"> --%>
<!--         </a></a></li> -->
        
<!--       <li><a href="#">Our Collection</a></li> -->
<!--       <li><a href="aboutUs">About Us</a></li> -->
<!--        <li><a href="#">Contact Us</a></li> -->
<!--          </ul> -->
<!--        <ul class="nav navbar-nav navbar-right"> -->
<!--     <div class="dropdown"> -->
<!--   <button class="btn btn-link btn-lg" dropdown-toggle" type="button" id="menu1" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> -->
<!--   <span class="caret"></span></button> -->
<!--   <ul class="dropdown-menu" role="menu" aria-labelledby="menu1"> -->
<!--     <li role="presentation"><a role="menuitem" href="login">Login</a></li> -->
<!--     <li role="presentation"><a role="menuitem" href="register">Sign Up</a></li> -->

<ul class="nav navbar-nav">
      <li class="active"><a style="color:#F5F5DC" href="onLoad">HOME</a></li>
      <c:forEach items="${categoryList}" var="category">
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href=${category.cname}>${category.cname}<span class="caret"></span> </a>
      <ul class="dropdown-menu">
      <c:forEach items="${category.products}" var="product">
      <li><a style="color:#000000" href="<c:url value='product/get/${product.pid}'/>"> ${product.pname} </a>
    
     </c:forEach>
       <li><a style="color:#F5F5DC" href="#"></a></li>
     </ul>
      </li>       
      </c:forEach>
      
      <li><a style="color:#F5F5DC" href="aboutUs">CONTACT US</a></li> 
    </ul>

<ul class="nav navbar-nav navbar-right">   
    
      <li class="divider-vertical"></li>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
       
      	<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
      		<li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART</a>${cartSize}</li>
      	</c:if>
      	
      	<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
       		<li><a style="color:#F5F5DC0" href="<c:url value="/admin" />">VIEW ALL</a></li>
       	</c:if>
       	
       		<li><a style="color:#F5F5DC">HELLO, ${pageContext.request.userPrincipal.name}</a></li>
       		<li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
       </c:if>
       
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       		<li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       		<li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       </c:if>
    
    
<!--           <li><a href="register" ><span class="glyphicon glyphicon-log-in"></span>Sign Up</a></li>  -->
<!--              <li><a href="admin" ><span class="glyphicon glyphicon-log-in"></span>Admin Page</a></li>  -->
<!--           <li><a data-toggle="modal" data-target="#loginmodal"><span class="glyphicon glyphicon-user"></span>Login</a></li>  -->
    </ul>
    
<!--     <li role="presentation"><a role="menuitem" href="admin">Administrator</a></li> -->
     
  </div>
  
     </nav>
       </div>
      
</body>
</html>