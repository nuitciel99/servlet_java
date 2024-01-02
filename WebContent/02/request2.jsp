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
	request Header : 
	
	request.getHeaderNames();
	--%>
	<%
		/* 
			IP : 인터넷 프로토콜 주소
			HOST :  사용자를 특정 웹 사이트로 이동시키는 네트워크에 할당 된 레이블
		*/
		Cookie[] cookies = request.getCookies(); // cookie 배열 반환
		request.setAttribute("abcd", 1234);
		request.getAttribute("abcd"); // string name을 가진 object attr value 반환
		response.setHeader("abce", "1234");
		
		
		request.getRemoteAddr(); // IP 확인
		request.getRemoteHost(); // host 확인
		request.getMethod();  // 요청 메서드 확인 > GET, POST, PUT, DELETE
		HttpSession s = request.getSession(); // sesion 객체 반환
		// 영역 객체
		// pageContext(private, 내 jsp), request(중요함, 한번의 요청 동안 공유), session(한번의 세션 동안 공유), application(public, project)
		// request.getHeader("User-Agent") : 클라이언트 브라우저 정보 
	%>
	
	<h1>ATTR : <%=request.getAttribute("abcd") %></h1>
	<h1>USER AGENT : <%=request.getHeader("User-Agent") %></h1>
	<h1>ADDR : <%=request.getRemoteAddr() %></h1>
	<h1>HOST : <%=request.getRemoteHost() %></h1>
	<h1>METHOD : <%=request.getMethod() %></h1>
	<form method="post">
		<button>전송</button>
	</form>
</body>
</html>