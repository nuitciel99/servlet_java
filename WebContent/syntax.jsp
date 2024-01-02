<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
	import="java.util.Random"	trimDirectiveWhitespaces="false" buffer="24kb"
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTMl Comment : 화면에 노출됨 -->
	<%-- 
	
		JSP : 내부적으로 java file로 변경 .java > .class
		JSP Comment : 화면에 노출되지 않음 
		<%@ %> : directive 지시자, 선언문
		page, include, taglib
		forward redirect
		pageEncoding = text file이 정의된 문자셋
		contentType = 브라우저 해석의 문자셋
		
		scriptlet 
		<%! %>
		<% %>
		<%= %>
	
		Servlet : Server + Applet 
		// 쥬니버 flash player, applet
		
		scriptlet 
	--%>
	
	<%
		// 지역 
		String str = "문자열";
		for(int i = 0; i<10; i++){
			out.println(i);
		}
		run();
		System.out.println(j);	
		System.out.println(si);	
	%>
	<%!
		int j = 20; // 인스턴스 변수 
		static int si = 30;
		void run(){
			System.out.println("run()");	
		}
	%>
	<%
		// application
		// page
		// pageContext
		// request
		// response
		// out
		// session
	%>
	<h1><%=str%></h1>
	<h1><%out.print(str);%></h1>
	<h1><%=j%></h1>
	
	<%-- ----------------------------------------------- --%>
	
	<%--
	- <%@ %> :  지시자, 선언문, 페이지 속성 지정
	- <%! %> : 변수, 메소드 선언 
	- <%= %> : 표현식, 결과값 출력
	- <% %> : script (java) 
	- <jsp:action> </jsp:action> : 페이지 삽입
	--%>
	
	<%!	/* 변수 및 메소드 선언 */
		int a;
		int b;
		
		public int sum(int a, int b){
			return a+b;
		}
	%>
	<% /* 자바 코드 삽입 */
		a = 10;
		b = 10;
		
		out.println(sum(a,b));  // 웹화면에 출력
	%><br>
	<%= // 표현식, 결과값 출력 
	sum(a,b) 
	%><br>
	<% 
		int i = 0;
		while (true) {
			
			out.println(i + " 번째 줄");
			i++;
	%>	<br/>============== <br/>

	<%
		if (i > 5)
			break;
		}
	%><br>
	<% 
		int j = 0;
		while (true) {
			out.println(j + " 번째 줄");
			j++;
			if (j > 5)
				break;
		}
	%>
	
	
	
</body>
</html>