<%-- 
    Document   : Connection
    Created on : 6 Jan, 2017, 9:22:19 PM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<%


Class.forName("oracle.jdbc.driver.OracleDriver");
String uri ="jdbc:oracle:thin:@localhost:1521:xe";
String username ="system";
String password ="*********";
Connection con=DriverManager.getConnection(uri,username,password);

%>
