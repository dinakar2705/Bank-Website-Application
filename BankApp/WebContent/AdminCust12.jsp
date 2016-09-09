<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANKs</title>
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

String name = request.getParameter("custname");
String userid = request.getParameter("custid");
try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");
Statement st = con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();


String qp= "delete from cust1 where UserId='"+userid+"'";
st.executeUpdate(qp);

%>
<h2>Account Successfully deleted!</h2>
<jsp:include page="AdminCust1.jsp" />
<% 
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>