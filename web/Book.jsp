<%-- 
    Document   : Book
    Created on : 12 Feb, 2017, 12:22:49 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String MovieName = (String)session.getAttribute("Moviename");
   String Email  =(String)session.getAttribute("email");
   String Username = (String)session.getAttribute("Un");
%>


<html lang="en">
<head>
  <title>Show Selection </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/Source.css">
  <script src="js/Source1.js"></script>
  <script src="js/Source2.js"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    *:focus { outline: 0; }
    boby { position: relative;}
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
      position:absolute;
      bottom:0;
      width:100%;
      font-weight: bold;
      font-family: arial;
      
    }
   
    .message{
      position: absolute;
      top: 45%; left: 48%;
      transform: translate(-50%, -50%);
    }

    .header-title {
      text-transform: uppercase;
      font-size: 2.5em; color: #49ba8e;
      text-align: center;
      margin: 0 0 0.5em 0;
    }
    
    .select{
     padding: 0.3em 1.0em;
     border-radius: 1em;
     color: tomato;
     cursor: pointer;
     border: 2px solid tomato;
     box-sizing: border-box;
     transition: all 0.2s ease-in-out;
   }

   .select:hover{
    color: #fff; background-color: tomato;
  }

  .select:active{
    transform:translateY(5.5%);
  }

  .radi{

    border: 2px solid tomato;

  }

</style>
</head>

<body>

  <!-- Navigation -->

  <nav class="navbar navbar-inverse"  navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="Home.html">Sound & Stage Movies</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class=""><a href="UserPage.jsp">Home</a></li>
          <li><a href="Adminstration.html">Adminstration</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">Contact Support</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout, <%=Username%></a></li>
        </ul>
      </div>
    </div>
  </nav>


  <div class="message" >

   <div class="header-title">Pick your show</div>
   <div class="inner-messge">
       
       
     <form method="post" action="SeatMap.jsp">
       <br><br>


       <label class="control-label col-sm-2" for="show">Theater:</label>   
         &nbsp &nbsp &nbsp 
       <select name="Theater" value="Select your theater" class="select">
         <option value="Theater1">Theater1</option>
         <option value="Theater2">Theater2</option>
         <option value="Theater3">Theater3</option>
       </select>
       <br><br>
       <label class="control-label col-sm-2" for="show">Day:</label>        
          &nbsp &nbsp &nbsp 
       
       <select name="Day" class="select"  >
         <option value="Today">Today</option>
         <option value="Tomorrow">Tomorrow</option>  
       </select>

       <br>
       <br>
       <br>
 
       <label class="control-label col-sm-2" for="show">Show-Time:</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <input type="radio" name="showTime" value="10:00Am" required="true" > 10:00Am &nbsp
       <input type="radio" name="showTime" value="2:00Pm" required="true">2:00Pm &nbsp 
       <input type="radio" name="showTime" value="6:00Pm" required="true" >6:00Pm &nbsp 
       <input type="radio" name="showTime" value="10:00pm" required="true">10:00Pm
       <br>
       <br> 
       <br>
    
     <div align="center">
       <button type="submit" class="btn btn-success" >Confirm & Go To Screen </button>
     </div>
       
       <% 
          
            session.setAttribute("Username",Username);
            session.setAttribute("email",Email);
            session.setAttribute("Moviename",MovieName);
      %>
       
     </form>      
   </div>

 </div>


 <footer class="container-fluid text-center">
  <p> Copyrights © Sound & Stage Movies</p>
</footer>

</body>
</html>

