<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
		Object o = request.getAttribute("strings");
		List<String> list = (List<String>)o;
		for(String s : list){
			out.println("<h2>" + s + "</h2>");
		}
	%>
	<h2><%=list.get(0)%></h2>
	<h2><%=list.get(1)%></h2>
	<h2><%=list.get(2)%></h2> --%>
	
	<%-- <h2><%=request.getAttribute("strings") %></h2>
	<h2><%=((List)request.getAttribute("strings")).get(0) %></h2>
	<h2><%=((List)request.getAttribute("strings")).get(1) %></h2>
	<h2><%=((List)request.getAttribute("strings")).get(2) %></h2> --%>
	
	<h2>${strings}</h2>
	<h2>${strings[0]}</h2>
	<h2>${strings[1]}</h2>
	<h2>${strings[2]}</h2>
	<h2>${strings[3]}</h2>
	
	<!-- EL
		JSP에서 사용가능한 기본객체 중 scope와 관련된 네가지 객체(pageContext, request, session, application)의 속성을 사용 가능
		HTTP 요청 헤더나 쿠키값을 사용할 수 있음
		수치, 관계, 논리 연산이 가능
		메서드를 호출할 수 있음
	-->
	
	<%
		// 4가지 영역 객체에 attritube를 지정 
		// pageContext, request, session, application
		// pageScope, requestScope, sessionScope, applicationScope
		pageContext.setAttribute("value", "1234");
		pageContext.setAttribute("sValue", "abcd"); // 가장 좁은 scope 실행 >> application도 없을 경우 : 빈 문자열 
		pageContext.setAttribute("sValue", "1234");
		session.setAttribute("sValue", "5678");
		application.setAttribute("sValue", "가나다라");
	%>
	<h2>${value}</h2>
	<h2>${sValue}</h2>
	<h2>${sessionScope.sValue}</h2>
	<h2>${applicationScope.sValue}</h2>
	<h2>${header["user-agent"]}</h2>
	
	<%-- <%
		application.getAttribute("");
	%> --%>
</body>
</html>