<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% String s=(String)session.getAttribute("text"); %>
<body>
<form action="Test" method="post">
 <input type="text" name="text">
 回应：<%=s %>
 <input type="submit" value="提交">
</form>
</body>
</html>