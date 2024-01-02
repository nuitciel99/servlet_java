<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		// response.addCookie(null); // Cookie 생성 후 응답에 추가  
		// response.addHeader(name, value); 응답 헤더 추가 
		// response.getHeader(name); 응답헤더 조회 
		
		// response.sendRedirect("https://www.naver.com"); // 페이지 이동
		// applicatoin/json : key:value
		response.setContentType("applicatoin/json");
		
		// contentType 변경
		response.setContentType("image");
		// https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png
		
		URL url = new URL("https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png");
		InputStream is = url.openStream();
		
		OutputStream os = response.getOutputStream();
		int b = 0;
		// read() : the next byte of data, or -1 if the end of the stream is reached
		while((b = is.read()) != -1){
			os.write(b);
		}
	%>
	
