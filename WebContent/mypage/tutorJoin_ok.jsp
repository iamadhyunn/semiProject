<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="semi.meminfo.*" %>
<<jsp:useBean id="tdao" class="semi.tutor.TutorDAO"></jsp:useBean>
<%
MemInfoDTO dto = (MemInfoDTO)session.getAttribute((String)session.getAttribute("id"));
String addr = request.getParameter("addr");
int result = tdao.tutorJoin(dto, addr);
String msg = result>0?"가입신청이 완료되었습니다." : "가입신청 실패";
%>
<script>
   window.alert('<%=msg%>'); 
   location.href="/semi/mypage/myPage.jsp";
</script>