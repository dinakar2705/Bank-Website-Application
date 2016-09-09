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
	System.out.print("2");
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