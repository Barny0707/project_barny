<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<sec:authentication property="principal" var="principal"/>

<html lang="ko">
<head>
    <title>Find your own drink, Barny</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <!-- Favicon-->
    <link rel="icon" href="/static/login/images.icona/barny.png" type="image/x-icon" sizes="16x16">

    <!--bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!--jQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>

    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">

    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="/static/main_page/css/styles.css"/>
    <link rel="stylesheet" href="/static/my_page/css/my_page.css"/>
    <link rel="stylesheet" href="/static/table/css/style.css"/>


    <link rel="stylesheet" type="text/css" href="/static/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/static/login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/static/login/css/main.css">

    <!--  <style> body {
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
      } </style>
  -->

</head>
<body>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
     id="mainNav_2">
    <div class="container">
        <a class="navbar-brand" href="/main"><img
                src="/static/main_page/assets/img/logo.png" alt="?????? ?????? 1"/></a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="/subscribe">??????</a></li>
                <li class="nav-item"><a class="nav-link" href="/story">?????????
                    ?????????</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> ?????? ?????? </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/product_main">?????????</a></li>
                        <li><a class="dropdown-item" href="/product_main_liquor">???</a></li>
                        <li><a class="dropdown-item" href="/product_main_food">??????</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="/event">?????????</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> ???????????? </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/notice">????????????</a></li>
                        <li><a class="dropdown-item" href="/notice/faq">?????? ?????? ??????</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a class="nav-link" href="/loginForm">?????????</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER')">
                    <li class="nav-item"><a class="nav-link" href="/board/my_page">???????????????</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                    <li class="nav-item"><a class="nav-link" href="/statistics">???????????????</a></li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER')">
                    <li class="nav-item"><a class="nav-link" href="/user/cart5">????????????</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/logout">????????????</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>

