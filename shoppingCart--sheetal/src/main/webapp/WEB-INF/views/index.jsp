<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome..</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
     <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AllSheNeeds!!</a>
    </div>
    <ul class="nav navbar-nav">
      <li  class="active"><a  class="glyphicon glyphicon-home" style="font-size: 18px; href="#">Home</a></li>
  
      <li><a class="glyphicon glyphicon-book" style="font-size: 18px;" href="#">AboutUs</a></li>
       
       <li><a class="fa fa-address-book" style="font-size: 18px;" href="#">Contact Us</a></li>
   
   
   <li class="divider-vertical"></li>
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'abc'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART</a>${cartSize}</li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'abc'}">
       <li><a style="color:#F5F5DC" href="<c:url value="/admin" />">VIEW ALL</a></li>
       </c:if>
       <li><a style="color:#F5F5DC">HELLO, ${pageContext.request.userPrincipal.name}</a></li>
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
       </c:if>
        </ul>
       <ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li ><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in" style="font-size: 18px;" ></span> Login</a></li>
       <li ><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user" style="font-size: 18px;" ></span> Sign Up</a></li>
       </c:if>
   </ul>
       
   
    
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="/resources/images/img1.jpg"/>" alt="Chania">
      <div class="carousel-caption">
       
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/img2.jpg"/>" alt="Chania">
      <div class="carousel-caption">
     
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/img3.jpg"/>" alt="Flower">
      <div class="carousel-caption">
        
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/img4.jpg"/>" alt="Flower">
      <div class="carousel-caption">
         </div>
     
     

</div>
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
</html>
