<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body background="1.jpeg">
<center>
<h1>BEST BANK</h1>
<h2>Welcome to your online account</h2>
<h4>Please choose your option:</h4>

<form action="WithDraw.jsp" method="get" name="f2">
<br>
<input type=submit value="Withdraw">
<br>

</form>
<br>
<form action="Deposit.jsp" method="get" name="f3">
<input type=submit value="Deposit">
</form>
<br>
<form action="Balance.jsp" method="get" name="f3">
<input type=submit value="Check Balance">
</form>
<br>
<form action="Transfer.jsp" method="get" name="f3">
<input type=submit value="Transfer">
</form>
</center>
</body>
</html>