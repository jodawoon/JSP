<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"
	action="fileupload02_process.jsp">
		<p> �̸�1 : <input type="text" name="name1">
		    ����1 : <input type="text" name="subject1">
		    ����1 : <input type="file" name="filename1">
		<p> �̸�2 : <input type="text" name="name2">
		    ����2 : <input type="text" name="subject2">
		    ����2 : <input type="file" name="filename2">
		<p> �̸�3 : <input type="text" name="name3">
		    ����3 : <input type="text" name="subject3">
		    ����3 : <input type="file" name="filename3">
	</form>
</body>
</html>