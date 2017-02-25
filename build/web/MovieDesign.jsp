<%-- 
    Document   : MovieDesign
    Created on : 1 Feb, 2017, 4:16:19 PM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String  Moviename = (String)request.getParameter("m_n");
    boolean invalidRequest = Moviename == null;
    
    String  Username = (String)session.getAttribute("Un");
    String Email = (String)session.getAttribute("email");
%>


<html>

    <%@include file="Connection.jsp" %>
    
    <% if (!invalidRequest) { %>
    <%
    
  String query = "select * from MovieDatabase where MovieName=?";
  PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1,Moviename);
  
       ResultSet rs = ps.executeQuery();
          if(!rs.next()) {
              out.println("Inavalid Movie request !! ");
            }
          else {
        %>
    <head>
        <title>Movie</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/Source.css">
        <link rel="stylesheet" href="css/new.css">
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
      
      bottom:0;
      width:100%;
      
      bottom:0;
      width:100%;
     
      font-weight: bold;
      font-family: arial;
      
    }

    .button {
    background-color: #e7e7e7; /* Gray */
    border: none;
    color: black;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {

  background-color: #4CAF50 ;  /* Green*/

  color: white;
} 


.button3 {

  background-color: #555555 ;  /* Black */

  color: white;
} 

.button4 {

  background-color: #f44336; ;  /* Red*/

  color: white;
} 

 .button5{

  background-color: #cce6ff;


 }

/* Animated Buttton */

.buttonA {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #f44336;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.buttonA:hover {background-color: #3e8e41}

.buttonA:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
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
      <a class="navbar-brand" href="#">Sound & Stage Movies</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="UserPage.jsp">Home</a></li>
        <li><a href="Adminstration.html">Adminstration</a></li>
        <li class= "active"><a href="Movies.html">Movies</a></li>
        <li><a href="#">Contact Support</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout, <%=Username%></a></li>
      </ul>
    </div>
  </div>
</nav>

<br>





<div class="w3-row-padding w3-section">

  <div class="w3-half">
    &nbsp
    <iframe width="100%" height="360px" src="<%=rs.getString(5) %>" frameborder="0" allowfullscreen></iframe>
      
    
  </div>

  <div class="w3-half">
    
      <h2><font color="red">Description</font>  </h2>
      
      <p><%=rs.getString(3) %></p>
      
    </div>

    <div class="w3-container">
        <button class="button"> Imdb Rating  : <%= rs.getString(4) %> </button>
      </div>

  </div>

<div >

  &nbsp &nbsp 
  <button class="button button2" > Lead Cast-1  : <%=rs.getString(7)%></button>
      

      
        <button class="button button2"> Lead Cast-2  :  <%=rs.getString(8)%> </button>
      


      
        <button class="button button3 "> Director  :  <%=rs.getString(6)%> </button>
      

        <button class="button button5 "> Music By  : <%=rs.getString(9) %></button>
      

</div>

<br>

<% }
          %>

<div align="center">
  <form class="form-horizonatal" role="form" action="Book.jsp" >
    
    <% session.setAttribute("Moviename",Moviename);
       session.setAttribute("Un", Username);
       session.setAttribute("email",Email);
    %>
    <button type="submit" class="buttonA ">BooK Now !!</button>


  </form>

</div>
<br>

<footer class="container-fluid text-center">
             <p> Copyrights © Sound & Stage Movies</p>
</footer>

</body>
  
    <%} else
    
{ %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404</title>
    </head>
    <body style="display: flex; justify-content: center; align-items: center;">
        <h1>Error 404: Page not found!</h1>
    </body>
    <%}%>
</html>


