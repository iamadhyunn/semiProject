<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="semi.std_apply.*" %> 
<%@ page import="java.util.*" %>  
<jsp:useBean id="adao" class="semi.std_apply.Std_applyDAO"></jsp:useBean>
<%
   String sidx_s =  request.getParameter("sidx"); 
   int sidx = Integer.parseInt(sidx_s); 
   String std_name = request.getParameter("std_name"); 
   ArrayList<Std_applyDTO> arr =  adao.applyList(sidx);    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2><%=std_name %>신청자 리스트 </h2>
   <%
      if(arr==null || arr.size()==0){
         %>신청서가 없습니다.<% 
      }else{
         for(int i=0; i<arr.size(); i++){
            Std_applyDTO dto = arr.get(i); 
         %>  이름 :<%=dto.getMname()%>  
            <a href="studyApplyInfo.jsp?midx=<%=dto.getMidx()%>&sidx=<%=dto.getSidx()%>">
            제목 :<%=dto.getAsubject()%></a> 
            신청일 : <%=dto.getAdate()%>
            승인여부 :<%=dto.getAstate()==0?"대기중":"승인"%> 
         <%  
         }
          
      }
   %>

</body>
</html>