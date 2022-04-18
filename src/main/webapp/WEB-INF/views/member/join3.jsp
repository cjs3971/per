<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib	prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>회원 가입</title>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>



</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h2 align ="center" class="mb-3">회 원 가 입</h2>
        <form class="validation-form" id="join_form" novalidate>
          <div class="row">
            <div class="mb-3">
              <label for="id">ID</label>
              <input type="text" class="form-control"  name="user_Id" placeholder="사용할 ID를 입력해주세요" value="" required>
              <div class="invalid-feedback"> 
              </div>
            </div>
            <div class="mb-3">
              <label for="pw">비밀번호</label>
              <input type="password" class="form-control" id="pw" name="password" placeholder="패스워드를 입력해주세요" value="" required>
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="mb-3">
              <label for="pw">비밀번호 재확인</label>
              <input type="password" class="form-control" id="repw" name="passwordCk" placeholder="패스워드를 입력해주세요" value="" required>
              <div class="invalid-feedback">
               비밀번호를 입력해주세요
              </div>
            </div>
            <div class="mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control"  name="name" placeholder="이름을 입력해주세요" value="" required>
              <div class="invalid-feedback"> 
              </div>
            </div>
          
          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="email">전화번호</label>
            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="" required>
            <div class="invalid-feedback">
              전화번호를 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="address">우편번호</label>
            <input type="text" class="form-control" id="address1" name="address" required>
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address" name="address2" required>
            <div class="invalid-feedback">
            
            </div>
          </div>
			 <button type ="button" class="btn btn-primary btn-sm btn-block" type="submit">주소찾기</button>
          <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="address3" name="address3" placeholder="상세주소를 입력해주세요.">
          </div>
		 
          <div class="row">
          
          
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
      </div>
    </div>
   
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
  
  <script>
  $(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		$("#join_form").attr("action", "/member/join");
		$("#join_form").submit();
	});
 });
 </script>
 
</body>
</html>