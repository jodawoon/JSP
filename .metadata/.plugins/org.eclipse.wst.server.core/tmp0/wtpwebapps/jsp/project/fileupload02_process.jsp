<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		MultipartRequest multi=new MultipartRequest(request, "C:\\upload",
				5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	
	String name1=multi.getParameter("name1");
	String subject1=multi.getParameter("subject1");
	%>
</body>
</html>