<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body>
<body>
<%@  page import = "java.sql.*"%>
<%@  page import = "javax.sql.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.event.*"%>
<%@  page import = "java.awt.FlowLayout"%>
<%@ page import = " java.sql.*"%>
<%@ page import = "javax.swing.*"%>

<%
ResultSet rs1, rs2, rs3;
String wd="WD";
String with="Withdrawal";
String wq ="SC";
String with1="Service Charge";
String amt = request.getParameter("withoamt");
String userid = request.getParameter("withoid");
String date = request.getParameter("dateo");
try{	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");
Statement st = con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();

String qp= "select Balance from cust1 where UserId='"+userid+"'";
rs1 = st.executeQuery(qp);

if(rs1.next())
{
String a = rs1.getString(1);
int num =Integer.parseInt(a); 
int amt1 =Integer.parseInt(amt); 
if(num>amt1){
int num1=num-amt1;

String pp="Update cust1 set Balance='"+num1+"' where UserId='"+userid+"'";
st.executeUpdate(pp);
String two = "		2";

String ty = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wd+"',' "+with+"', '"+amt+"','0','"+num1+"')";
st.executeUpdate(ty);
num1=num1-2;
String ty1 = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wq+"',' "+with1+"', '"+two+"','0','"+num1+"')";
st.executeUpdate(ty1);
%>
<h2>Amount Withdrawn!</h2>
<jsp:include page="CustMenu.jsp" />
<% 	
}else{%>
<h2>
Sorry can not Withdraw, no sufficient Balance</h2>
<jsp:include page="WithDraw.jsp" />
<% 	
}
}	
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</body>
</html>

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


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body>
<%@  page import = "java.sql.*"%>
<%@  page import = "javax.sql.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.*"%>
<%@  page import = "java.awt.event.*"%>
<%@  page import = "java.awt.FlowLayout"%>
<%@ page import = " java.sql.*"%>
<%@ page import = "javax.swing.*"%>

<%

ResultSet rs1, rs2, rs3;
String wq ="SC";
String with1="Service Charge";
String two = "2";
String wd="TR";
String with="Account Transfer";
String date = request.getParameter("dateo");
String userid = request.getParameter("oid");
String recid = request.getParameter("ruid");
String am = request.getParameter("tamt");

try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");
Statement st = con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();

String qp= "select Balance from cust1 where UserId='"+userid+"'";
rs1 = st.executeQuery(qp);
String qw = "select Balance from cust1 where UserId='"+recid+"'";
rs2 = st1.executeQuery(qw);
rs1.next();
rs2.next();

String r1 = rs1.getString(1);

String r2 = rs2.getString(1);

if(r1!=null)
{
	
int amt = Integer.parseInt(am);

int num =Integer.parseInt(r1); //bal1
int num1 =Integer.parseInt(r2); //bal2
if(num>0 && num>amt){
int a1 = num-amt;
int a2 = num1+amt;

String pp="Update cust1 set Balance='"+a1+"' where UserId='"+userid+"'";
String pp1="Update cust1 set Balance='"+a2+"' where UserId='"+recid+"'";
st.executeUpdate(pp);
st.executeUpdate(pp1);



String ty = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wd+"','"+with+"', '0','0','"+a1+"')";
st.executeUpdate(ty);

String ty1 = "insert into "+recid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wd+"','"+with+"', '0','"+am+"','"+a2+"')";
a1 = a1 - 2;
String ty2 = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wq+"',' "+with1+"', '"+two+"','0','"+a1+"')";

st.executeUpdate(ty1);
st.executeUpdate(ty2);
%>
<h2>Amount Transfered!</h2>
<jsp:include page="Transfer.jsp" />
<% 	
}else
{%>
	<h2>Sorry, No sufficient balance!</h2>
	<jsp:include page = "Transfer.jsp" />
	<%
}
}	
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>

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

@CHARSET "UTF-8";
body {
    background-color: #bfefef;
    background-image: url("http://www.hdwallpapers.in/walls/whistler_coast_mountains_dock-wide.jpg");
   	backgroud-repeat: srepeat;
    backgroud-position: cover;
    background-attachment: fixed;
    
    
    
}

h1 {
   border-radius: 25px;
    background: #73AD21;
    padding: 40px; 
    width: 400px;
    height: 75px;
    font-size:50px;
    color: white;
    
}
h2
{
	color: blue;
}
h3 {
    color: #62156f;
    
}
h4 {
    color: red;
    
}

p {
    color:green;
}

@CHARSET "UTF-8";
body {
    background-color: #eb9397;
    background-image: url("http://www.hdwallpapers.in/walls/iceland_horses-wide.jpg");
   	backgroud-repeat: repeat;
    backgroud-position: cover;
    background-attachment: fixed;
    
    
    
}

h1 {
   border-radius: 25px;
    background: #84e9e5;
    padding: 40px; 
    width: 400px;
    height: 75px;
    font-size:50px;
    color: #621799;
    
}
h2
{
	color: #e79e0d;
}
h3 {
    color: #ea88c6;
    
}
h4 {
    color: red;
    
}

p {
    color:green;
}