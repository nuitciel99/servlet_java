<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>p4 입니다</h1>
	<h3>application : <%=application.getAttribute("value.appli") %></h3>
	<h3>pageContext : <%=pageContext.getAttribute("value") %></h3>
	<h3>pageContext : <%=pageContext.getAttribute("pc")%></h3>
	<h3>request : <%=request.getAttribute("r")%></h3>
</body>
</html>