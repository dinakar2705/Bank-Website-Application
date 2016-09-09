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


String user_id=request.getParameter("custuser");
String cust_pwd=request.getParameter("custpwd");

try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");
Statement st = con.createStatement();
Statement st1=con.createStatement();

String qp= "select UserId from cust1 where UserId='"+user_id+"'";
rs1 = st.executeQuery(qp);
String qw = "select Password from cust1 where Password='"+cust_pwd+"'";
rs2 = st1.executeQuery(qw);

if(!rs1.next() || !rs2.next())
{

%>
<h2>Please Enter valid UserID and Password!</h2>
<jsp:include page="CustLogin.jsp" />
<%

}else if(user_id.equals(rs1.getString(1)) && cust_pwd.equals(rs2.getString(1)) && user_id!=null && cust_pwd!=null)
{

{%>
<h2>Logged In!<h2>
<jsp:forward page="CustMenu.jsp" />
<%

}}
}catch(Exception e){
	e.printStackTrace();
}%>

</body>
</html>