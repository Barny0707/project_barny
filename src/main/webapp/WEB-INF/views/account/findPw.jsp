<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">
<head>

    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Find your own drink, Barny</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon-2.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/static/css/styles.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--            crossorigin="anonymous"></script>--%>


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


<body id="page-top">

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
                    <li class="nav-item"><a class="nav-link" href="/admin/statistics">???????????????</a></li>
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


<form:form name="findMember" modelAttribute="memberVO" action="/loginForm" method="POST">
    <div class="container pt-5" style="width:60%">
        <div class="input-form-backgroud row">
            <div class="input-form col-md-12 mx-auto mt-5">

                <h3>???????????? ??????</h3>

                <form class="validation-form" novalidate>
                    <div class="row">


                        <div class="col-md-6 mb-3 mt-5">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_name">??????</label>
                                <input class="form-control" type="text" id="member_name" name="member_name"
                                       value="${memberVO.member_name}"
                                       placeholder="???????????? ????????? ??????????????????" required>
                                <form:errors path="member_name"/>

                            </div>
                        </div>


                    </div>


                    <div class="row">

                        <div class="col-md-6 mb-3">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="member_id">?????????</label>
                                <input class="form-control" type="text" id="member_id" name="member_id"
                                       value="${memberVO.member_id}"
                                       placeholder="6~12??? ????????? ??????,?????? ?????? " required
                                       minlength="6" maxlength="12">
                                <form:errors path="member_id"/>

                            </div>
                        </div>
                    </div>




                    <div class="row">
                        <div class="col-md-6 mb-3 ">
                            <div class="wrap-input100 validate-input m-b-16">
                                <label for="email">?????????</label>
                                <input type="email"
                                       placeholder="?????? ??? ???????????? ????????? ????????? ??????????????????" name="email" id="email"
                                       value="${memberVO.email}"
                                       class="form-control" required>
                                <form:errors path="email" cssStyle="color: #e80f25"/>

                            </div>
                        </div>

                        <div class="col-md-3 mb-4 pt-4">
                            <input type="button" value="????????????" id="sendMail" class="btn btn-outline-primary btn-s"> <br>
                        </div>

<%--                        <div class="col-md-3 mb-4 pt-4">--%>
<%--                            <button type="submit"  id="sendMail" class="btn btn-outline-primary btn-s"> ??????<br></button>--%>
<%--                        </div>--%>

                    </div>


                </form>
    </div>


    </div>
    </div>

    </div>


    <script> window.addEventListener('load', () => {
        const forms = document.getElementsByClassName('validation-form');
        Array.prototype.filter.call(forms, (form) => {
            form.addEventListener('submit', function (event) { //??? addEventListener ??? submit ????????? ???????????? ?????????????????? function??????
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false); </script>


</form:form>


</body>


<!???JS???>


<script src="/static/join_page/js/findPw.js"></script>
<!-- Bootstrap core JS-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</html>