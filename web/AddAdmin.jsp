<%-- 
    Document   : AddAdmin
    Created on : 16 Jan, 2017, 11:56:25 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="Connection.jsp" %>
<% 
  String Username = request.getParameter("UserName");
  
  String Fn = request.getParameter("FirstName");
  String pass = request.getParameter("Pass");
  String query = "insert into AdminTable values(?,?,?)";
  PreparedStatement ps = con.prepareStatement(query);
  ps.setString(1,Fn);
  ps.setString(2,Username);
  ps.setString(3,pass);
  
   ps.executeQuery();
  
  %>

<%@include  file="AdminPage.jsp" %>
<div align="center">
<h5> 
<%
  out.println("Sucessfully Added");
%>
</h5>
</div>