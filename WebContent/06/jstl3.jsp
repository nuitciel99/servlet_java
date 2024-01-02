<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="EL.jsp" var="el">
	
	</c:import>
	<%-- ${el}
	${el} --%>
	<c:url var="data" value="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png"></c:url>
	<c:set var="data2" value="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png"/>
	<h3>${data}</h3>
	<img src="${data}">
	<h3>${data2}</h3>
	<img src="${data2}">
	
	<%
		// response.sendRedirect("");
	%>
	<%-- <c:redirect url="jstl1.jsp" /> --%>
	
	<c:catch var="except">
	<h3>예외 발생 전</h3>
	<%=1/0 %>
	<h3>예외 발생 후</h3>
	</c:catch>
	
	<h3>${except.toString().concat("abcd")}</h3>
</body>
</html>