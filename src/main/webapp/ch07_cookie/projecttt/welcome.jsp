<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // 쿠키 가져오기
   Cookie[] cookies = request.getCookies();
   String userName = "손님";
   
   if (cookies != null) {
       for (Cookie cookie : cookies) {
           if (cookie.getName().equals("userName")) {
               userName = URLDecoder.decode(cookie.getValue(), "utf-8");
               break;
           }
       }
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
   <h3>환영합니다. <%= userName %>님</h3>
   <br>
   <%
      if (!userName.equals("손님")) {   
   %>
   <button id="btnMain">메인 페이지로 이동</button>
   <%
      }
   %>
   <script>
      // 메인 페이지로 이동 버튼 클릭 시 main.jsp로 이동
      const id = document.querySelector("#btnMain");
      id.addEventListener("click", function() {
         window.location.href = "main.jsp";
      });
   </script>
</body>
</html>
