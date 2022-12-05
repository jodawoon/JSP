<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 1. 변수 4개 선언
		String driverName="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/test1";
		String username="root";
		String password="root";
		Connection conn=null;
		try {
			//2.드라이버 로딩
			Class.forName(driverName);
			//3. Connection 객체 생성
			conn=DriverManager.getConnection(url,username,password);
			//4. 사용
			out.println(">> 연결 성송 : "+conn);
		} catch (ClassNotFoundException e) {
			out.println(">> 연결 실패 : 드라이버 복사 필요");
		} catch (SQLException e) {
			out.println(">> 연결 실패 : SQL 명령문 확인 필요");
		} finally {
			try {
				if(conn !=null)
					conn.close();
			} catch (SQLException e) {
				;
			}
		}
	%>
</body>
</html>