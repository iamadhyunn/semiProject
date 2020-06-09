<!-- yong -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="mdao" class="semi.meminfo.MemInfoDAO"></jsp:useBean>
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
   fieldset{
      text-align:center;
   }
</style>
<%
   String mid = request.getParameter("mid"); 
   int result = mdao.idCheck(mid);
   String msg = result>0?"이미 사용중인 아이디 입니다.":"사용 가능한 아이디 입니다. ";
   if(result<=0){
      Cookie ck = new Cookie("ok",mid);
      ck.setMaxAge(60*60*24);
      response.addCookie(ck);
   }
   
   if(mid.equals("")||mid==null){
      msg = "아이디를 입력해주세요";
   }
%>
<script>
   function okCheck(){
      opener.location.reload();
      self.close();
   }
</script>
<body>
   <fieldset>
      <legend>중복 체크</legend>
      <%=msg %><br>
      <input type="button" value="확인" onclick="okCheck()">     
   </fieldset>
   
</body>
</html>