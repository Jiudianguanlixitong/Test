<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.NEW"%>
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="msg.Msg"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% 
String name=(String)session.getAttribute("name");
 String n=null,t=null,te=null;
if(name==null)
	 out.println("<script>alert('您还未登录，请登录！');window.location.href='http://localhost:8080/Liuyanben/Login.jsp'</script>");
%>
<% 
ArrayList<Msg> ar=(ArrayList<Msg>)application.getAttribute("ar");
%>
<h1>留言本</h1>
<body>
<form action="NewMsg" method="POST">
<div id="1" style="width:400px;float:left;">
<% if(!ar.isEmpty()) {
  for(int i=0;i<ar.size();i++){
   %>
 <table  id="5" border="1">
 <tr><td>user:<%=ar.get(i).getName() %></td></tr>
  <tr><td>title:<%=ar.get(i).getTitle() %></td></tr>
  <tr><td>message:<%=ar.get(i).getText() %></td></tr>
 </table>
 <%} }%></div>
  <div  id="2" style="width:200px;float:left;">
   <table id="4" border="1">
   <tr><td>标题栏</td></tr>
   <% if(!ar.isEmpty()) {
  for(int i=0;i<ar.size();i++){
   %>
   <%t=ar.get(i).getTitle(); %>
    <tr><td><input type="button"  value=<%=ar.get(i).getTitle()%>  onclick="location.href='http://localhost:8080/Liuyanben/Content.jsp?count=<%=ar.get(i).getTitle()%>'"></td></tr>
   <%} }%>
   </table>
 </div>
 <div id="3" style="clear:both;">
 新建留言:<br>
 标题：<input type="text" name="title"><br>
 内容：<input type="text" name="content"><br>
 <input type="submit" value="提交">
 </div>

</form>
</body>
</html>