<%@page import="board.boardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
String boardkind = request.getParameter("boardkind");
boardDAO dao = new boardDAO(application);
dao.updateVisitCount(num);
boardDTO dto = dao.selectView(num);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<title>청담한빛안과</title>
<link rel="stylesheet" media="all" href="./view_files/animate.css">
<link rel="stylesheet" media="all" href="./view_files/jquery.bxslider.css">
<link rel="stylesheet" media="all" href="./view_files/slick.css">
<link rel="stylesheet" media="all" href="./view_files/aos.css">
<link rel="stylesheet" media="all" href="./view_files/font-awesome.min.css">
<script src="./view_files/AceCounter_CW.js.다운로드"></script>
<script type="text/javascript" src="./view_files/font-awesome.min.js.다운로드"></script>
<script type="text/javascript" src="./view_files/jquery-1.9.1.min.js.다운로드"></script>
<script type="text/javascript" src="./view_files/jquery-1.11.2ui.js.다운로드"></script>
<script type="text/javascript" src="./view_files/jquery.ui.draggable.js.다운로드"></script>
<script type="text/javascript" src="./view_files/jquery.bxslider.min.js.다운로드"></script>
<script type="text/javascript" src="./view_files/slick.min.js.다운로드"></script>
<script type="text/javascript" src="./view_files/aos.js.다운로드"></script>
<script type="text/javascript" src="./view_files/TweenMax.js.다운로드"></script>
<script type="text/javascript" src="./view_files/common.js.다운로드"></script>
<link rel="stylesheet" media="all" href="./view_files/common.css">
<link rel="stylesheet" media="all" href="./view_files/sub.css">
<link rel="stylesheet" href="./view_files/roughmapLander.css">
<script src="./view_files/v3.js.다운로드"></script>
<script charset="utf-8" src="./view_files/v3.js(1).다운로드"></script>
<script src="./view_files/v3.js.다운로드"></script></head>
<script>
//게시물 삭제를 위한 Javascript 함수
function deletePost(){
   //confirm() 함수는 대화창에서 "예"를 누를때 true가 반환된다.
   var confirmed = confirm("정말로 삭제하시겠습니까?");
   if (confirmed){
      //<form>의 name속성을 통해 DOm을 가져온다.
      var form = document.writeFrm;
      //전송방식과 폼값에 전송할 URL을 설정한다.
      form.method = "post";
      form.action = "DeleteProcess.jsp";
      //submit() 함수를 통해 폼값을 전송한다.
      form.submit();
      //<form>태그 하위의 hidden박스에 설정된 일련번호가
      //전송된다.
   }
}
</script>
</head>
<body>
<div id="document">


<%@ include file="./inc/header.jsp" %>
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<content>	

<!----------------------의료법으로 인하여 자세한 내용은-------------------->
<!----------------------로그인 후 확인 하실 수 있습니다. ---------------------------------->




	<div class="sub_container_wrap">
	<div class="sub_program_wrap">
		<h3 class="program_title">
<%
if(boardkind.equals("review")){ 
%>
		진료 후기</h3>
<%
}
else if(boardkind.equals("qna")){
%>
		 질문방</h3>
<%
} 
else if(boardkind.equals("notice")){
%>
		 공지사항</h3>
<%
} 
%>
<script language="JavaScript" src="./review_files/window.js.다운로드"></script>
<script language="JavaScript" src="./review_files/document.js.다운로드"></script>
<script language="JavaScript" src="./review_files/cookie.js.다운로드"></script>
<link href="./view_files/hw_css.css" rel="stylesheet" type="text/css">


<form name="writeFrm">
<div class="media_gallery_wrap">
<input type="hidden" name="num" value="<%= dto.getNum()%>" />  
<input type="hidden" name="id" value="<%= dto.getId() %>" />  
<input type="hidden" name="boardkind" value="<%= dto.getBoardkind() %>" />  
	<div class="media_gallery_view_wrap">
		<table border="0" cellpadding="0" cellspacing="0" class="media_gallery_view_table">
			<tbody>
				<tr>
					<th>제목</th>
					<td class="view_title"><%=dto.getTitle().replace("\r\n", "<br/>") %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=dto.getId() %></td>
				</tr>
				<tr class="line">
					<th>작성일</th>
					<td><%=dto.getPostdate() %></td> 
				</tr>
				<tr>
					<th>내용</th>  
					<td>
					<%=dto.getContent().replace("\r\n", "<br/>") %>
<%
if(boardkind.equals("review")||boardkind.equals("qna")){ 
	if(dto.getNfile() != null){
%>
					<p>
                		<img src="../Uploads_p/<%=dto.getNfile() %>" style="width: 500px; height: 700px;" >
                	</p>
<%
	}
}
%>
					</td>
				</tr>
<%
if(boardkind.equals("review")||boardkind.equals("qna")){ 
%>
				<tr>
					<th>첨부파일</th>
<%
if(dto.getOfile() != null){
%>
					<td><%=dto.getOfile() %> <a href="./DownloadProcess.jsp?ofile=<%=dto.getOfile() %>&nfile=<%=dto.getNfile() %>&num=<%=dto.getNum() %>">
                [다운로드]</a></td>
<%
}else{
%>
					<td>없음</td>
<%
}
%>
				</tr>
<%
}
%>
				</tbody>
		</table>

	</div>
	</div>
<style>
.view-btn{
vertical-align: middle;
    display: inline-block;
    text-decoration: none;
    padding: 9px 18px;
    font-size: 13px;
    text-align: center;
    color: #fff;
    background-color: #747474;
    box-sizing: border-box;
    border-radius: 5px;
    border: 0;
}
</style>
	<div style = "padding-left:73%; padding-top: 10px; ">
    <button type="button" class="view-btn" onclick="location.href='./<%=dto.getBoardkind() %>_board.jsp';">
        목록 보기
    </button>
<% 
if(session.getAttribute("UserId")!=null &&
   dto.getId().equals(session.getAttribute("UserId").toString())){
%>
    <button type="button" class="view-btn" onclick="location.href='Edit.jsp?num=<%=dto.getNum() %>';">
    수정하기</button>
    <button type="button" class="view-btn" onclick="deletePost();">삭제하기</button> 
<%
}

%>
	</div>
</div>
<form/>
</content>
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->

<%@ include file="./inc/footer.jsp" %>
	
	

</div><!-- .document E -->


</body></html>