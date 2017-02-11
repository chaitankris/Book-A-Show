<%-- 
    Document   : AdminPage
    Created on : 13 Jan, 2017, 12:57:54 PM
    Author     : KRISHN
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin Home</title>
    </head>
    <body>
<% 
    String  Username = (String)session.getAttribute("fn");
%>

<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
   
      font-weight: bold;
      font-family: arial;
    }
    
    textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}

</style>
</head>

<body>
  

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">T.K.C Movies</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="Home.html">Home</a></li>
        <li class="active"><a href="Adminstration.html">Adminstration</a></li>
        <li><a href="Movies.html">Movies</a></li>
        <li><a href="#">Contact Support</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="Login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<br><br><br>
<div align="center">
    <h1><font colour="red">1. Modify Movies</font></h1>
</div>


<div class="container" align="center" >

    <form class="form-horizontal" role="form" id="usrform" action="Movie.jsp" method="post">
        
<div class="form-group">
      <label class="control-label col-sm-2" for="Moviename">Movie_Id:</label>
      <div class="col-sm-10">
          <input type="text" name="MovieId"  class="form-control"  placeholder="Enter the MovieId" required="true">
      </div>
    </div>
        
        
   <div class="form-group">
      <label class="control-label col-sm-2" for="Moviename">MovieName:</label>
      <div class="col-sm-10">
          <input type="text" name="MovieName"  class="form-control"  placeholder="Enter the MovieName" required ="true">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Genre">Genre:</label>
      <div class="col-sm-10">
        <input type="text" name="genre" class="form-control"  placeholder="Enter the genre" required ="true">
      </div>
    </div>
  
   
   <div class="form-group">
      <label class="control-label col-sm-2" for="Synopsis"></label>
      <div class="col-sm-10">
          <textarea name="Description" placeholder="Description of the movie" required ="true"></textarea>
      </div>
    </div> 
     
       <div class="form-group">
      <label class="control-label col-sm-2" for="Rating">Imdb Rating:</label>
      <div class="col-sm-10">
          <input type="text" name="Rating" class="form-control"   placeholder="Enter the movie rating" required ="true">
      </div>
    </div>
    
     
   <div class="form-group">
      <label class="control-label col-sm-2" for="url">Trailer:</label>
      <div class="col-sm-10">
          <input type="text" name="Trailer" class="form-control"   placeholder="Enter video url" required ="true">
      </div>
    </div>
    
    
     
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Director</label>
      <div class="col-sm-10">
        <input type="text" name="director" class="form-control"  placeholder="Enter the movie director" required ="true">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">LeadCast#1:</label>
      <div class="col-sm-10">
        <input type="text" name="Cast#1"  class="form-control" placeholder="Enter the Hero" required ="true">
      </div>
    </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">LeadCast#2:</label>
      <div class="col-sm-10">
        <input type="text" name="Cast#2"  class="form-control" placeholder="Enter the Heroine" required ="true">
      </div>
    </div>
        
        <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Music:</label>
      <div class="col-sm-10">
        <input type="text" name="Music"  class="form-control" placeholder="Enter the movie Music director" required ="true">
      </div>
    </div>
     
      <input type="submit" class="btn btn-success btn-lg" value="Submit"/>
      <input type="reset" class="btn btn-warning btn-lg"/>
    
</form>
    <br>
    
    
</div>

<br><br><br>

<div align="center">
    
    <h1>2.Add New Adminstrator </h1>
    
    
</div>

<div class="container" align="center" >

    <form class="form-horizontal" role="form" action="AddAdmin.jsp" method="post">

   <div class="form-group">
      <label class="control-label col-sm-2" for="Firstname">FirstName:</label>
      <div class="col-sm-10">
          <input type="text" name="FirstName"  class="form-control"  placeholder="Enter FirstName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="UserName">UserName:</label>
      <div class="col-sm-10">
        <input type="text" name="UserName" class="form-control"  placeholder="Enter UserName">
      </div>
    </div>
   
   
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">
        <input type="password" name="Pass" class="form-control"  placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Conform Password:</label>
      <div class="col-sm-10">
        <input type="password" name="Conformpwd"  class="form-control" placeholder="Enter Conform password">
      </div>
    </div>
     
      <input type="submit" class="btn btn-success btn-lg" value="Submit"/>
      <input type="reset" class="btn btn-warning btn-lg"/>
    
</form>
    
 
</div>


<br>
<br>






<footer class="container-fluid text-center">
             <p> Copyrights © T.K.C Movies</p>
</footer>


 </body>
</html