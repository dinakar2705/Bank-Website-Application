<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="s1.css">s
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BEST BANK</title>
</head>
<body>

<%

String user_id=request.getParameter("adminuser");

String admin_pwd=request.getParameter("adminpwd");
if(user_id.equals("admin") && admin_pwd.equals("password"))
{%>
<jsp:forward page="AdminIn.jsp" />

<%}else
{%>
<h2>Please Enter Correct UserID and Password!</h2>
<jsp:include page="Admin.jsp" />
<%}%>
	

</body>
</html>
