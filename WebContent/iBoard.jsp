<!-- leeHyunjin  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="semi.i_board.*" %>
<jsp:useBean id="bdao" class="semi.i_board.I_BoardDAO" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<%
int totalCnt=bdao.getTotalCnt();
int listSize=5;
int pageSize=5;
String cp_s=request.getParameter("cp");
if(cp_s==null||cp_s.equals("")){
   cp_s="1";
}
int cp=Integer.parseInt(cp_s);

int pageCnt=totalCnt/listSize+1;
if(totalCnt%listSize==0)pageCnt--;
int userGroup=cp/pageSize;
if(cp%pageSize==0)userGroup--;
%>
<body>
<%@include file="/header.jsp" %>
<section>
   <article>
      <h2>문 의 게 시 판 리 스 트 </h2>
      <table>
         <thead>
            <tr>
               <th>게시물 번호</th>
               <th>제목</th>
               <th>작성자</th>
               <th>조회수</th>
            </tr>
         </thead>
         <tbody>
         <%
         ArrayList<I_BoardDTO> arr=bdao.I_BoardList(cp,listSize);
         if(arr==null||arr.size()==0){
            %>
            <tr>
               <td colspan="4" align="center">
                  등록된 문의게시글이 없습니다.
               </td>
            </tr>
            <%
         }else{
            for(int i=0;i<arr.size();i++){
               %>
               <tr>
                  <td><%=arr.get(i).getIb_num()%></td>
                  <td><a href="?idx=<%=arr.get(i).getIb_num()%>"><%=arr.get(i).getIb_writer()%></a></td>
                  <td><%=arr.get(i).getIb_sub()%></td>
                  <td><%=arr.get(i).getIb_readnum()%></td>
               </tr>
               <%
            }
         }
         
         %>
         </tbody>
         <tfoot>
            <tr>
               <td colspan="3" align="center">
                   <%
if(userGroup!=0){
   %>
   <a href="i_Board_List.jsp?cp=<%=(userGroup-1)*pageSize+pageSize%>">&lt;&lt;</a>
   <%
}
%>
<%
for(int i=userGroup*pageSize+1;i<=userGroup*pageSize+pageSize;i++){
   %>
   &nbsp;&nbsp;<a href="i_Board_List.jsp?cp=<%=i%>"><%=i%></a>&nbsp;&nbsp;
   <%
   if(i==pageCnt)break;
}
%>
<%
if(userGroup!=(pageCnt/pageSize-(pageCnt%pageSize==0?1:0))){
   %>
   <a href="i_Board_List.jsp?cp=<%=(userGroup+1)*pageSize+1%>">&gt;&gt;</a>
   <%
}
%>
               </td>
               <td>
                  <a href="i_Board_Write.jsp">글쓰기</a>
               </td>
            </tr>
         </tfoot>
      </table>
   </article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>