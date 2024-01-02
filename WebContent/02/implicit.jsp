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
	System.out.println(this);
	System.out.println(page);
	System.out.println(page == this);
	
	// pageContext 영역 객체 중 가장 좁은 범위 
	System.out.println(pageContext.getRequest() == request); 
	System.out.println(pageContext.getSession() == session); 
	System.out.println(pageContext.getServletContext() == application); 
	
	out.println("<h1>표시</h1>");
	
	// 
%>
<% // 구구단 출력
	for(int i = 2; i<=9; i++){
		out.println(i + "<h1>구구단</h1><br>");
		for(int j = 1; j<=9; j++){
%> 
<% 
			out.print(String.format("<h3>%d * %d = %d</h3>", i, j, i * j));
			
		}
	}
	
%> 
</body>
</html>