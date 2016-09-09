<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<title>BEST BANK</title>
</head>
<body>

<%

String user_id=request.getParameter("custuser");

String cust_pwd=request.getParameter("custpwd");
if(user_id.equals("admin") && cust_pwd.equals("password"))
{%>
<jsp:forward page="CustMenu.jsp" />

<%}else
{%>
Please Enter Correct UserID and Password!
<jsp:include page="ACustLogin.jsp" />
<%}%>

</body>
</html>