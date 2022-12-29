<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청담한빛안과</title>
<link rel="stylesheet" media="all" href="./안과_files/animate.css">
<link rel="stylesheet" media="all" href="./안과_files/jquery.bxslider.css">
<link rel="stylesheet" media="all" href="./안과_files/slick.css">
<link rel="stylesheet" media="all" href="./안과_files/aos.css">
<link rel="stylesheet" media="all" href="./안과_files/font-awesome.min.css">
<script src="./안과_files/AceCounter_CW.js.다운로드"></script><script type="text/javascript" src="./안과_files/font-awesome.min.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/jquery-1.9.1.min.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/jquery-1.11.2ui.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/jquery.ui.draggable.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/jquery.bxslider.min.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/slick.min.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/aos.js.다운로드"></script>
<script type="text/javascript" src="./안과_files/TweenMax.js.다운로드"></script>
<!-- PC -->
<script type="text/javascript" src="./안과_files/common.js.다운로드"></script>
  <link rel="stylesheet" type="text/css" href="./안과_files/pc_20221202153625.css">
<link rel="stylesheet" media="all" href="./안과_files/common.css">
<link rel="stylesheet" media="all" href="./안과_files/sub.css">
<link rel="stylesheet" href="./안과_files/roughmapLander.css">
<script src="./안과_files/v3.js.다운로드"></script>
<script charset="utf-8" src="./안과_files/v3.js(1).다운로드"></script>
<script src="./안과_files/v3.js.다운로드"></script>
<script src="./안과_files/v3.js.다운로드"></script>
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
		<h3 class="program_title">청담한빛안과</h3>
<script language="JavaScript" src="./review_files/window.js.다운로드"></script>
<script language="JavaScript" src="./review_files/document.js.다운로드"></script>
<link type="text/css" rel="stylesheet" href="./review_files/hw_css.css">


<div id="staticMap" style="width:100%; height:350px;"></div>    

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 사용하세요"></script>
<script>
// 이미지 지도에서 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.5180582, 127.0446996); 

// 이미지 지도에 표시할 마커입니다
// 이미지 지도에 표시할 마커는 Object 형태입니다
var marker = {
    position: markerPosition
};

var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
    staticMapOption = { 
        center: new kakao.maps.LatLng(37.5180582, 127.0446996), // 이미지 지도의 중심좌표
        level: 3, // 이미지 지도의 확대 레벨
        marker: marker // 이미지 지도에 표시할 마커 
    };    

// 이미지 지도를 생성합니다
var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
</script>





<div data-role="page-container" data-ready-state="complete">
	<div class="uio_box info_box">
		<div class="uio_content">
			<div class="info_section _area" data-convenience-information-cid="pt7raae2">

				<div class="local_area _localArea">
					<dl class="list_info">
						<dt class="item_title"><span class="nicon_pin2"></span>청담한빛안과의원</dt>
						<dd class="item_description local_description">서울특별시 강남구 청담동 43-9
						</dd>
					</dl>
					<dl class="list_info">
						<dt class="item_title"><span class="nicon_pin2"></span>오시는길</dt>
						<dd class="item_description local_description">
							<span class="text">7호선 강남구청역 4번 출구, 청담역 8번 출구에서 도보 3분입니다.<br>
강남구청, 강남세무서 근처 농협하나로마트 건물 2층입니다.</span>
						</dd>
					</dl>
					<dl class="list_info">
						<dt class="item_title"><span class="nicon_time2"></span>이용시간<span class="icon icon_open _open" style=""><em class="blind">영업중</em></span><span class="icon icon_finish _finish" style="display:none"><em class="blind">영업마감</em></span></dt>
						<dd class="item_description">
							<span class="text">
                <span class="sub_title">매일</span>
							<span class="sub_text">
                09:30 ~ 18:30
              </span>
							</span>
							<span class="text sub_description">수요일, 토요일은 13시까지 진료합니다.</span>
							<span class="text">
                <span class="sub_title">매일</span>
							<span class="sub_text">
                13:00 ~ 14:00
              </span>
							</span>
							<span class="text sub_description">점심식사 시간입니다.</span>
						</dd>
					</dl>
					<dl class="list_info _telephoneArea">
						<dt class="item_title"><span class="nicon_call2"></span>전화번호</dt>
						<dd class="item_description">
							<span class="text _telephone" data-telephone="025122955">02-512-2955</span>
							<span class="text _telephone" data-telephone=""></span>
						</dd>
					</dl>

				</div>

				<div class="area_aaccount _accountArea">
					<dl class="list_info">
						<dt class="item_title"><span class="nicon_user2"></span>사업자정보</dt>
						<dd class="item_description">
							<span class="text">
                <span class="sub_title">상호명</span>
							<span class="sub_text">청담한빛안과의원</span>
							</span>
							<span class="text">
                <span class="sub_title">대표자</span>
							<span class="sub_text">박영숙</span>
							</span>
						</dd>
					</dl>

				</div>
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

</body>
</html>