<%-- 
    Document   : UserPage
    Created on : 7 Jan, 2017, 10:44:31 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String Un ="";
    String  Username = (String)session.getAttribute("fn");
%>


<html>
    <head>
   
  <title>User Home Page </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/Source.css">
        <script src="js/Sourcejs1.js"></script>
        <script src="js/Sourcejs2.js"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
   footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
   .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  
  </style>
  <script>
      function configButtons() {
          var btnArr = document.querySelectorAll('.book-btn');
          for (var i = btnArr.length - 1; i >= 0; --i)
              btnArr[i].addEventListener('click', myFun);
      }
        
      function myFun(event){
          var name = event.target.name;
          var _url = window.location.href;
          _url = _url.replace("UserPage.jsp", "MovieDesign.jsp?m_n=" + name);
          
          window.location.href = _url;
      }
      
      window.addEventListener('load', configButtons, true);  
  </script>
</head>

<body>
<!-- Navigation -->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Home.html">T.K.C Movies</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home.html">Home</a></li>
        <li><a href="Adminstration.html">Adminstration</a></li>
        <li><a href="Movies.html">Movies</a></li>
        <li><a href="#">Contact Support</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout, <%=Username%></li>
      </ul>
    </div>
  </div>
</nav>
<% session.setAttribute("Un",Username); %>

<div class="container" style="width:100%; margin: 0 auto">
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
        <img src="images/1.GOG.jpg" style="width:60%;height:520px" >
      </div>


      <div class="item">
        <img src="images/2.WW.jpg" style="width:60%;height:520px" >
      </div>
      
  
    <div class="item">
        <img src="images/3.NL.jpg" style="width:60%;height:520px" >
    </div>
    
  
     <div class="item">
        <img src="images/4.S3.jpgp.jpg" style="width:60%;height:520px">
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
  

 <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>


    <div class="container text-center">
  <h3>Now Playing </h3><br>
  <div class="">
    <div class="col-sm-4">
      <img src="images/GOG.jpg" class="img-responsive" style="width:240px;height:320px"  alt="Image">
      <h4> <p>The Guardians Of Galaxy 2</p> </h4>
	
      <button type="button" class="book-btn btn btn-primary btn-lg" name="GOG">Book Now!</button> 
      
	</div>
    <div class="col-sm-4">
      <img src="images/JollyLLB.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
      <h4><p>JollyLLB 2   </p> </h4>
	  
      <button type="button" class="book-btn btn btn-primary btn-lg" name="JollyLLB">Book Now!</button> 
      
	  
    </div>
	
	<div class="col-sm-4">
      <img src="images/nenu_local.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
     <h4> <p> Nenu Local </p></h4>
	  
     <button type="button" class="book-btn btn btn-primary btn-lg"  name="Nenu Local">Book Now!</button>
      
    
	</div>
	
	<div class="col-sm-4">
	<br>
      <img src="images/Rangoon.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
      <h4><p>Rangoon</p></h4>
      <button type="button" class="book-btn btn btn-primary btn-lg" name="Rangoon">Book Now!</button>
      
       
	</div>
	
	<div class="col-sm-4">
	<br>
      <img src="images/WW.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
      <h4><p>Wonder Woman</p></h4>
	  
      <button type="button" class="book-btn btn btn-primary btn-lg" name="Wonder Woman">Book Now!</button> 
      
	</div>
	<br>
	<div class="col-sm-4">
	<br>
      <img src="images/Singam3.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
      <h4><p>Singam 3</p></h4>
	 <button type="button" class="book-btn btn btn-primary btn-lg" name="Singam3">Book Now!</button>
      
	
    </div>
	<br>
	<div class="col-sm-4">
	<br>
      <img src="images/jaggajasoos.jpg" class="img-responsive" style="width:240px;height:320px" alt="Image">
      <h4><p> Jagga Jasoos</p></h4>
      <button type="button" class="book-btn btn btn-primary btn-lg" name="Jagga Jasoos">Book Now!</button> 
      
	  
    </div>
    <br>
    </div>
  </div>
<br>



<footer class="container-fluid text-center">
  <p> Copyrights © T.K.C Movies</p>
</footer>

</body>
</html>

