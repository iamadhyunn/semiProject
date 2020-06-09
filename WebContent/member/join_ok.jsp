<!-- yong -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdto" class="semi.meminfo.MemInfoDTO" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="semi.meminfo.MemInfoDAO"></jsp:useBean>
<%   

      String tel1 = request.getParameter("fronttel");
      String tel2 = request.getParameter("midtel");
      String tel3 = request.getParameter("lasttel");
      String year = request.getParameter("year");
      int mage = 2021-Integer.parseInt(year);
      String month = request.getParameter("month");
      String day = request.getParameter("day");
      String mtel = tel1+"-"+tel2+"-"+tel3;
      String dob = year+"-"+month+"-"+day;
      mdto.setMage(mage);
      mdto.setMtel(mtel);
      mdto.setMdob(dob);
      int result = mdao.memberJoin(mdto);
      String msg = result>0?"성공":"실패";
%>


         <script>
         window.alert('<%=msg%>');
         location.href='join.jsp';
         </script>
      

   

