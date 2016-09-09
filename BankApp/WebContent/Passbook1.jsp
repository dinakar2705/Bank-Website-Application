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
<%@ page import = "java.io.*" %>

<%
File file = new File("/Users/dinakarmc/Desktop/Passbook.txt");
file.createNewFile();
FileWriter writer = new FileWriter(file); 
ResultSet rs1, rs2, rs3;
String wd="CD";
String with="Customer Deposit";
String date = request.getParameter("dateo");
String userid = request.getParameter("passid");
String name = request.getParameter("passname");
try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");
Statement st = con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
String qp= "select * from "+userid+"";
rs1 = st.executeQuery(qp);
writer.write(name+"'s Passbook\n\n");
writer.write( "Date"+"		Transaction Code "+ "	Transaction Name "+ "	Withdrawn "+ "	Deposit" +"		Balance\n") ;
while(rs1.next())
{

	  
     
      writer.write(rs1.getString("Date") +"		"+ rs1.getString("TransactionCode")  +"			"+ rs1.getString("TransactionName")+"	"+ rs1.getString("Withdrawn")+"		"+ rs1.getString("Deposit")+"		"+ rs1.getString("Balance")+"\n");
       
      }
writer.flush();
writer.close();
}catch(Exception e){
	e.printStackTrace();
} 

%>

<h2>File created successfully</h2>
<jsp:include page="Passbook.jsp"></jsp:include>
</body>
</html>