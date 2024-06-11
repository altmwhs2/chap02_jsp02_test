<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	HttpSession ses = request.getSession();
    
    	String userId = "dream";
    	// 세션에 값 저장
    	ses.setAttribute("userId", userId);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setSession.jsp</title>
</head>
<body>
	<h3>세션에 값 저장하기</h3>
</body>
</html>