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
		session, cookie
		Http 특징 : 비연결성(connectionless), 무상태성(stateless)
		
		cookie : 서버가 클라이언트에게 보내는 데이터 조각
		session : cookie의 확장 개념 sessionid가 존재
		로그인 = 세션
		세션 만료 = 로그아웃, 시간 정보 있음, 브라우저가 완전히 꺼져야 꺼짐, 30분, 
		토큰 
	 --%>
	 <%
	 	/*Cookie cookie = new Cookie("myCookie", "내쿠키");
	 	cookie.setMaxAge(60 * 10);
	 	
	 	response.addCookie(cookie);*/
	 	out.println("<h1>" + session.getMaxInactiveInterval());
	 	session.invalidate(); // 로그아웃
	 	session.setMaxInactiveInterval(60 * 10);
	 	session.getId();
	 	
	 %>
</body>
</html>