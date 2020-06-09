<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdto" class="semi.meminfo.MemInfoDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="semi.meminfo.MemInfoDAO"></jsp:useBean>


<%
   int result = mdao.updateMyInfo(mdto);
   String msg = result>0?"수정이 완료되었습니다." :"수정 실패";
%>

<script>
   window.alert('<%=msg%>');
   location.href="myPage.jsp";
</script>