<!-- hyun -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="semi.meminfo.*" %>
<jsp:useBean id="mdao" class="semi.meminfo.MemInfoDAO"></jsp:useBean>
<%
String id = request.getParameter("mid");
String pwd = request.getParameter("mpwd");
int mtype=mdao.getMemType(id);
int res= mdao.login(id, pwd);

String msg="";
if(res==1||res==2||res==-1){
	msg="아이디 또는 비밀번호가 잘못 되었습니다.";
	%>
	<script>
	window.alert('<%=msg%>');
	window.self.close();
	location.href="/semi/index.jsp";
</script>
<%


}else {

	MemInfoDTO mdto = mdao.getMemDTO(id);
	if(mdto!=null){
		session.setAttribute("id", id);
		session.setAttribute(id, mdto);
	}

	msg="로그인 성공";
	if(mtype==0){
	%>
	<script>
	window.alert('<%=msg%> / 일반회원');
	window.self.close();
	location.href="/semi/main.jsp";
	</script>
	<%
	}else if (mtype==1){
		%>
		<script>
		window.alert('<%=msg%> / 튜터회원');
		window.self.close();
		location.href="/semi/main_tutor.jsp";
		</script>
		<%
	}else if (mtype==9){
		%>
		<script>
		window.alert('<%=msg%> / 관리자');
		window.self.close();
		location.href="/semi/main_admin.jsp";
		</script>
		<%
	}
	}
%>
