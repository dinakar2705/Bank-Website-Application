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
<form method="get" action="CustLogin1.jsp">
<h2>Welcome to Best Bank</h2>
<br>UserID : &nbsp <input type="text" name ="custuser"><br>
<br>Password :<input type="password" name ="custpwd"><br>
<br> <input type="submit" name ="custsubmit" value="Login">
<br>
<br>
</form>
<form action="CustCreate.jsp" method="get" name="f3">
<input type=submit value="CREATE ACCOUNT">
</form>
</center>

</body>
</html>