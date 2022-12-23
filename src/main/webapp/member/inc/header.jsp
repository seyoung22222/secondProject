<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>

<style type="text/css">
.top_logo_header_wrap{position:fixed;width:100%;height:103px;background:rgba(255,255,255,0.7);top:0px;left:0;z-index:9999;}
.top_logo_header{position:relative;width:1700px;margin:0 auto;box-sizing:border-box;text-align:center;display:flex;}
.top_logo_header > h1{padding-top:36px;}
/* 로고 가운데 정렬시 h1에 클래스 입력*/
.left_v{text-align:left;}
.top_icon_wrap{position:absolute;top:45px;right:0;}
.top_icon_wrap > ul:after{content:"";display:block;clear:both;}
.top_icon_wrap > ul > li{float:left;margin-left:10px;}
.top_icon_wrap > ul > li:first-child{margin-left:0;}
.top_icon_wrap > ul > li > a{text-decoration:none;color:#8d8d8d;font-size:12px;display:flex;}
.top_icon_wrap > ul > li > a > img{margin-right:10px;}
.ni_lang_wrap{position:relative;z-index:1;}
.ni_lang_wrap > a{margin-bottom:10px;}
.ni_lang{display:none;}
.ni_lang > a{background:rgba(0,0,0,0.6);display:block;color:#fff;padding:5px;font-size:12px;}
.ni_lang > a > img{display:block;width:28px;margin:0 auto;padding-bottom:3px;}
</style>


<div class="top_logo_header_wrap">
	<div class="top_logo_header">
	<h1><b></b><a href="./main.jsp" style="font-size:25px;">청담한빛안과</a></b></h1>
<script type="text/javascript">
$(document).ready(function(){
	$('.gnb > .dep1').on('mouseenter', function(){
		$(this).addClass('on').siblings().removeClass('on');
	});
	$('.gnb').on('mouseleave', function(){
		$('.dep1').removeClass('on');
		$('.dep2 > li').removeClass('on');
	});
	var d2Height = $('.dep2_wrap').outerHeight() + 10;
});
</script>

<style type="text/css">
.sec_menu2_wrap{width:100%;max-width:1000px;position: absolute;top:22px;left:-333px;right:0;z-index:99;margin:0 auto;}
.dep1_line{position:absolute;bottom:0;border-color:transparent transparent #ccc transparent;border-width:8px;border-style:solid;opacity:0;}
.gnb{width:1000px;margin:0 auto;text-align:center;font-size:0;}
.gnb > li{display:inline-block;position:relative;height:64px;box-sizing:border-box;padding:0 19px;}

.gnb > li > a{font-size:16px;color:#8d8d8d;display:block;line-height:64px;text-align:center;position:relative;}
.gnb > li > a:hover{color:#b59978;}

.gnb > li > a:hover:after{position:absolute; content:''; display:block; width:100%; height:1px;background:#b59978;left:0; bottom:15px;}
/* .gnb > li:first-child > a{padding-left:0;}
.gnb > li:last-child > a{padding-right:0;} */
.dep1.on .dep2_wrap{opacity:1;transform: matrix(1, 0, 0, 1, 0, 0);visibility: visible}.top_logo_header
.dep2_wrap{position:absolute;transition:all .3s;transform: matrix(1, 0, 0, 1, 0, 20);visibility: hidden;z-index:10;background:#fff;opacity:0;border:solid 1px #ccc;width:200px;left:50%;margin-left:-100px;box-sizing:border-box;text-align:left;padding:20px 0 20px 40px}
.dep2_wrap:before{position:absolute;content:'';display:inline-block;border-color:transparent transparent #ccc transparent;border-width:8px;border-style:solid;top:-16px;left:50%;margin-left:-4px}
.dep2_wrap:after{clear:both;display:block;content:''}
.dep2_wrap > h3{position:relative;display:inline-block; font_size:}
.dep2_wrap > h3 > a{font-size:21px;color:#000}
.dep2_wrap > h3:after{display:inline-block;content:'';width:40%;height:2px;background:#b59978;margin:5px 0 15px}
.dep2{position:relative}
.dep2 > li{margin-bottom:8px}
.dep2 > li:last-child{margin-bottom:0}
.dep2 > li > a{color:#000;font-size:15px;position:relative;padding-bottom:3px;transition:all .2s;display:inline-block}
.dep2 > li.on > a:after{width:100%}
.dep2 > li > a:after{content:'';position:absolute;height:2px;width:0;bottom:0;left:0;background:#b59978;transition:all .2s}
.dep2 > li > a:hover:after{width:100%;}
.area_gnb{position:relative;}
</style>

<div class="sec_menu2_wrap">
	<nav>
		<div class="area_gnb">
			<ul class="gnb">
				<li class="dep1">
					<a href="">청담한빛안과</a>
					<div class="dep2_wrap">
						<h3><a href="">청담한빛안과</a></h3>
						<ul class="dep2">
							<li><a href="">청담한빛안과</a></li>
							<li><a href="">의료진소개</a></li>
							<li><a href="">병원둘러보기</a></li>
							<li><a href="">진료시간</a></li>
						</ul>
					</div>
				</li>
				<li class="dep1">
					<a href="">백내장수술</a>
					<div class="dep2_wrap">
					<h3><a href="">백내장수술</a></h3>
					</div>
				</li>
				<li class="dep1">
					<a href="">망막질환</a>
					<div class="dep2_wrap">
						
						<h3><a href="">망막질환</a></h3>
						<ul class="dep2">
							<li><a href="">황반변성</a></li>
							<li><a href="">당뇨망막병증</a></li>
							<li><a href="">망막혈관페쇄</a></li>
						</ul>
					</div>
				</li>
				<li class="dep1">
					<a href="">눈 종합검진</a>
					<div class="dep2_wrap">
						
						<h3><a href="">눈 종합검진</a></h3>
						<ul class="dep2">
							<li><a href="">녹내장 | 녹내장 검진</a></li>
							<li><a href="">비문증</a></li>
						</ul>
					</div>
				</li>
				<li class="dep1">
					<a href="">맞춤진료</a>
					<div class="dep2_wrap">
						
						<h3><a href="">맞춤진료</a></h3>
						<ul class="dep2">
							<li><a href="">소아안과</a></li>
							<li><a href="">약시치료</a></li>
							<li><a href="">근시 억제 프로그램</a></li>
						</ul>
					</div>
				</li>
				<li class="dep1">
					<a href="">시력 교정 클리닉</a>
					<div class="dep2_wrap">
						
						<h3><a href="">시력 교정</a></h3>
						<ul class="dep2">
							<li><a href="">IPL치료</a></li>
							<li><a href="">눈물점 플러그 시술</a></li>
						</ul>
					</div>
				</li>
				<li class="dep1">
					<a href="./qna_board2.jsp">게시판</a>
					<div class="dep2_wrap">
						
						<h3><a href="./qna_board2.jsp">게시판</a></h3>
						<ul class="dep2">
							<li><a href="./qna_board2.jsp">자주하는 질문/질문방</a></li>
							<li><a href="./review_board.jsp">진료후기</a></li>
							<li><a href="./notice_board.jsp">공지사항</a></li>
						</ul>
					</div>
				</li>
				
			</ul>
		</div>
	</nav>
</div>
<div class="top_icon_wrap">
			<ul>
				<% if(session.getAttribute("UserId")== null) { %>
					<li>
						<a href="./login.jsp">
							로그인 &nbsp;&nbsp;|
						</a>
					</li>
					<li>
						<a href="./signup.jsp">
							회원가입
						</a>
					</li>
				<% } else { %>
					<li>
						♥ 반갑습니다. <%=session.getAttribute("UserName") %>님 ♥
					</li>
					<li>
						<a href="./logoutProcess.jsp">
							로그아웃
						</a>
					</li>
				<% } %>
			</ul>
		</div>
	</div>
</div>
</header>