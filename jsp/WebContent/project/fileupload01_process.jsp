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
			5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	Enumeration params=multi.getParameterNames();
	
	while(params.hasMoreElements()) {
		String name=(String) params.nextElement();
		String value=multi.getParameter(name);
		out.println(name+" = "+value+"<br>");
	}
	out.println("----------<br>");
	
	Enumeration files=multi.getFileNames();
	
	while(files.hasMoreElements()) {
		String name=(String) files.nextElement();
		String filename=multi.getFilesystemName(name);
		String original=multi.getOriginalFileName(name);
		String type=multi.getContentType(name);
		File file=multi.getFile(name);
		
		out.println("��û �Ķ���� �̸� : "+name+"<br>");
		out.println("���� ���� �̸� : "+original+"<br>");
		out.println("���� ���� �̸� : "+filename+"<br>");
		out.println("���� ������ ���� : "+type+"<br>");
		
		if(file!=null) {
			out.println(" ���� ũ�� : "+file.length());
			out.println("<br>");
		}
	}
	%>
</body>
</html>