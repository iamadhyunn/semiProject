<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="semi.meminfo.*" %>
<%
MemInfoDTO mdto=(MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
int mtype=mdto.getMtype();
if(mtype==0){
	//일반회원
	%>
	<script>
	location.href='main.jsp';
	</script>
	<%
}else if(mtype==1){
	//튜터회원
	%>
	<script>
	location.href='main_tutor.jsp';
	</script>
	<%	
}else if(mtype==9){
	//admin
	%>
	<script>
	location.href='main_admin.jsp';
	</script>
	<%		
}
%>