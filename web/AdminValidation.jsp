<%-- 
    Document   : Admin
    Created on : 13 Jan, 2017, 10:07:13 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Connection.jsp" %>
<% 
  String Username= request.getParameter("UserName");
  
  String pass = request.getParameter("pwd");
  String query = "select * from AdminTable where UserName = ? and password = ?";
  PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1, Username);
  ps.setString(2, pass);
 
  
  ResultSet rs = ps.executeQuery();
  
  if(rs.next()){
      
      
      session.setAttribute("fn", rs.getString(1));
      response.sendRedirect("AdminPage.jsp");
  }
  else{
%>
<%@include file="Adminstration.html" %>
<div align="center">
    
    <h4><font color = "red"> InValid User Credentials !</font></h4>
    
</div>
   <% 
  }
   %>