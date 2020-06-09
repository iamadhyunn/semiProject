<!-- hyun -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="semi.study_gr.Study_grDTO" %>
    <jsp:useBean id="dao" class="semi.study_gr.Study_grDAO"></jsp:useBean>
    
    <%
    int sidx=Integer.parseInt(request.getParameter("sidx"));
   	Study_grDTO dto = dao.studyInfo(sidx);
   	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<article>
<h2>스터디상세정보</h2>
<span>(스터디번호)<%=dto.getSidx() %></span>
<span>(튜터이름)<%=dto.getTutorname() %></span>
<span>(스터디이름)<%=dto.getS_gr_name() %></span>
<span>(시작날짜)<%=dto.getSdate() %></span>
<span>(종료날짜)<%=dto.getEdate() %></span>
<span>(스터디진행상황)<%=dto.getStdgr_status()==0?"모집중":"진행중" %></span>
<span>(스터디설명)<%=dto.getScontent() %></span>
<span>(학생수)<%=dto.getStd_limit() %></span>
</article>
</section>
</body>
</html>