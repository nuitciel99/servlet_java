<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println(request.getParameter("num1"));
		System.out.println(request.getParameter("num2"));
		if(exception instanceof ArithmeticException){
			out.print("<h3>숫자를 0으로 나눌수 없음</h3>");
		}
		if(exception instanceof NumberFormatException){
			out.print("<h3>유효한 숫자를 입력하세요</h3>");
		}
		if(exception instanceof NullPointerException){
			out.print("<h3>파라미터가 없습니다.</h3>");
		}
	%>
</body>
</html>