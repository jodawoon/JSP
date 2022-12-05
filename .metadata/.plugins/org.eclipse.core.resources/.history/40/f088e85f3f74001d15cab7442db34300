<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원db</title>
</head>
<body>
<%
String u_id=request.getParameter("userID");
String u_pw=request.getParameter("userPW");
String u_MAIL=request.getParameter("userMAIL");

String sql = "INSERT INTO members(id, passwd, email) VALUES";
sql += "('" + u_id + "','" + u_pw + "','" + u_mail + "')";

Statement sm = conn.createStatement();

int count = sm.executeUpdate(sql);
if(count == 1){
	response.sendRedirect("signupSuccess.jsp");
}
else{
	out.println("회원가입 실패!");
	response.sendRedirect("signup.jsp");
}
sm.close();
conn.close();
%>
</body>
</html>