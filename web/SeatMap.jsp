<%-- 
    Document   : SeatMap
    Created on : 14 Feb, 2017, 2:35:40 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<%@include file="Connection.jsp" %>
<%@page import="java.util.*;"%>
<%@page import ="java.util.Collections.*;" %>
<html>
<head>
    
    <% 
            String Theater = request.getParameter("Theater");
            String Day = request.getParameter("Day");
            String ShowTime = request.getParameter("showTime");
            String MovieName = (String)session.getAttribute("Moviename");
            String Email  =(String)session.getAttribute("email");
            String Username = (String)session.getAttribute("Username");
             
            session.setAttribute("Theater",Theater);
            session.setAttribute("Day",Day);
            session.setAttribute("showTime",ShowTime );
            
            String query = "select * from TicketDatabase where (Moviename = ? AND Theater = ?) AND (showtime = ? And Day = ?) ";
            PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1,MovieName );
  ps.setString(2,Theater );
  ps.setString(3,ShowTime);
  ps.setString(4,Day );
 
  
  ResultSet rs = ps.executeQuery();
  
  List<String> s = new ArrayList<String>();
  HashMap<String, Boolean> bookedSeatMap = new HashMap<String, Boolean>();
  
  while (rs.next()){
       String seats;
       seats = rs.getString("seats");
       Collections.addAll(s, seats.split(","));
  }
  
  Iterator<String> itr = s.iterator();  
  while (itr.hasNext())
       bookedSeatMap.put(itr.next(), true);

  %>
    
	<title>Seat Map</title>
         
	<link rel="stylesheet" type="text/css" href="css/seatmap.css">
       
	<script type="text/javascript" src="js/seatmap.js"></script>
        
        <style>
            
            
            .footer {
      background-color: #f2f2f2;
      padding: 25px;
      position:absolute;
      bottom:0;
      width:100%;
      min-height: .5em;
      height: 3%;
      font-weight: bold;
      text-align: center;
    }
    
</style>
</head>
<body>





<div class="seat-map-wrapper">
    
	<div class="header-title">Pick your seats</div>
	<table cellspacing="15em" class="seat-map">
		<% for (char i = 'A'; i <= 'D'; ++i) {%>
                <tr>
                    <th><%=i%></th>
                    <% for (char j = '1'; j <= '6'; ++j) {%>
                        <% String seatID = "" + i + j;
                           boolean booked = bookedSeatMap.containsKey(seatID); %>
                        <% if (booked) {%>
                            <td class="blocked" id=<%=seatID%> ><%=j%></td>
                        <% } else {%>
                            <td class="" id=<%=seatID%> ><%=j%></td>
                        <%}%>
                    <%}%>
                </tr>
                <%}%>
	</table>
	<div class="screen-view">All Eyes This Way</div>
	<div type="submit" class="book-btn" id="book-btn-id">Confirm</div>
</div>

        
    <div class="footer">
  <p> Copyrights © Sound & Stage Movies</p>
</div>

</body>
</html>