<!--content-->
<div class="container" style="padding-top: 2rem;">
    <div class="row">
        <div class="col-3" style="padding: 7rem 0;">
            <div class="list-group side-nav">
                <a style="font-family: NanumSquare;" href="/board/press" class="list-group-item list-group-item-action">??????
                    ??????</a>
                <a style="font-family: NanumSquare;" href="/board/purchase_list"
                   class="list-group-item list-group-item-action">?????? ??????</a>
                <a style="font-family: NanumSquare;" href="/board/my_view"
                   class="list-group-item list-group-item-action">?????? ??????</a>
                <a style="font-family: NanumSquare;" href="/board/my_review"
                   class="list-group-item list-group-item-action">??????</a>
                <a style="font-family: NanumSquare;" href="/board/point" class="list-group-item list-group-item-action">?????????</a>
                <a style="font-family: NanumSquare;" href="/user/edit"
                   class="list-group-item list-group-item-action active" aria-current="true">
                    ?????? ?????? ??????</a>
            </div>
        </div>
        <div class="col-9" style="width: 70%; padding: 7rem 0;">
            <h3 class="board_name">??????????????????
            </h3>
            <div style="border-bottom:solid 2px; border-color:#EBC24B;"></div>
            <div>
                <table class="table custom-table" style="min-width: 500px;">
                    <thead style="border-bottom: solid 1px;">
                    <tr>

                        <!--updateForm-->
                        <form:form name="frmMember" modelAttribute="memberVO" action="/updateUser" method="POST">
                        <div class="container pt-5" style="width: 60%">
                            <div class="input-form-backgroud row">
                                <div class="input-form col-md-12 mx-auto"></div>
                            </div>
                        </div>
                        <form class="validation-form" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="wrap-input100 validate-input m-b-16"
                                         style="background-color: transparent;">
                                        <label for="member_id">?????????</label>
                                        <input class="form-control" type="text" id="member_id" name="member_id" readonly
                                               value="<sec:authentication property="principal.memberVO.member_id"/>"
                                               placeholder="6~12??? ????????? ??????,?????? ?????? "
                                               minlength="6" maxlength="12">
                                        <form:errors path="member_id"/>

                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <div class="wrap-input100 validate-input m-b-16"
                                         style="background-color: transparent;">
                                        <label for="member_name">??????</label>
                                        <input class="form-control" type="text" id="member_name" name="member_name"
                                               disabled
                                               value="<sec:authentication property="principal.memberVO.member_name"/>"
                                               placeholder="??????">
                                        <form:errors path="member_name"/>

                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <div class="wrap-input100 validate-input m-b-16"
                                         style="background-color: transparent;">
                                        <label for="pw">????????????</label>
                                        <input class="form-control" type="password" id="pw" name="pw"
                                               placeholder="8???~20??? ????????? ??????,??????,???????????? ??????" required>
                                        <form:errors path="pw"/>
                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <div class="wrap-input100 validate-input m-b-16"
                                         style="background-color: transparent;">
                                        <label for="nickname">?????????</label>
                                        <input class="form-control" type="text" id="nickname" name="nickname"
                                               value="<%-- <sec:authentication property="principal.memberVO.nickname"/> --%>"
                                               placeholder="?????????" required>
                                        <form:errors path="nickname"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-8 mb-3 ">
                                    <div class="wrap-input100 validate-input m-b-16"
                                         style="background-color: transparent;">
                                        <label for="email">?????????</label>
                                        <input type="email"
                                               placeholder="E-Mail" name="email" id="email" disabled
                                               value="<sec:authentication property="principal.memberVO.email"/>"
                                               class="form-control">
                                        <form:errors path="email" cssStyle="color: #e80f25"/>

                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <label for="postcode">??????</label>
                                <div class="col-md-8 mb-3">
                                    <input type="text" class="form-control" id="postcode" name="address"
                                           placeholder="????????????" required>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <input type="button" class="btn btn-outline-primary btn-s"
                                           onclick="execDaumPostcode()"
                                           value="???????????? ??????" required><br>
                                </div>
                                <div class="col-md-8 mb-3">
                                    <input type="text" class="form-control" id="roadAddress"
                                           value="${memberVO.address}"
                                           name="address"
                                           placeholder="??????????????? " required>
                                    <div class="invalid-feedback">
                                        ????????? ??????????????????.
                                    </div>
                                </div>

                                <div class="col-md-8 mb-3 ">
                                    <input type="text" class="form-control" id="detailAddress"
                                           value="${memberVO.address}"
                                           name="address"
                                           placeholder="????????????" required>
                                    <div class="invalid-feedback">
                                        ????????? ??????????????????.
                                    </div>

                                    <input type="hidden" id="jibunAddress" placeholder="????????????"></br>
                                    <span id="guide" style="color:#6A6666;display:none"></span>
                                    <input type="hidden" id="extraAddress" placeholder="????????????">
                                </div>
                            </div>
            </div>
        </div>


        <div class="col-md-8 mb-3" style="padding-left: 1px;">
            <label for="tel">????????????</label>
            <input type="tel" class="form-control"
                   value="<sec:authentication property="principal.memberVO.tel"/>"
                   placeholder="010-0000-0000"
                   id="tel" name="tel" required>
            <div class="invalid-feedback"> ??????????????? ??????????????????.</div>
        </div>

        <div class="col-md-4 mb-3" style="padding-left: 1px;">
            <label for="date_of_birth">????????????</label>
            <input type="date"
                   class="form-control" disabled
                   value="<sec:authentication property="principal.memberVO.date_of_birth"/>"
                   id="date_of_birth"
                   name="date_of_birth"
                   placeholder=""
            >
            <div class="invalid-feedback"> ??????????????? ??????????????????.</div>
        </div>
    <div class="mt-5" style="border-bottom:solid 2px; border-color:#EBC24B;"></div>
        <%--                     </form> --%>

    <div class="my-3" style="text-align: right;">
        <button class="btn btn-primary btn-lg btn-block edit-btn" type="submit">??????</button>
        <div class="mt-2">
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/user/delete'"
                    class="btn btn-primary btn-lg btn-block edit-btn">??????
            </button>
        </div>
        </form>
        </form:form>
    </table>
    </div>
    </div>
    </div>
</div>
</div>

<!-- Footer-->
<footer class="footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start"><b>???????????? ??????</b> <br> ??????????????? ????????? ?????? 69 YMCA?????? 7???
                <br>Copyright &copy; Barny Inc. All rights reserved.
            </div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="link-dark text-decoration-none me-3" href="#!">????????????????????????</a>
                <a class="link-dark text-decoration-none" href="#!">????????????</a>
            </div>
        </div>
    </div>
</footer>


<!--top-button-->
<img id="myBtn" src="/static/main_page/assets/top-btn.png" onclick="topFunction()">


<!--kakao-chat-->
<a href="javascript:void kakaoChatStart()" class="kakaoChatPc hidden-md hidden-sm hidden-xs" id="kakao-chat">
    <img src="/static/main_page/assets/kakao-chat.png" width="50px" height="50px">
</a>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
    Kakao.init('7e53e24ce9a07956bfb5ac4930333caa');

    function kakaoChatStart() {
        Kakao.Channel.chat({
            channelPublicId: '_WDxjSs'
        });
    }
</script>
<!-- Bootstrap core JS-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


<!???JS->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
<script src="/static/join_page/js/join.js"></script>
<script src="/static/login/js/main.js"></script>
<script src="/static/join_page/js/find-address.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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