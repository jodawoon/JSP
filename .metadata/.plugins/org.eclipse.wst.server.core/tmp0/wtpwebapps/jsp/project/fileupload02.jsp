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
		<p> 捞抚1 : <input type="text" name="name1">
		    力格1 : <input type="text" name="subject1">
		    颇老1 : <input type="file" name="filename1">
		<p> 捞抚2 : <input type="text" name="name2">
		    力格2 : <input type="text" name="subject2">
		    颇老2 : <input type="file" name="filename2">
		<p> 捞抚3 : <input type="text" name="name3">
		    力格3 : <input type="text" name="subject3">
		    颇老3 : <input type="file" name="filename3">
	</form>
</body>
</html>