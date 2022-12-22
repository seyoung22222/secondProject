<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청담한빛안과</title>
<link rel="stylesheet" media="all" href="./회원가입_files_files/animate.css">
<link rel="stylesheet" media="all" href="./회원가입_files_files/jquery.bxslider.css">
<link rel="stylesheet" media="all" href="./회원가입_files_files/slick.css">
<link rel="stylesheet" media="all" href="./회원가입_files_files/aos.css">
<link rel="stylesheet" media="all" href="./회원가입_files_files/font-awesome.min.css">
<script src="./회원가입_files_files/AceCounter_CW.js.다운로드"></script><script type="text/javascript" src="./회원가입_files_files/font-awesome.min.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/jquery-1.9.1.min.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/jquery-1.11.2ui.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/jquery.ui.draggable.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/jquery.bxslider.min.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/slick.min.js.다운로드"></script>
<script type="text/javascript" src="./회원가입_files_files/aos.js.다운로드"></script>
<!-- <script type="text/javascript" src="/js/typed.js"></script> -->
<script type="text/javascript" src="./회원가입_files_files/TweenMax.js.다운로드"></script>
<!-- PC -->
<script type="text/javascript" src="./회원가입_files_files/common.js.다운로드"></script>
<link rel="stylesheet" media="all" href="./회원가입_files_files/common.css">
<link rel="stylesheet" media="all" href="./회원가입_files_files/sub.css">

<body>
<div id="document">

<%@ include file="./inc/header.jsp" %>

<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------->
<content>




<div class="sub_container_wrap">
	<div class="sub_program_wrap">
		<h3 class="program_title">회원가입</h3>
<script language="JavaScript" src="./회원가입_files_files/window.js.다운로드"></script>
<script language="JavaScript" src="./회원가입_files_files/document.js.다운로드"></script>
<script language="JavaScript" src="./회원가입_files_files/cookie.js.다운로드"></script>
<link href="./회원가입_files_files/hw_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./회원가입_files_files/id_ajax.js.다운로드"></script>

		<div class="member_login_wrap">
			<form name="mform" method="post" enctype="multipart/form-data" 
				action="http://www.ssgeye.com/member/join.php" onsubmit="return formcheck(this)">
				<input type="hidden" name="adminretuen_url" value="/member/join.php">
				<input type="hidden" name="adminreturn_value" value="group=basic|m1=|m2=join">
				<input type="hidden" name="group" value="basic">
				<input type="hidden" name="asumode" value="">
				<input type="hidden" name="asmmode" value="join">
		
				<input type="hidden" name="m1" value="">
				<input type="hidden" name="m2" value="">
		
				<input type="hidden" name="retuen_url" value="/member/join.php">
				<input type="hidden" name="return_value" value="">
				<input type="hidden" name="ammode" value="joindb">
				<input type="hidden" name="no" value="">
				<input type="hidden" name="area" value="">
		
				<input type="hidden" name="idcheck" value="0">
				<input type="hidden" name="nicnamecheck" value="0">
				<input type="hidden" name="checkvalue" value="">
				<input type="hidden" name="join_type" value="id">
		
				<div class="member_login_title">
					<h3>홈페이지 방문을 환영합니다.</h3>
					<p>회원가입하신 후 다양한 컨텐츠와 웹서비스를 이용해 보세요. </p>
				</div>
		
				<div class="join_register_wrap">
		
					<table class="join_table">
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 이름</th>
								<td>
									<input type="text" id="name" name="name" maxlength="20" class="join_text join_name" value="">
								</td>
							</tr>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 아이디</th>
								<td>
									<input type="text" name="id" maxlength="20" class="join_text join_id" value="" id="chk_id">
									<span id="id_chk_msg"></span>
								</td>
							</tr>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 비밀번호</th>
								<td>
									<input type="password" id="pw" name="pw" class="join_text join_passwd">
									<span class="input_explain">8~16자 영문, 숫자, 특수문자를 사용하세요.</span>
								</td>
							</tr>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 비밀번호 확인</th>
								<td>
									<input type="password" id="pw2" name="pw2" class="join_text join_passwd" onkeyup="passwordCheckk()">
									<span id="pw_chk_msg"></span>
								</td>
							</tr>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 이메일</th>
								<td>
									<input type="text" id="chk_email" name="email" maxlength="30" class="join_text join_email" value="">
									@
									<select class="join_text join_email " id="chk_email2" name="emailaddr">
										<option value="naver">naver.com</option>
										<option value="daum">daum.net</option>
										<option value="nate">nate.com</option>
										<option value="google">google</option>
									</select>
									<span class="input_explain">
										<label for="join_email_chk">
											<input type="checkbox" name="infomail" value="1" id="join_email_chk" class="join_email_chk" checked="">
											이메일수신
										</label>
										Ex) abcde@abcd.com
									</span>
									<span id="email_chk_msg"></span>
								</td>
							</tr>
							<tr>
								<th><span>(　<strong>*</strong>)</span> 연락처</th>
								<td>
									<select class="join_sel_type sel_type3" id="htel1" name="htel1">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
									-
									<input type="text" id="htel2" name="htel2" maxlength="4" class="join_text join_hp_sec" value="">
									-
									<input type="text" id="htel3" name="htel3" maxlength="4" class="join_text join_hp_sec" value="">
									<span class="input_explain">
										<label for="join_sms_chk">
											<input type="checkbox" name="infosms" value="1" id="join_sms_chk" class="join_sms_chk" checked="">
											문자수신
										</label>
									</span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="join_btn_wrap">
									<input type="submit" value="가입하기">
									<a href="javascript:history.back()"><span>이전단계</span></a>
									</div>
								</td>
							</tr>
		
						</tbody>
					</table>
		
				</div>
		
			</form>
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