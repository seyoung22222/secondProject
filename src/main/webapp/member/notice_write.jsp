<%@page import="common.JSFunction"%>
<%@page import="board.boardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("UserId")==null){
	JSFunction.alertLocation("로그인 후 이용가능합니다.",
							"./login.jsp",out);
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>청담한빛안과</title>
<link rel="stylesheet" media="all" href="./review_files/animate.css">
<link rel="stylesheet" media="all" href="./review_files/jquery.bxslider.css">
<link rel="stylesheet" media="all" href="./review_files/slick.css">
<link rel="stylesheet" media="all" href="./review_files/aos.css">
<link rel="stylesheet" media="all" href="./review_files/font-awesome.min.css">
<script src="./review_files/AceCounter_CW.js.다운로드"></script>
<script type="text/javascript" src="./review_files/font-awesome.min.js.다운로드"></script>
<script type="text/javascript" src="./review_files/jquery-1.9.1.min.js.다운로드"></script>
<script type="text/javascript" src="./review_files/jquery-1.11.2ui.js.다운로드"></script>
<script type="text/javascript" src="./review_files/jquery.ui.draggable.js.다운로드"></script>
<script type="text/javascript" src="./review_files/jquery.bxslider.min.js.다운로드"></script>
<script type="text/javascript" src="./review_files/slick.min.js.다운로드"></script>
<script type="text/javascript" src="./review_files/aos.js.다운로드"></script>
<script type="text/javascript" src="./review_files/TweenMax.js.다운로드"></script>
<!-- PC -->
<script type="text/javascript" src="./review_files/common.js.다운로드"></script>
<link rel="stylesheet" media="all" href="./review_files/common.css">
<link rel="stylesheet" media="all" href="./review_files/sub.css">
<!-- AceCounter Log Gathering Script V.8.0.AMZ2019080601 -->
<link rel="stylesheet" href="./review_files/roughmapLander.css">
<script src="./review_files/v3.js.다운로드"></script>
<script charset="utf-8" src="./review_files/v3.js(1).다운로드"></script>
<script src="./review_files/v3.js.다운로드"></script>
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
		<h3 class="program_title">공지사항 - 글쓰기</h3>
<script language="JavaScript" src="./review_files/window.js.다운로드"></script>
<script language="JavaScript" src="./review_files/document.js.다운로드"></script>
<link type="text/css" rel="stylesheet" href="./review_files/hw_css.css">


<div class="newb_wrap">
<style>
td{ top-padding: 2px;}
</style>

	<div class="newb_list_wrap">
		<form action="./writeProcess.jsp" method="post" name="checkform">
		 <input type="hidden" name="boardkind" value="notice">
			<table border="0" cellpadding="0" cellspacing="0" class="newb_table1">
				<colgroup>
					<col width="15%">
					<col width="40%">
				</colgroup>
				<tbody style="font-size:16px;">
				<br>
					<tr>
						<th class="text-center" 
                            style="vertical-align:middle;">작성자</th>
						<td>
                            <input type="text" class="form-control"
                                style="width:100px;" readOnly 
                                value = "<%=session.getAttribute("UserId").toString()%>" />
                        </td>
					</tr>
					<tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">제목</th>
                        <td>
                            <input type="text" class="form-control" name="title">
                        </td>
                    </tr>
					<tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">내용</th>
                        <td>
                            <textarea row="5" class="form-control" name="content"></textarea>
                        </td>
                    </tr>
					<tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">첨부파일</th>
                        <td>
                            <input type="file" class="form-control" name="ofile"/>
                        </td>
                    </tr>
					
				</tbody>
			</table>

<style>
.btn_write{
	cursor: pointer;
    display: inline-block;
    padding: 9px 18px;
    font-size: 13px;
    text-align: center;
    color: #fff;
    background-color: #747474;
    box-sizing: border-box;
    border-radius: 5px;
    border: 0;
    margin-top: -4px;
 }
</style>
			<div class="newb_btn_wrap">
				<button type="button" class="btn_write"
                        onclick="location.href='review_board.jsp'">목록</button>
	            <button type="submit" class="btn_write">작성완료</button>
	            <button type="reset" class="btn_write">리셋</button>
			</div>
		</form>

		<div class="newb_page_wrap">
			<a style="pointer-events: none;cursor: default;" class="etc pn-btn-wp type-arr"><span>〈〈</span></a>			
			<a style="pointer-events: none;cursor: default;" class="etc pn-btn-wp type-arr arr-style-prev"><span>〈</span></a>			
			<a class="page-on">1</a><a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>
			<a href="">5</a>
			<a href="" class="pn-btn-wp type-arr arr-style-next"><span>〉</span></a>			
			<a href="" class="pn-btn-wp type-arr"><span>〉〉</span></a>		
		</div>

	</div>

</div>


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