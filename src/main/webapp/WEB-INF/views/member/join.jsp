<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입 화면</title>
	
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>

<div class="container">
	<form class="form-horizontal" method="post" name="memInsForm" id="join_form">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sum-5">
				<h2 align="center">회 원 가 입</h2>
			</div>
		</div>
		<div class="form-group">
			<label for="id" class="col-sm-3 control-label">아이디(필수)</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="id" name="id" maxlength="10" placeholder="아이디 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="col-sm-3 control-label">비밀번호(필수)</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="password" name="password" maxlength="20" placeholder="비밀번호 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="col-sm-3 control-label">비밀번호 확인</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="passwordCk" name="passwordCk" maxlength="20" placeholder="비밀번호 다시 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label">이 름(필수)</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="name" name="name" maxlength="20" placeholder="이름 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label for="email" class="col-sm-3 control-label">이메일(필수)</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="email" name="email" maxlength="50" placeholder="이메일 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label for="mobile" class="col-sm-3 control-label">전화번호(필수)</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="mobile" name="mobile" maxlength="11" placeholder="휴대전화번호 입력"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">우편번호</label>
			<div class="col-sm-6">
				<input type="text"	 class="form-control" name="zipcode" id="zipcode" readonly/>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">주소(필수)</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="address1" id="address1" readonly/>
				<input type="button" class="form-control btn btn-primary" onclick="daumZipCode()" value="우편번호 및 주소찾기"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">상세주소(선택)</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="address2" id="address2"/>
			</div>
		</div>
		
		<!--  <div class="form-group">
			<label for="adress" class="col-sm-3 control-label">주 소</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="address" name="address" maxlength="50" placeholder="주소 입력"/>
			</div>
		</div> -->
		<div class="form-group">
			<label class="col-sm-3 control-label">회원가입 동의</label>
			<div class="col-sm-3">
				<label class="radio-inline">
					<input type="radio" id="registerYn" name="registerYn" value="Y" checked> 동의
				</label>
				<label class="radio-inline">
					<input type="radio" id="registerYn" name="registerYn" value="N"> 동의안함
				</label>
			</div>
		</div>
		<div class="alert alert-info fade in col-sm-offset-1 col-sm-10">
			<strong>[ PerfumeStore의 개인 정보 수집 및 이용 안내]</strong>
			<h5>
			개인 정보 제3자 제공 동의
			<br>① 개인정보를 제공받는 자: PerfumeStore
			<br>② 개인정보를 제공받는 자의 개인 정보 이용 목적 : 영업관리, 
			설문조사 및 프로모션, 이벤트 경품 제공, eDM 발송, 행사 관련 마케팅
			<br>③ 제공하는 개인정보항목 : 이름, 이메일주소, 회사명, 직무/직책, 연락처, 휴대전화
			<br>④ 개인정보를 제공받는 자의 개인 정보 보유 및 이용 기간 :
			개인정보 취급 목적을 달성하여 더 이상 개인정보가 불 필요하게 된 경우이거나
			5년이 지나면 지체 없이 해당 정보를 파기할 것입니다.
			<br>귀하는 위와 같은 PerfumeStore의 개인정보 수집 및 이용정책에 동의하지 
			않을 수 있으나, PerfumeStore으로부터 솔루션, 최신 IT정보, 행사초청안내 등의 
			유용한 정보를 제공받지 못 할 수 있습니다.
			<br> 개인 정보 보호에 대한 자세한 내용은 http://www.PerfumeStore.com 을 참조바랍니다.
			</h5>
			<div class="checkbox" align="center">
				<label>
					<input type="checkbox" id="is_subscribed" name="is_subscribed" value="o"/>
				</label> PerfumeStore의 개인정보 수집 및 이용에 동의합니다.
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-8">
				<button type="reset"  class="btn btn-warning btn-lg">다시입력</button>
				<button type="submit" class="btn btn-primary btn-lg">회원가입</button>
			</div>
		</div>
	
	
	</form>
	
</div>
<script>

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".btn btn-primary").click(function(){
		$("#join_form").attr("action", "/member/join");
		$("#join_form").submit();
	});
});

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
var themeObj = {
		   //bgColor: "#5599FF", //바탕 배경색
		   searchBgColor: "#6699DD", //검색창 배경색
		   //contentBgColor: "", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
		   //pageBgColor: "", //페이지 배경색
		   //textColor: "#FFFFFF", //기본 글자색
		   queryTextColor: "#FFFFFF", //검색창 글자색
		   //postcodeTextColor: "", //우편번호 글자색
		   //emphTextColor: "", //강조 글자색
		   //outlineColor: "" //테두리
		};

function daumZipCode() {
	new daum.Postcode({
		theme: themeObj,
		oncomplete: function(data) {
			// 팝업 창에서 검색한 결과 중 항목을 클릭하였을 경우에 실행할 코드를 이곳에 작성한다.
			
			// 각 주소의 노출규칙에 따라서 주소를 조합한다.
			// 내려오는 변수의 값이 없을 경우에는 공백('') 값을 가지므로, 이름을 참조하여 분기한다.
			var fullAddress	= '';	// 최종   주소 변수
			var	subAddress	= '';	// 조합형 주소 변수
			
			// 사용자가 선택한 주소의 타입에 따라서 해당 주소 값을 가져온다.
			if(data.userSelectedType == 'R') {	// 도로명 주소를 선택한 경우
				fullAddress	= data.roadAddress;
			} else {	// 지번 주소를 선택한 경우
				fullAddress = data.jibunAddress;
			}
			
			// 사용자가 선택한 주소가 도로명 타입일 때 주소를 조합한다.
			if(data.userSelectedType == 'R') {
				// 법정동명이 있을 경우 추가한다.
				if(data.bname != '') {
					subAddress += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if(data.buildingName != '') {
					subAddress += (subAddress != '' ? ', ' + data.buildingName : buildingName);
				}
			}
			
			// 조합형 주소의 유무에 따라서 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			fullAddress += (subAddress != '' ? '(' + subAddress + ')' : '');
			
			// 우편번호와 주소 정보를 해당 필드에 출력시킨다.
			document.getElementById('zipcode').value	= data.zonecode;	// 우편번호
			document.getElementById('address1').value	= fullAddress;		// 주소내용
			
			// 커서를 상세주소 입력 필드에 나타나게 한다.
			document.getElementById('address2').focus();
		}
	    //theme: {
	    //    searchBgColor: "#0B65C8", //검색창 배경색
	    //    queryTextColor: "#FFFFFF" //검색창 글자색
	    //}
	// }).open();	// open()만 기술을 하면 팝업 창이 여러 개 나타나게 된다.
	}).open({
		// 우편번호 팝업 창이 여러 개 뜨는 것을 방지하기 위해 popupName을 사용한다.
		popupName:	'postcodePopup'
	});
}
</script>
</body>
</html>
