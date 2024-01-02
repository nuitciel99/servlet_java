<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 만료 1. 30분 후  2. 브라우저 전체 종료  3. invalidate() -->
	<%
		session.setAttribute("sc", "세션값");
	%>
</body>
</html>