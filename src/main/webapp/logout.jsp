<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- add this at the top of the page to get the session object --%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%-- get the session object and invalidate it --%>
<%
  HttpSession session2 = request.getSession(false);
  if (session != null) {
    session.invalidate();
  }
%>

<%-- redirect the user to the login page --%>
<%
  String contextPath = request.getContextPath();
  response.sendRedirect(contextPath + "/Loginpage.jsp");
%>

</body>
</html>