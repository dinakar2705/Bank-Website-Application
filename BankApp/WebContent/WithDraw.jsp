<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body>
<center>
<h1>BEST BANK</h1>
<%@  page import = "java.sql.*"%>
<%@  page import = "javax.sql.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.event.*"%>
<%@  page import = "java.awt.FlowLayout"%>
<%@ page import = " java.sql.*"%>
<%@ page import = "javax.swing.*"%>
<h3>Enter your details and withdraw your amount</h3>
<form action="WithDraw1.jsp" method="get" name="f2">
<br>
<br>Name : &nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name ="withoname"><br>
<br>UserID : &nbsp &nbsp&nbsp<input type="text" name ="withoid"><br>
<br>Withdrawal Amt : &nbsp <input type="text" name ="withoamt"><br>
<br>Date : &nbsp &nbsp&nbsp&nbsp&nbsp<input type="text" name ="dateo"><br><br>
<input type=submit value="Withdraw">&nbsp&nbsp&nbsp
<input type=Reset value="Clear"></form>

</center>
</body>
</html>