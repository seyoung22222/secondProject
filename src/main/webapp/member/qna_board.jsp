<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h3 class="program_title">자주하는 질문</h3>

<script language="JavaScript" src="./qna_files/window.js.다운로드"></script>
<script language="JavaScript" src="./qna_files/document.js.다운로드"></script>
<link type="text/css" rel="stylesheet" href="./qna_files/hw_css.css">
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





<div class="faq_wrap">

	<div class="faq_search_wrap">
				<div class="faq_search">
			<form name="sform" action="" method="post" id="sform">
				<input type="hidden" name="group" value="basic">
				<input type="hidden" name="code" value="counsel01">
				<input type="hidden" name="category" value="">
				<input type="hidden" name="abmode" value="list">
				<input type="hidden" name="bsort" value="">
				<input type="hidden" name="bfsort" value="">
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
			<li class="co"><a href="">자주하는 질문</a></li>
			<li><a href="">질문방</a></li>
		</ul>
	</div>

	<div class="faq_list_wrap">
		<form action="" method="post" name="checkform" style="margin:0">
			<input type="hidden" name="group" value="basic">
			<input type="hidden" name="code" value="counsel01">
			<input type="hidden" name="category" value="">
			<input type="hidden" name="sno" value="">
			<input type="hidden" name="abmode" value="">
			<input type="hidden" name="field" value="">
			<input type="hidden" name="search" value="">
			<input type="hidden" name="checkvalue" value="">
			<input type="hidden" name="sel" value="">
			
			<%@ include file="./qna_files/qna_content.jsp" %>
	
			<div class="faq_btn_wrap">
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

<script type="text/javascript">
$(document).ready(function(){
	$('.faq_list > .q_wrap').click(function(){
		//$('.faq_list > dt').removeClass('on').next().slideUp(500,'easeOutExpo');
		$(this).next().slideToggle(500,'easeOutExpo');
	});
});
</script>	
</div>


</content>
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->

<%@ include file="./inc/footer.jsp" %>
	
	

</div><!-- .document E -->


</body></html>