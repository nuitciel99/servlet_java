<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		String request.getParameter(String)	: 인자 이름으로 요청된 파라미터 값을 문자열로 반환
		String[] request.getParameterValues(String) : 인자 이름으로 요청된 파라미터 값들을 문자열 배열로 변환
		Enumeration request.getParameterNames(void) : 이 요청으로부터 요청된 파라미터 이름들을 enumeration 타입으로 변환
		Map<String, String[]> request.getParameterMap(void) : 파라미터들을 맵으로 반환   
		
		Enumeration Iterator
	--%>
	<form>
		<h3>아이디</h3>
		<input name="id">
		<h3>비밀번호</h3>
		<input type="password" name="pwd">
		<input type="hidden" name="hid" value="hidVal">
		<hr>
		<h3>취미</h3>
		<label>독서<input type="checkbox" name="hobby"  value="reading"></label>
		<label>등산<input type="checkbox" name="hobby"  value="climb"></label>
		<label>게임<input type="checkbox" name="hobby" value="game"></label>
		<label>영화감상<input type="checkbox" name="hobby" value="movie"></label>
		<hr>
		<button>가입</button>
	</form>
	<h3>id : <%=request.getParameter("id") %></h3>
	<h3>pwd : <%=request.getParameter("pwd") %></h3>
	<h3>hid : <%=request.getParameter("hid") %></h3>
	<h3>hobby : <%=Arrays.toString(request.getParameterValues("hobby")) %></h3>
	<!-- 
		Iterator
		>>다음 내용이 있는지 확인하는 hasNext() 메서드, 그 값을 가져오는 next() 메서드, 해당 컬렉션의 값을 삭제할 수 있는 remove() 메서드
		Enumeration
		>>다음 내용이 있는지 확인하는 hasMoreElements() 메서드, 그 값을 가져오는 nextElement() 메서드가 있고 컬렉션의 데이터를 삭제하는 메서드 없음
	 -->
	<%
		Enumeration<String> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements())	{
			String name = paramNames.nextElement();
			/* out.print("<h3>" + name + " :: " + request.getParameter(name) + "</h3>"); */
			out.print("<h3>" + name + " :: " + Arrays.toString(request.getParameterValues(name)) + "</h3>");
		}
	%>
	<!-- 
		getParameterNames
		>>Returns an Enumeration of String objects containing the names of the parameters contained in this request 
	 	getParameterMap
		>>Returns a java.util.Map of the parameters of this request. Request parameters are extra information sent with the request. 
		  For HTTP servlets, parameters are contained in the query string or posted form data
	 -->
	<hr>
	<%
		Map<String, String[]> paramMap = request.getParameterMap();
		// keyset : key만
		Set<String> keyset = paramMap.keySet();
		for(String name : keyset){
			out.print("<h3>" + name + " :: " + Arrays.toString(request.getParameterValues(name)) + "</h3>");
		}
		// entryset : key와 value 모두 
		Set<Entry<String, String[]>> entryset = paramMap.entrySet();
		for(Entry<String, String[]> entry : entryset){
			out.print("<h3>" + entry.getKey() + " :: " + Arrays.toString(entry.getValue()) + "</h3>");
		}
	%>
</body>
</html>