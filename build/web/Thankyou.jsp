
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@include file="Connection.jsp" %>


<%
          String MovieName = (String)session.getAttribute("Moviename");
            String Email  =(String)session.getAttribute("email");
            String Username = (String)session.getAttribute("Username");
          
            
            String Theater = (String)session.getAttribute("Theater");
            String Day    =   (String)session.getAttribute("Day");
             String showTime  =  (String)session.getAttribute("showTime");
           
       String selectedSeats = (String)session.getAttribute("seatsSelected");
    
       
//String querry =    "  create table TicketDatabase ( Tk_id number(5),Moviename varchar2(60) "
  //      + ",Theater varchar2(10),Email varchar2(250),Day varchar2(10) , showtime varchar2(10),seats varchar2(40) ,constraint pk_Tk_id PRIMARY KEY (Tk_id))";
     //create sequence Tk_sequence2 start with 17001 increment by 1 minvalue 17001 maxvalue 18000 ;  
       
     String Query ="Insert into TicketDatabase (Tk_id,Moviename,Theater,Email,Day,showTime,seats) values(Tk_sequence.nextval,?,?,?,?,?,?)";
   
     PreparedStatement ps = con.prepareStatement(Query);
      
     ps.setString(1, MovieName);
     ps.setString(2, Theater);
     ps.setString(3, Email);
     ps.setString(4, Day);
     ps.setString(5, showTime);
     ps.setString(6, selectedSeats);
     
     ps.executeQuery();
     
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
      position:absolute;
      bottom:0;
      width:100%;
      font-weight: bold;
      font-family: arial;
    }

     .Th-y{
     margin: .5em ;
    font-size: 3em;
    color:  tomato;
    display: flex;
    align-items: center;
    justify-content: center;
    word-wrap: initial;

  }
  .success{
     margin: 4em 0  0 0 ;
    font-size: 3em;
    color:  tomato;
    display: flex;
    align-items: center;
    justify-content: center;
    word-wrap: initial;

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
        <li><a href="UserPage.jsp">Home</a></li>
        <li><a href="Adminstration.html">Adminstration</a></li>
        <li><a href="Movies.html">Movies</a></li>
        <li><a href="#">Contact Support</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout,<%=Username%> </a></li>
      </ul>
    </div>
  </div>
</nav>
     
      
   <div class="success">
   
          Your Tickets Have Been Booked successfully !
   </div>
   <div class="Th-y">
        Thankyou for Booking  !!
       </div>

     <div align="center">  
    <a href="UserPage.jsp" >  Go To Homepage </a>
</div>

      
    <footer class="container-fluid text-center">
             <p> Copyrights © Sound & Stage Movies</p>
</footer>
        
    </body>
</html>
