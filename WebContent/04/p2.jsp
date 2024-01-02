<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>p2 입니다</h1>
	<h3>p2.p : <%=request.getParameter("p")%></h3>
	<h3><%=request%></h3>
	<h3><%=pageContext.getAttribute("pc")%></h3>
	<h3><%=request.getAttribute("r")%></h3>
</body>
</html>