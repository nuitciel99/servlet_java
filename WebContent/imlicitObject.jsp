<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- request, session, response 
		request : 요청
	--%>
	<!-- 발송 -->
	<%-- <form action="receive.jsp" method="post"> --%>
	<form action="rec" method="post">
		아이디 <input type="text" name="id">
		비밀번호 <input type="password" name="pwd">
		<button>로그인</button>
	</form>
</body>
</html>