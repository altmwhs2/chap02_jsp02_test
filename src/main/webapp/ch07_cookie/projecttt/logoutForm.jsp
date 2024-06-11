<%@page import="javax.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // 모든 쿠키 가져오기
   Cookie[] cookies = request.getCookies();
   
   if (cookies != null) {
       for (Cookie cookie : cookies) {
           if (cookie.getName().equals("userName")) {
               // 쿠키 삭제를 위해 만료 시간을 0으로 설정
               cookie.setMaxAge(0);
               response.addCookie(cookie);
           }
       }
   }
   
   // 세션 무효화
   request.getSession().invalidate();
   
   // 로그인 폼으로 리다이렉트
   response.sendRedirect("loginForm.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
</body>
</html>
