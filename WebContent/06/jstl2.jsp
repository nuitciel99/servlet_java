<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- forEach
	1 : index
	2 : enhanced : interable(array, list, set, map)
 --%>
<c:forEach begin="0" end="9" step="3" var="i" varStatus="stat">
	<h1>${i} 출력 : ${stat.index}, ${stat.count}</h1>
</c:forEach>

<%
	String[] fruits = {"사과", "망고", "딸기", "수박"};
	pageContext.setAttribute("fruits", fruits);
	
%>
<c:forEach items="${fruits}" end="2" var="i" varStatus="stat">
	<c:if test="${stat.index % 2 == 0}">
		<h1>${i} 순회 : ${stat.index} ${stat.count}</h1>
	</c:if>
</c:forEach>
<h1>
	<c:forEach items="${fruits}" var="i" varStatus="stat">
		${i}<c:if test="${not stat.last}">,</c:if>
	</c:forEach>
</h1>

<%-- <c:forEach begin="2" end="9" var="i">
	<c:forEach begin="1" end="9" var="j">
		<h3>${i} * ${j} = ${i*j}</h3>
	</c:forEach>
</c:forEach> --%>

<c:set var="str" value="서울,경기.인천.부산,광주.대구"/>
<c:forTokens items="${str}" delims=",." var="i">
	<h3>${i}</h3>
</c:forTokens>
</body>
</html>