<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String name=request.getParameter("name");
	
	PreparedStatement pstmt=null;
	
	try {
		String sql="delete from Member where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		int count=pstmt.executeUpdate();
		if(count==1)
			out.println("Member 삭제");
		else {
			out.println("Member 삭제 불가");
		}
	} catch (SQLException ex) {
		out.println("Member 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: "+ex.getMessage());
	} finally {
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
	}
%>
%>
</body>
</html>