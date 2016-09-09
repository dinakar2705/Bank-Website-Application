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
<%
ResultSet rs1, rs2;

String name = request.getParameter("custoname");
String userid = request.getParameter("custoid");
String pwd = request.getParameter("custopwd");
String add = request.getParameter("custoadd");
String date = request.getParameter("custdate");
try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ban","root","");

Statement st = con.createStatement();
Statement st1=con.createStatement();


System.out.print("1");
String tr = "select UserId from cust1 where UserId='"+userid+"'";
rs2=st1.executeQuery(tr);
String a9=" ";
if(!rs2.next())
{


	String rr2 = "insert into cust1(Name, UserId, Password, Address, Balance) values('"+name+"','"+userid+"','"+pwd+"','"+add+"','500')";
	int h=500; 
	int hi = 0;
	String rr3 = "create table "+userid+"(Date varchar(15) not null, TransactionCode varchar(3) , TransactionName varchar(25) , Withdrawn int(15) , Deposit int(15) , Balance int(15) not null)";
	String rr4 = "insert into "+userid+"(Date, TransactionCode, TransactionName, Withdrawn, Deposit, Balance) values('"+date+"','"+a9+"','"+a9+"','"+hi+"','"+h+"','"+h+"')";
	st.executeUpdate(rr2);
	st1.executeUpdate(rr3);
	st1.executeUpdate(rr4);
	
	%>
	<h2>Successfully added!</h2>
	<jsp:include page="CustLogin.jsp" />
	<% 		
}	

System.out.print(rs2.getString(1));
if(rs2.getString(1)!=null)
	
{


String a = rs2.getString(1);

	if(a!=userid)
	{
	
	%>
	UserID has been already chosen.
	<jsp:include page="CustCreate.jsp" />
	
	<% 
	}else {
		System.out.print("goodboy");
	String rr = "insert into cust1(Name, UserId, Password, Address, Balance) values('"+name+"','"+userid+"','"+pwd+"','"+add+"','500')";
	st.executeUpdate(rr);%>
	<h2>Successusfully added!</h2>
	<jsp:include page="CustLogin.jsp" />
	<% 		
}
	}	
}catch(Exception e){
	e.printStackTrace();
}

%>


</body>
</html>