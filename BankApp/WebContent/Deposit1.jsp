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
String wd="CD";
String with="Customer Deposit";
String date = request.getParameter("dateo");
String amt = request.getParameter("depoamt");
String userid = request.getParameter("depoid");

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
if(amt1!=0){
int num1=num+amt1;


String pp="Update cust1 set Balance='"+num1+"' where UserId='"+userid+"'";
st.executeUpdate(pp);
String ty = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+wd+"','"+with+"', '0','"+amt+"','"+num1+"')";
st.executeUpdate(ty);
%>
<h2>Amount Deposited!<h2></h2>
<jsp:include page="Deposit.jsp" />
<% 	
}
}	
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>