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
<title>Main Page</title>
</head>
<body>
   <h3><%= userName %>님 여기는 메인페이지입니다.</h3>
   <br>
   <%
      if (!userName.equals("손님")) {   
   %>
   <button id="btnLogout">로그아웃</button>
   <%
      } else {
   %>   
   <button id="btnLogin">로그인</button>
   <%          
      }
   %>
   <script>
      // 로그아웃 버튼 클릭 시 logout.jsp로 이동
      const id = document.querySelector("#btnLogout");
      id.addEventListener("click", function() {
         window.location.href = "logoutForm.jsp";
      });
      
      // 로그인 버튼 클릭 시 loginForm.jsp로 이동
      const loginButton = document.querySelector("#btnLogin");
      if (loginButton) {
          loginButton.addEventListener("click", function() {
              window.location.href = "loginForm.jsp";
          });
      }
   </script>
</body>
</html>
