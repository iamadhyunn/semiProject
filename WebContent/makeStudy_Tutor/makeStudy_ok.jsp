<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sdto" class="semi.study_gr.Study_grDTO"></jsp:useBean>
<jsp:setProperty property="*" name="sdto"/>
<jsp:useBean id="sdao" class="semi.study_gr.Study_grDAO"></jsp:useBean>
<%
int result=sdao.joinStudyGr(sdto);
String msg=result>0?"스터디 등록 성공":"스터디 등록 실패";
/* String std_limit_s=request.getParameter("std_limit");
int std_limit=Integer.parseInt(std_limit_s);
System.out.println(std_limit); */
%>
<script>
	window.alert('<%=msg%>');
	location.href='../main_tutor.jsp';
</script>