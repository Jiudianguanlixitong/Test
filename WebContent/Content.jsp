<%@page import="msg.Msg"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String title =request.getParameter("count");//用request得到 
%> 
<% 
ArrayList<Msg> ar=(ArrayList<Msg>)application.getAttribute("ar");
%>
<body>
   <% for(int i=0;i<ar.size();i++)
	   if(title.equals(ar.get(i).getTitle())){
	   %>
	   <table  id="5" border="1">
 <tr><td>user:<%=ar.get(i).getName() %></td></tr>
  <tr><td>title:<%=ar.get(i).getTitle() %></td></tr>
  <tr><td>message:<%=ar.get(i).getText() %></td></tr>
 </table>
 <%} %>
</body>
</html>