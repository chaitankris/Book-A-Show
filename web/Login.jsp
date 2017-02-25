<%-- 
    Document   : Login
    Created on : 7 Jan, 2017, 10:33:13 AM
    Author     : KRISHNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Connection.jsp" %>
<% 
  String Email= request.getParameter("email");
  String Login = "false";
  String pass = request.getParameter("pwd");
  String query = "select * from UserDatabase where Email = ? and Password = ?";
  PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1, Email);
  ps.setString(2, pass);
 
  
  ResultSet rs = ps.executeQuery();
  
  if(rs.next()){
      Login ="true";
      session.setAttribute("login" , Login);
      session.setAttribute("fn", rs.getString(1));
      session.setAttribute("email",Email);
      response.sendRedirect("UserPage.jsp");
  }
  else{
%>
<%@include file="Login.html" %>
<div align="center">
    
    <h4><font color = "red"> InValid User Credentials !</font></h4>
    
</div>
   <% 
  }
   %>