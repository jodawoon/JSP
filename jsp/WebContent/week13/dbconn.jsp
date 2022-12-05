<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;	

	String url="jdbc:mysql://localhost:3306/test1";
	String user="root";
	String password="root";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url,user,password);
%>
</body>
</html>