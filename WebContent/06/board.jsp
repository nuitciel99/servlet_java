<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String, String> map = new HashMap<String, String>();
		map.put("free", "자유게시판");
		map.put("notice", "공지사항");
		map.put("pds", "자료실");
		
		pageContext.setAttribute("titles", map);
	%>
	<%-- <h1><%=map.get(request.getParameter("category"))%></h1> --%>
	<h1>${titles[param.category]}</h1>
	<a href="?category=free">자유게시판</a>
	<a href="?category=notice">공지사항</a>
	<a href="?category=pds">자료실</a>
</body>
</html>