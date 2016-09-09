<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body><center>
<h1>BEST BANK</h1>
<h4>Enter the following details:</h4>

<form method="get" action="CustCreate1.jsp">
<br>Name : &nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name ="custoname"><br>
<br>UserID : &nbsp &nbsp&nbsp<input type="text" name ="custoid"><br>
<br>Password :&nbsp&nbsp<input type="password" name ="custopwd"><br>
<br>Address :&nbsp&nbsp <input type="text" name ="custoadd"><br>
<br>Date :&nbsp&nbsp <input type="text" name ="custdate"><br>
<br>Deposit :&nbsp&nbsp <input type="text" name ="cust"><br><p>(A minimum balance of 500 required)</p> 


<br> <input type="submit" name ="custosubmit"></center>
</form>

</body>
</html>