<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
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
	<!-- 수신 -->
	<%
		// request.setCharacterEncoding("UTF-8"); (post 방식만)
		// >>> 서블릿에서 post방식으로 정보를 서버에 전달해줄 때
		// >>> 받은 parameter를 UTF-8로 해석
	 	// >>> 한글을 GET방식으로 보낼때는 톰캣에 기본적으로 UTF-8문자코드가 적용이 되어있어서 
	 	// 	   자동으로 한글처리를 해주기때문에 한글이 깨지지 않음
	 	
		// response.setCharacterEncoding("UTF-8"); (get, post 방식 둘다)
		// >>> 서블릿에서 직접 브라우저에 출력해줄 경우
		
		// response.setContentType("text/html;charset=utf-8"); (get, post 방식 둘다)
		// >>> 서블릿에서 직접 브라우저에 출력해줄 경우
		
		// iso-8859-1 >> utf-8
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.println(id);
		System.out.println(pwd);
	%>
	<h1>입력한 아이디 : <%=id%></h1>
	<h1>입력한 비밀번호 : <%=pwd%></h1>
	
	<%
		List<Map<String, String>> users = new ArrayList<>();
		Map<String, String> user = new HashMap<>();
		user.put("id", "hong");
		user.put("pwd", "1234");
		users.add(user);
		
		user = new HashMap<>();
		user.put("id", "kim");
		user.put("pwd", "1234");
		users.add(user);
		
		user = new HashMap<>();
		user.put("id", "lee");
		user.put("pwd", "5678");
		users.add(user);
			
		// users [{"id":"hong", "pwd":"1234"}, {"id":"kim", "pwd":"1234"}, {"id":"lee", "pwd":"5678"}]
		
		/*
		boolean success = false;
		for(int i = 0; i<users.size(); i++){
			if(users.get(i).get("id").equals(id) && users.get(i).get("pwd").equals(pwd)){
				// 로그인 성공
				success = true;
				break;
			}
		}*/
		/*
		boolean success = false;
		for(Map<String, String> m : users){
			if(m.get("id").equals(id) && m.get("pwd").equals(pwd)){
				// 로그인 성공
				success = true;
				break;
			}
		}
		*/
		
	%>
	<h1>로그인 <%=users.stream().filter(m->m.get("id").equals(id) && m.get("pwd").equals(pwd)).count() > 0 ? "성공" : "실패" %></h1>
</body>
</html>