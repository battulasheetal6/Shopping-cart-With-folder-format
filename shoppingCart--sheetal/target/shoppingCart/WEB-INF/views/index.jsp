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
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">JewelleryCart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Products</a></li>
      <li><a href="#">About Us</a></li>
       <li><a href="admin">Admin</a></li>
       <li><a href="#">Contact Us</a></li>
   
       
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> login</a></li>
      
       <li><a href="register"><span class="glyphicon glyphicon-register-in"></span> Register</a></li>
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
     <div class="item">
      <img src="<c:url value="/resources/images/img6.jpg"/>" alt="Chania">
      <div class="carousel-caption">
      </div>
      </div>
      
     <div class="item">
      <img src="<c:url value="/resources/images/img7.jpg"/>" alt="Chania">
      <div class="carousel-caption">
      </div>
      </div>
<div class="item">
      <img src="<c:url value="/resources/images/abc.jpg"/>" alt="Chania">
      <div class="carousel-caption">
      </div>
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
