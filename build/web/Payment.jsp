<%-- 
    Document   : Payment
    Created on : 15 Feb, 2017, 2:00:43 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
           String selectedSeats  =   (String)request.getParameter("s_s");
           String MovieName = (String)session.getAttribute("Moviename");
            String Email  =(String)session.getAttribute("email");
            String Username = (String)session.getAttribute("Username");
          
            
            String Theater = (String)session.getAttribute("Theater");
            String Day    =   (String)session.getAttribute("Day");
             String showTime  =  (String)session.getAttribute("showTime");
             
             session.setAttribute("seatsSelected", selectedSeats);
             
             int pay;
             
             if(selectedSeats.length() == 2){
                 pay = (selectedSeats.length())*90;
             }
             else{
                 pay = ((selectedSeats.length())+1)*180/3;
             }
%>


<head>
  <title> Payment Page </title>
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
    
    /*body { position: relative;}*/
    /* Add a gray background color and some padding to the footer */
    .footer {
      background-color: #f2f2f2;
      padding: 25px;
      position:absolute;
      bottom:0;
      width:100%;
      min-height: 1.5em;
      height: 5%;
      font-weight: bold;
      font-family: arial;
      text-align: center;
    }
    @font-face{
     font-family: 'My-Custom-Font';
     src: url('fonts/Barrio-Regular.ttf');
   }
   
    @font-face{
      font-family: 'Rokkitt-reg';
      src: url('fonts/Rokkitt-Regular.ttf');
    }
   @font-face{
     font-family: 'My-Custom-Font-2';
     src: url('fonts/Audiowide-Regular.ttf');
   }

   @font-face {
    font-family: 'Lato'; font-weight: 400;
    src: url('fonts/Lato-Regular.ttf');
  }

  @font-face {
    font-family: 'Lato'; font-weight: 700;
    src: url('fonts/Lato-Bold.ttf');
  }

  @font-face {
    font-family: 'Anton';
    src: url('fonts/Anton-Regular.ttf');
  }

  .content{
    position: absolute;
    top: 50px;
    width :100%;
    height: 85%;
    /*background-color: tomato;*/
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    overflow-y: scroll;
  }

  .content::-webkit-scrollbar {
    width: 0;
  }
  .left{
    flex: 2;
    height: 100%;
    min-width: 300px;
    display: flex;
    flex-direction: column;
    box-shadow: 0 0 2em rgba(0, 0, 0, 0.3);
  }
  
  .right{
    flex: 3;
    height: 100%;
    min-width: 400px;
  }
  .left-tittle{
    flex: 3;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'Anton', sans-serif;
    font-size: 5em;
    word-wrap: break-word;
    letter-spacing: 0.1em;
    background-image: url(images/ticket-bg.jpg);
    background-position: center center;
    background-size: cover;
    color: rgba(255, 255, 255, 0.95);
    text-transform: uppercase;
  }
  .left-title > span { text-align: center; }
  .right-tittle{

    /*min-width: 24em;*/
    display: flex;
    flex: 1;
    flex-flow: column;
    text-align: center;
    font-size: 2.5em;
    color: tomato;
    font-family: My-Custom-Font-2;
    text-shadow: 0 0 0.2em rgba(255,255,255, .9);
    box-sizing: border-box;

    border-bottom: 1px solid rgba(27, 27, 27, 0.2);
    

  } 

  

  .right-content {

    display: flex;
    flex: 4;
    align-items: center;
    justify-content: center;

  }

  .left-content {
    flex: 2;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background-color: #fafafa;
  }

  .control-row {
    display: flex;
    font-family: 'Lato';
    text-transform: uppercase;
    letter-spacing: 0.2em;
    width: 100%;
  }
  .control-label {
    width: 50%;
    text-align: right;
    /* margin: 0.2em 1em; */
    padding: 0.3em 1em 0.3em 0;
    box-sizing: border-box;
    font-weight: 700;
    /* background-color: #1b1b1b; */
    color: #1b1b1b;
    border-bottom: 1px solid rgba(27, 27, 27, 0.2);
    /* text-shadow: -3px 2px 1em rgba(0, 0, 0, 0.29); */
  }
  .control-val {
    width: 50%;
    /* margin: 0.2em 2em; */
    text-transform: capitalize;
    padding: 0.3em 0 0.3em 2em;
  }

  .sss{

    color: steelblue;
    font-weight: bold;
    font-family: cursive;
    text-shadow: 0 0 0.1em blue;
  }
  .usr-dt{
    display: flex;
    flex-flow: column;

  }

  .form-group{
    display: flex;
    margin: 2.7em .25em .4em .25em;
  }
  .pay-sum{
    font-family: Rokkitt-reg;
    font-weight: 200;
    font-size: 2em;
    margin: .75em 0.2em .2em 1.7em ; 
  }

 .pay{
   margin: .1em .1em .2em 28em ;

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
        <a class="navbar-brand" href="Home.html">T.K.C Movies</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class=""><a href="UserPage.jsp">Home</a></li>
          <li><a href="#">Adminstration</a></li>
          <li><a href="Movies.html">Movies</a></li>
          <li><a href="#">Contact Support</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout ,<%=Username%></a></li>
        </ul>
      </div>
    </div>
  </nav>

  
  <div class="content">
    <div class="left">
      <div class="left-tittle">
        <span><%=MovieName%></span>
      </div>
      <div class="left-content">
        <div class="control-row">
          <div class="control-label">Theater</div>
          <div class="control-val"><%=Theater%></div>
        </div>
        <div class="control-row">
          <div class="control-label">Day</div>
          <div class="control-val"><%=Day%></div>
        </div>
        <div class="control-row">
          <div class="control-label">Show-Time</div>
          <div class="control-val"><%=showTime%></div>
        </div>
        <div class="control-row">
          <div class="control-label"> Seats</div>
          <div class="control-val sss"><%=selectedSeats%></div>
        </div>
      </div>
    </div>
    <div class="right">
      <br><br>
      <div class="right-tittle">
        Payment
      </div>
      <div class="right-content">


       <div class="usr-dt">

        <div class="pay-sum">
           Amount To be paid - ₹ <%=pay%> .00 
       </div>


       <form action="Thankyou.jsp" method="post">
         <div class="form-group">
         <label class="control-label col-sm-2">Card number :</label>
         <input type="number" class="form-control" name="card-no" placeholder="6700-4578-8874-2014" required="true">
         </div>
         <div class="form-group">
         <label class="control-label col-sm-2"> Expiry Month: </label>
         <input type="number" class="form-control" name="expiry-d" placeholder="Month " required="true">
         </div>
         <div class="form-group">
         <label class="control-label col-sm-2">Year : </label>
         <input type="number" class="form-control" name="year" placeholder="Year" required="true">
         </div>
         <div class="form-group">
         <label class="control-label col-sm-2">CVV : </label>
         <input type="password" class="form-control" name="CVV" placeholder="CVV" required="true">
         </div>
         <div class="form-group">
         <label class="control-label col-sm-2">Name of the Card-Holder :</label>
         <input type="text" class="form-control" name="usr-name" placeholder="Card Holder Name" required="true">
         </div>
         
        <div class="pay"> <button type="submit" class="btn btn-success">Pay Now</button> </div>

       </form>

     </div>


   </div>

 </div>
</div>



<div class="footer">
  <p> Copyrights © Sound & Stage Movies</p>
</div>

</body>
</html>