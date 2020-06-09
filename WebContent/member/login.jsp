<!-- hyun -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="login" action="login_ok.jsp">
id<input type="text" name="mid">
pwd<input type="password" name="mpwd">
<input type="submit" value="로그인">
<input type="button" value="회원가입">
</form>
<%@include file="/footer.jsp" %>
</body>
</html>