<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>p3 입니다</h1>
	<%
		application.setAttribute("value.appli", "value.appli");
		pageContext.setAttribute("pc", "pc");
		request.setAttribute("r", "r");
		request.getRequestDispatcher("p4.jsp").forward(request, response);
	%>
</body>
</html>