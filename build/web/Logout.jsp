<%-- 
    Document   : Logout
    Created on : 10 Feb, 2017, 5:53:42 PM
    Author     : KRISHN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% session.invalidate(); %>

<%@include file="Home.html"%>

<script> 
    alert("You have been Logged out !");
</script>