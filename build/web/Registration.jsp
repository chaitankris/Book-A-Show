<%-- 
    Document   : Registration
    Created on : 6 Jan, 2017, 12:41:24 PM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file= "Connection.jsp" %>
<%
 //  String query = "create table users (FirstName varchar(30),LastName varchar(30),UserName  varchar(30),Email varchar(255),MobileNumber number,Password varchar(20))";
String Fn = request.getParameter("FirstName");
String Ln = request.getParameter("LastName");
String Username = request.getParameter("UserName");
String  Phone= request.getParameter("Phone");
String Email = request.getParameter("email");
String Pass = request.getParameter("Pass");
String Gender = request.getParameter("gender");
String Balance = "0"; 



String query ="insert into UserDatabase values(?,?,?,?,?,?,?,?)";  
PreparedStatement ps = con.prepareStatement(query);
 ps.setString(1,Fn);
 ps.setString(2,Ln);
 ps.setString(3,Gender);
 ps.setString(4,Username);
 ps.setString(5,Email);
 ps.setString(6,Phone);
 ps.setString(7,Pass);
 ps.setString(8,Balance);
 
 ps.executeQuery();
 

%>

<%@include  file="Registration.html" %>
<div align="center">
<h5> 
<%
  out.println("Sucessfully registered!");
%>
</h5>
</div>