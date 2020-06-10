<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.std_apply.*" %>
<jsp:useBean id="sdao" class="semi.std_apply.Std_applyDAO"></jsp:useBean>
<%
String midx_s=request.getParameter("midx");
String sidx_s=request.getParameter("sidx");
if(midx_s==null||midx_s.equals("")&&sidx_s==null||sidx_s.equals("")){
   midx_s="0";
   sidx_s="0";
}
int midx=Integer.parseInt(midx_s);
int sidx=Integer.parseInt(sidx_s);
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
      <fieldset>
         <legend>신청서</legend>
         <%
         Std_applyDTO dto=sdao.ApplyInfo(midx, sidx);
         if(dto==null){
        	 System.out.println("sdfsdfsdfsdf");
         }
         %>
         <span>이름 : <%=dto.getMname() %></span><span>나이 : <%=dto.getMage() %></span>
         <span>신청일 : <%=dto.getAdate() %></span><br/>
         <span>제목 : <%=dto.getAsubject() %></span><br/>
         <span><textarea rows="10" cols="70" name="acontent"><%=dto.getAcontent() %></textarea></span><br/>
         <a href="studyApplyInfo_ok.jsp?midx=<%=midx %>%ok=ok">승인</a>
         <a href="studyApplyInfo_ok.jsp?midx=<%=midx %>&ok=no">거절</a>
      </fieldset>
   </article>
</section>
</body>
</html>