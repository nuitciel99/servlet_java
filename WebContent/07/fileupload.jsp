<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
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
	application/x-www-form-urlencoded >> querystring 문자열 직렬형태로 전송규칙
	multipart/form-data
 --%>
<form method="post" enctype="multipart/form-data">
	<input type="file" multiple name="file">
	<input type="text" name="id">
	<button>전송</button>
</form>
<%-- multipart
	일반적인 form의 submit에 의한 데이터들의 Content-type은 application/x-www-form-urlencoded
	만약 자신이 찍은 사진을 올리는 form의 경우, 사진에 대한 설명을 위한 input과 사진 파일을 위한 input 2개가 들어간다.
	여기서 이 두 input 간에 Content-type이 전혀 다르다. 이 두 input 간에 Content-type은 사진 설명은 application/x-www-form-urlencoded 이 될 것이고,
	사진 파일은 image/jpeg이다. 두 종류의 데이터가 하나의 HTTP Request Body에 들어가야 하는데, 
	한 Body에서 이 2 종류의 데이터를 구분에서 넣어주는 방법도 필요해졌다. 그래서 등장하는 것이 multipart 타입이다.
 --%>
<%
	if(request.getMethod().equals("POST")) {
		String file = request.getParameter("file");
		String id = request.getParameter("id");
		
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		diskFileItemFactory.setRepository(new File("c:/upload"));
		diskFileItemFactory.setDefaultCharset("utf-8");
		diskFileItemFactory.setSizeThreshold(1024 * 1024);
		
		ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
		
		
		List<FileItem> items = fileUpload.parseRequest(new ServletRequestContext(request));
		for(FileItem fi : items) {
			if(fi.isFormField()) {
				System.out.printf("파라미터 명 : %s, 파라미터 값 : %s \n", fi.getFieldName(), fi.getString("utf-8"));
			} 
			else {
				System.out.printf("파라미터 명 : %s, 파일명 : %s, 파일 크기 : %d \n", fi.getFieldName(), fi.getName(), fi.getSize());
				/* fi.write(new File("c:/uploads", fi.getName())); */
				fi.write(new File("c:/upload", "abcd.txt"));
			}
		}
	}
%>
</body>
</html>