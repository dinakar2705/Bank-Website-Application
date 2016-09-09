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
<h3>Enter your details and tranfer your amount</h3>
<form action="Transfer1.jsp" method="get">
<br>
<br>Name : &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp<input type="text" name ="oname"><br>
<br>UserID : &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name ="oid"><br>
<br>Date : &nbsp &nbsp&nbsp<input type="text" name ="dateo"><br>
<br>Transfer Amount : &nbsp &nbsp&nbsp<input type="text" name ="tamt"><br>
<br>Receiver's Name :  <input type="text" name ="rn"><br>
<br>Receiver's UserID :  <input type="text" name ="ruid"><br><br>
<input type=submit value="Transfer">&nbsp&nbsp&nbsp
<input type=Reset value="Clear"></form></center>
</body>
</html>