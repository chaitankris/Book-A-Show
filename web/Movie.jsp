<%-- 
    Document   : Movie
    Created on : 16 Jan, 2017, 11:31:04 AM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file= "Connection.jsp" %>
<%
 //  String query = "create table MovieDatabase (MovieName varchar2(40),genre varchar2(400),Description  varchar2(1000),
 //  rating varchar2(4),trailer varchar2(250),director varchar2(40),cast1 varchar2(40),cast2 varchar2(40),music varchar(40))";
String  moviename = request.getParameter("MovieName");
String genre = request.getParameter("genre");
String description= request.getParameter("Description");
String  rating= request.getParameter("Rating");
String trailer = request.getParameter("Trailer");
String director = request.getParameter("director");
String cast1 = request.getParameter("Cast#1");
String cast2 = request.getParameter("Cast#2");
String music = request.getParameter("Music");
String Movie_Id = request.getParameter("MovieId");


String query ="insert into MovieDatabase values(?,?,?,?,?,?,?,?,?,?)";  
PreparedStatement ps = con.prepareStatement(query);
 ps.setString(10,Movie_Id);
 ps.setString(1,moviename);
 ps.setString(2,genre);
 ps.setString(3,description);
 ps.setString(4,rating);
 ps.setString(5,trailer);
 ps.setString(6,director);
 ps.setString(7,cast1);
 ps.setString(8,cast2);
 ps.setString(9, music);
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