<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 숫자형식, 날짜형식, 로케일, 메세지
	formatNumber : 통화, currency, number, percent
 --%>
 
 <%
 	Locale l = response.getLocale();
 	out.println("<h3>" + l);
 %>
 
 <%-- <fmt:formatNumber type="number" value="10000000" var="num" scope="page" pattern="###,000,000.000#" />
 <h3>${num}</h3>
 <h3><fmt:formatNumber type="currenvy" currencySymbol="" value="1234567" /></h3> --%>
 
 <c:set value="1,234,567,890,123.12345" var="cur" />
 <h3><fmt:parseNumber type="number" value=${cur} /></h3>
 
 <%-- date, time --%>
 <c:set var="now" value="<%=new Date() %>" />
 <h3><fmt:formatDate value="${now}" /></h3>
 <h3><fmt:formatDate value="${now}" type="date" /></h3>
 <h3><fmt:formatDate value="${now}" type="time" /></h3>
 <h3><fmt:formatDate value="${now}" type="both" /></h3>
 <h3><fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /></h3>
 
 <h3><fmt:parseDate value="2023년 10월 20일 23시 10분 12초" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" var="d" />${d.date} ${d.getDate()}</h3>
</body>
</html>