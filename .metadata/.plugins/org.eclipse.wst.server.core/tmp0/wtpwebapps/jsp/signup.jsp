<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입화면</title>
<script>
	function checkFun() {
		var f=document.user.info;
		if(f.userID.value.length<2||f.userID.value.length>16) {
			alert("아이디는 2~16자 이내로 입력해야 합니다.");
			f.userID.focus();
			return false;
		} else if(f.userPW.value.length<6) {
			alert("비밀번호는 6자 이상으로 설정해야 합니다.");
			f.userPW.focus();
			return false;
		} else if(f.userMAIL.value=="") {
			alert("이메일 주소를 반드시 입력해야합니다.");
			f.userMAIL.focus();
			return false;
		}
		else return true;
	}
</script>
</head>
<body>
<h1>Home > 회원가입</h1>
<hr>
<fieldset style="border:1px solid; width:200px">
	<legend>회원가입화면</legend>
	<p> 아이디 : <input type="text" name="id">
	<p> 비번 : <p><input type="text" name="passwd">
	<P> 이메일 : <input type="text" name="email">
	<p>
	<input name="re-input" onclick="location.href='signup.jsp'" type="button" value="다시 ㄱㄱ">
	<input name="join" onclick="location.href='signupSuccess.jsp'" type="button" value="조인">
</fieldset>
</body>
</html>