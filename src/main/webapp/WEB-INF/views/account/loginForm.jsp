<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Find your own drink, Barny</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon-->
    <link rel="icon" href="/static/login/images.icona/barny.png" type="image/x-icon" sizes="16x16">
    <!--bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous"></script>

    <!--Jquery-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/main.css">
</head>
<body id="page-top" class="text-center" >


<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
     id="mainNav_2">
    <div class="container">
        <a class="navbar-brand" href="/main"><img
                src="/static/main_page/assets/img/logo.png" alt="바니 로고 1"/></a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="/subscribe">구독</a></li>
                <li class="nav-item"><a class="nav-link" href="/story">브랜드
                    스토리</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 상품 보기 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/product_main">패키지</a></li>
                        <li><a class="dropdown-item" href="/product_main_liquor">술</a></li>
                        <li><a class="dropdown-item" href="/product_main_food">안주</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="/event">이벤트</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/notice">공지사항</a></li>
                        <li><a class="dropdown-item" href="/notice/faq">자주 묻는 질문</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER')">
                    <li class="nav-item"><a class="nav-link" href="/board/my_page">마이페이지</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                    <li class="nav-item"><a class="nav-link" href="/admin/statistics">관리페이지</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER')">
                    <li class="nav-item"><a class="nav-link" href="/user/cart5">장바구니</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>


<!--Login Form-->
<div class="limiter" >
    <div class="container-login100">
        <div class="wrap-login100 p-t-50 p-b-90">
            <form class="login100-form validate-form flex-sb flex-w" action="/login" method="POST">

					<span class="login100-form-title p-b-40">
						로그인
					</span>
               <span class="login100-form p-b-35"><c:if test="${param.error != null}" >
                  <p>아이디와 비밀번호가 잘못되었습니다.</p>
               </c:if></span>
                <div class="wrap-input100 validate-input m-b-16" data-validate="아이디를 입력해주세요.">
                    <input class="input100" type="text" id="username" name="username" placeholder="아이디를 입력해주세요">
                    <span class="focus-input100"></span>
                </div>


                <div class="wrap-input100 validate-input m-b-16" data-validate="비밀번호를 입력해주세요.">
                    <input class="input100" type="password" name="password" placeholder="비밀번호를 입력해주세요">
                    <span class="focus-input100"></span>
                </div>

                <div class="flex-sb-m w-full p-t-3 p-b-24">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            아이디 저장
                        </label>
                    </div>

                    <div>
                        <a href="/findId">
                            아이디 찾기 ⎮
                        </a>
                        <a href="/findPw">
                            비밀번호 찾기
                        </a>
                    </div>
                </div>

                <div class="container-login100-form-btn m-t-17">
                    <button class="login100-form-btn">
                        로그인
                    </button>
                </div>
                <div class="container-login100-form-btn m-t-17">
                  <button class="other_login100-form-btn"button type="button" onclick="location.href='/oauth2/authorization/kakao'">
                        KAKAO로 로그인
                    </button>
                </div>
                <div class="container-login100-form-btn m-t-17">
                    <button class="other_login100-form-btn"  type="button" onclick="location.href='/oauth2/authorization/naver'">
                        NAVER로 로그인
                    </button>
                </div>


            </form>
            <hr>
            <a href ="/joinForm">회원가입을 아직 하지 않으셨나요?</a>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!-- Footer-->
<footer class="footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start"><b>주식회사 바니</b> <br> 서울특별시 종로구 종로 69 YMCA빌딩 7층
                <br>Copyright &copy; Barny Inc. All rights reserved. </div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="link-dark text-decoration-none me-3" href="#!">개인정보처리방침</a>
                <a class="link-dark text-decoration-none" href="#!">이용약관</a>
            </div>
        </div>
    </div>
</footer>

<!--JS-->
<script src="/static/login/js/main.js"></script>
<script src="/static/login/vendor/animsition/js/animsition.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="/static/login/vendor/select2/select2.min.js"></script>
<script src="/static/login/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/login/vendor/daterangepicker/daterangepicker.js"></script>
<script src="/static/login/vendor/countdowntime/countdowntime.js"></script>

</body>
</html>