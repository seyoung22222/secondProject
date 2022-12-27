<%@page import="board.boardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boardDAO dao = new boardDAO(application);

Map<String, Object> param = new HashMap<String, Object>();
int totalCount = dao.selectCount(param, "qna");
List<boardDTO> boardLists = dao.selectList(param, "qna");
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<title>청담한빛안과</title>
<link rel="stylesheet" media="all" href="./qna_files/animate.css">
<link rel="stylesheet" media="all" href="./qna_files/jquery.bxslider.css">
<link rel="stylesheet" media="all" href="./qna_files/slick.css">
<link rel="stylesheet" media="all" href="./qna_files/aos.css">
<link rel="stylesheet" media="all" href="./qna_files/font-awesome.min.css">
<script src="./qna_files/AceCounter_CW.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/font-awesome.min.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/jquery-1.9.1.min.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/jquery-1.11.2ui.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/jquery.ui.draggable.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/jquery.bxslider.min.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/slick.min.js.다운로드"></script>
<script type="text/javascript" src="./qna_files/aos.js.다운로드"></script>
<!-- PC -->
<script type="text/javascript" src="./qna_files/common.js.다운로드"></script>
<link rel="stylesheet" media="all" href="./qna_files/common.css">
<link rel="stylesheet" media="all" href="./qna_files/sub.css">
<link rel="stylesheet" href="./qna_files/roughmapLander.css">
<script src="./qna_files/v3.js.다운로드"></script>
<script charset="utf-8" src="./qna_files/v3.js(1).다운로드"></script>
<script src="./qna_files/v3.js.다운로드"></script>

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

<div class="sub_container_wrap">
	<div class="sub_program_wrap">
		<h3 class="program_title">질문방</h3>

<script language="JavaScript" src="./qna_files/window.js.다운로드"></script>
<script language="JavaScript" src="./qna_files/document.js.다운로드"></script>
<link type="text/css" rel="stylesheet" href="./qna_files/hw_css.css">
<script language="JavaScript" src="./review_files/window.js.다운로드"></script>
<script language="JavaScript" src="./review_files/document.js.다운로드"></script>
<link type="text/css" rel="stylesheet" href="./review_files/hw_css.css">
<script>
function allCheck(cform){
	var objCheck;
	objCheck=cform.check;
	if (cform.allch.checked) {
		if(objCheck.length) {
			for(i=0;i<objCheck.length;i++){
				objCheck[i].checked='on';
			}
		}
		else {
			objCheck.checked='on';
		}
	}
	else {
		if(objCheck.length) {
			for(i=0;i<objCheck.length;i++){
				objCheck[i].checked='';
			}
		}
		else {
			objCheck.checked='';
		}
	}
}

</script>





	
	
	<div class="newb_list_wrap" style="border:none; width:1050px">
		<div class="faq_search_wrap">
			<div class="faq_search">
				<form name="sform" action="" method="post" id="sform">
					<select name="field" class="faq_search_select">
						<option value="all">전체</option>
						<option value="title">제목</option>
						<option value="contents">내용</option>
						<option value="name">작성자</option>
					</select>
					<input type="text" name="search" class="faq_search_input" placeholder="검색어를 입력해 주세요." value="">
					<input type="submit" value="검색" onclick="" class="faq_search_btn">
				</form>
			</div>
		</div>
		
		<div class="faq_tab_wrap">
		<ul class="faq_tab">
			<li><a href="qna_board2.jsp">자주하는 질문</a></li>
			<li class="co"><a href="">질문방</a></li>
		</ul>
	</div>

	<div class="newb_list_wrap">
		<form action="./Write.jsp" method="post" name="checkform" style="margin:0">
		<input type="hidden" name="boardkind" value="qna">
			<table border="0" cellpadding="0" cellspacing="0" class="newb_table">
				<colgroup>
					<col width="15%">
					<col width="40%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
			 	<%
                if(boardLists.isEmpty()){
           		%> 
                   	<tr>
                   		<td colspan="5" align="center">
                   			등록된 게시물이 없습니다.
                   		</td>
                   	</tr>
                    
              	<%
                }
                else{
                	int virtualNum = 0;
                	for(boardDTO dto : boardLists){
                		virtualNum = totalCount--;
			 	%> 
					<tr>
						<td>
							<div class="info_inner">
								 <%=virtualNum%> 
							</div>
						</td>
						<td>
							<div class="info_inner">
								<a href="View.jsp?num=<%= dto.getNum()%>&boardkind=<%=dto.getBoardkind() %>" onclick="loginalr();"><%=dto.getTitle() %></a>
							</div>
						</td>
						<td>
							<div class="info_inner">
								<%=dto.getId() %>
							</div> 
						</td>
						<td>
							<div class="info_inner">
								<%=dto.getPostdate() %>
							</div> 
						</td>
						<td>
							 <div class="info_inner">
								<%=dto.getVisitcount() %>
							</div> 
						</td>
					</tr>
					<%
                		}
                	}
					%> 
					
					
				</tbody>
			</table>


			<div class="newb_btn_wrap">
				<a href="qna_board.jsp" class="btn_write">목록</a>
				<input type="submit" class="btn_write" value="글쓰기">
			</div>
		</form>


		<div class="faq_page_wrap">
			<a style="pointer-events: none;cursor: default;" class="etc pn-btn-wp type-arr"><span>〈〈</span></a>			
			<a style="pointer-events: none;cursor: default;" class="etc pn-btn-wp type-arr arr-style-prev"><span>〈</span></a>			
			<a class="page-on">1</a>
			<a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>			
			<a style="pointer-events: none;cursor: default;" class="etc pn-btn-wp type-arr arr-style-next"><span>〉</span></a>			
			<a href="" class="pn-btn-wp type-arr"><span>〉〉</span></a>		
			</div>




	</div>

</div>

</div>
<style media="screen">
	.info_inner a{color:#000; display:flex;}
	.info_inner{font-size:16px;}
</style>
	</div>
</div>

</content>
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->

<%@ include file="./inc/footer.jsp" %>
	
	

</div><!-- .document E -->


</body></html>