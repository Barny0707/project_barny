<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</head>

<style>
.order {
	padding-top: 100px;
	margin-left: 500px;
}

</style>
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

<!-- ???????????????  -->  
<div class="order">
<div class="order-1" style="margin-left:30%; margin-bottom:5%;">
<h1>?????????</h1>  
</div>

<div class="container mt-4">    
    <h3>????????????</h3>
    <div class="row">
        <div class="col-md-8">       
            <form action="<c:url value='/user/order' />" method="post">
<%--                 <input name="member_idx" type="hidden" value="<sec:authentication property="principal.cartList"/>"> 
                <td><sec:authentication property="principal.cartList"/></td>              
              <tr>
		      <td>????????????</td>
		      <td>??????</td>
		      <td>??????</td>
		      <td>&nbsp;</td>
		      </tr></br> 
		
		      <c:forEach items="${cartList}" var="dto">
		      <tr>
		         <td>${dto.product_name}</td>
		         <td>${dto.product_qty}</td>
		         <%-- <td>${dto.price}</td> 
		      </tr></br>
		      </c:forEach>	--%>	 
		      		      																					
			<div class="row" style="text-align:center;">
				<div class="col-md-12" >
					<div class="table-wrap" >
						<table class="table">
							<thead class="thead-primary">
								<tr>
									<th>&nbsp;</th> 
									<th>&nbsp;</th>
									<th>Product</th>
									<th>Price</th>
									<th>Qty</th>									 
								</tr>
							</thead>
							<tbody>														
									<c:forEach items="${cartList}" var="dto">						
									<tr class="alert" role="alert">
  										<td>&nbsp;</td>
										<td><a href="#"><img class="img" style="width:70px; height:70px;" src="/${dto.image_route}"></a></td>									
										<td>${dto.product_name}</td>
										<td>${dto.price} </td>
										<td>${dto.product_qty}</td> 
									</tr>														
									</c:forEach>
									<td id ="total_price" colspan="5" align="right">
									???????????? ?????? ?????? : <fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" />??? <br>
									????????? : ${map.fee} ???<br> 
									??? ???????????? : <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />???
									<input id="total" name="total" type="hidden" value="${map.sum}">
									</td>																																										
							</tbody>
						</table>
					</div>
				</div>
			</div>																																					
								
									     		          
		      
                <hr class="my-4"> 
            </form>
        </div>
    </div>   
    
    <h3>????????? ??????</h3>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart5' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>??????????????? : <sec:authentication property="principal.memberVO.member_id"/></p>
                <input id="name" name="name" type="hidden" value="<sec:authentication property="principal.memberVO.member_name"/>"></p>
                <p>??????????????? : <sec:authentication property="principal.memberVO.member_name"/></p>
                <input id="tel" name="tel" type="hidden" value="<sec:authentication property="principal.memberVO.tel"/>"></p>
                <p>????????? : <sec:authentication property="principal.memberVO.tel"/> </p>
                <input id="email" name="email" type="hidden" value="<sec:authentication property="principal.memberVO.email"/>"></p>
                <p>????????? : <sec:authentication property="principal.memberVO.email"/> </p>               
                <hr class="my-4">
            </form>
        </div>
    </div>
    
    <h3>?????????</h3>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart5' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>????????? :&nbsp; <sec:authentication property="principal.memberVO.point"/>&nbsp;p&nbsp;<button id="point" type="button" class="btn btn-secondary btn-md">????????????</button></p>
                <p>(5000p ?????? ????????????)
                <input id="point1" type="hidden" value="<sec:authentication property="principal.memberVO.point"/>"></p>
                <hr class="my-4">
            </form>
        </div>
    </div>

    <h3>?????? ??????</h3>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart5' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <input id="address" name="address" type="hidden" value="<sec:authentication property="principal.memberVO.address"/>"></p>
                <p>????????? : <sec:authentication property="principal.memberVO.address"/> </p>
                <hr class="my-4">
            </form>
                <!-- <button id="payment" type="button" class="btn-outline-dark btn-sm">????????????</button> -->
        </div>
    </div>
    
    <h3>?????? ??????</h3>   
    <div class="table-wrap col-8"><div class="accordion" id="accordionExample">
        <div class="accordion-item">
          <h4 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
             ???????????????
            </button>
          </h4>
          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
             <select class="form-select" aria-label="Default select example">
                <option selected>---?????? ??????---</option>
                <option value="1">???????????? 1234567890 (???)Barny</option>
                <option value="2">???????????? 1234567890 (???)Barny</option>
              </select>

            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h4 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              ????????????
            </button>
          </h4>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <button id="payment" type="button" class="btn btn-secondary btn-sm">????????????</button>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</div>
<!-- <button type="submit" class="orderPage btn-outline-dark btn-sm" href="/user/orderPage">????????????</button> -->
<div class="text-center mb-5 mt-5">
<input id="point2" name="point2" type="hidden" value="<sec:authentication property="principal.memberVO.point"/>">
    <!-- <a class="btn btn-secondary btn-lg text-uppercase" href="/orderPage">????????????!</a> -->
    <button id="insertPoint_1" type="button" value="<sec:authentication property="principal.memberVO.point"/>" 
    class="btn btn-secondary btn-lg text-uppercase" href="/orderPage">????????????!</button>
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

</body>

<!-- ???????????? -->
<script>
	$(document).ready(function(){
			
	    var IMP = window.IMP;
	    IMP.init("imp13011359");
	    
	    $("#payment").click(function(event) {
	    
	    IMP.request_pay({
	        pg : 'inicis',
	        pay_method : 'card',
	        merchant_uid : 'merchant_' + new Date().getTime(),
	        name : 'A?????????',
	        amount : 100,
	        buyer_email : '5678@naver.com',
	        buyer_name : '?????????',
	        buyer_tel : '010-1234-5678',
	        buyer_addr : '????????? ?????????',
	        buyer_postcode : '123-456'
	    }, function(rsp) {
	        if ( rsp.success ) {
	        	//[1] ??????????????? ???????????? ????????? ?????? jQuery ajax??? imp_uid ????????????
	        	jQuery.ajax({
	        		url: "/board/purchase_list", //cross-domain error??? ???????????? ????????? ????????? ??????????????? ??????
	        		type: 'POST',
	        		dataType: 'json',
	        		data: {
	    	    		imp_uid : rsp.imp_uid
	    	    		//?????? ????????? ???????????? ????????? ?????? ??????
	        		}
	        	}).done(function(data) {
	        		//[2] ???????????? REST API??? ?????????????????? ??? ?????????????????? ???????????? ??????
	        		if ( everythings_fine ) {
	        			var msg = '????????? ?????????????????????.';
	        			msg += '\n??????ID : ' + rsp.imp_uid;
	        			msg += '\n?????? ??????ID : ' + rsp.merchant_uid;
	        			msg += '\?????? ?????? : ' + rsp.paid_amount;
	        			msg += '?????? ???????????? : ' + rsp.apply_num;

	        			alert(msg);
	        		} else {
	        			//[3] ?????? ????????? ????????? ?????? ???????????????.
	        			//[4] ????????? ????????? ????????? ????????? ?????? ????????? ?????????????????????????????????.
	        		}
	        	});
	        	location.href='${pageContext.request.contextPath}/orderPage';
	        } else {
	            var msg = '????????? ?????????????????????.'; 
	            msg += '???????????? : ' + rsp.error_msg;

	            alert(msg);
	        }
	    });
	    });
	});    	    	   
</script>  

<!--  <script>
	$(document).ready(function(){
			
	    var IMP = window.IMP;
	    IMP.init("imp13011359");
	    
	    var member_name = $("#name").val();
	    var tel = $("#tel").val();
	    var address = $("#address").val();
	    var email = $("#email").val();
	    var point = $("#point1").val(); 
	    var total_price =$("#total").val();

	    
/* 	 	var insertOrder = {
		    member_name : member_name,
		    tel : tel,
		    address : address,
		    mail : mail,
		    point : point + 100, 
		    total_price : total_price
		 	  }; */
	    
	    $("#payment").click(function(event) {
	    
	    IMP.request_pay({
	        pg : 'inicis',
	        pay_method : 'card',
	        merchant_uid : 'merchant_' + new Date().getTime(),
	        name : 'A?????????',
	        amount : /* total_price */100,
	        buyer_email : email,
	        buyer_name : member_name,
	        buyer_tel : tel,
	        buyer_addr : address,
	        buyer_postcode : '123-456'
	    }, function(rsp) {
	        if ( rsp.success ) {
	        	
	        var insertOrder = {
			    member_name : member_name,
			    tel : tel,
			    address : address,
			    email : email,
			    point : point + 100, 
			    total_price : total_price
			 }
			 	  
	        	//[1] ??????????????? ???????????? ????????? ?????? jQuery ajax??? imp_uid ????????????
	        	jQuery.ajax({
	        		url: "/user/insertOrder", //cross-domain error??? ???????????? ????????? ????????? ??????????????? ??????
	        		type: 'POST',
	        		dataType: 'json',
	        		data: {
	    	    		imp_uid : rsp.imp_uid,
	    	    		insertOrders
	    	    		//?????? ????????? ???????????? ????????? ?????? ??????
	        		}
	        	}).done(function(data) {
	        		//[2] ???????????? REST API??? ?????????????????? ??? ?????????????????? ???????????? ??????
	        		if ( everythings_fine ) {
	        			var msg = '????????? ?????????????????????.';
	        			msg += '\n??????ID : ' + rsp.imp_uid;
	        			msg += '\n?????? ??????ID : ' + rsp.merchant_uid;
	        			msg += '\?????? ?????? : ' + rsp.paid_amount;
	        			msg += '?????? ???????????? : ' + rsp.apply_num;

	        			alert(msg);
	        		} else {
	        			//[3] ?????? ????????? ????????? ?????? ???????????????.
	        			//[4] ????????? ????????? ????????? ????????? ?????? ????????? ?????????????????????????????????.
	        		}
	        	});
	        	
	        	location.href='${pageContext.request.contextPath}/orderPage';
	        	
	        } else {
	            var msg = '????????? ?????????????????????.'; 
	            msg += '???????????? : ' + rsp.error_msg;

	            alert(msg);
	        }
	    });
	    });
	});    	    	   
</script> --> 

<!-- ????????? -->
	<script type="text/javascript">
	$(document).ready(function(){
		
		$("#point").click(function(event) {
	   	 	  
		 	  var point = $("#point1").val();
		 	  
		 	  if($("#point1") >= "5000") {
		 		  alert("5000??? ?????? ?????????????????????!")
		 		  $button_point = $('#point').attr('disabled', true);


		 	  }
		 	  
		 	  	       

		});
	 });
	</script>
	
<!-- 	<script>
		// ????????? ??????
		$(document).ready(function () {

			$("#insertPoint").click(function (event) {

				event.preventDefault();

				var point = $("#point2").val();


				//dataType: 'json',
				$.ajax({
					type: "GET",
					url: "/user/insertPoint",
					cache: false,
					contentType: 'application/json; charset=utf-8',
					data: point,
					success: function (result) {
						location.href='${pageContext.request.contextPath}/orderPage';
					},
					error: function (e) {
						alert("??????");
						console.log(e);
					}
				});

			});

		});
	</script> -->
	
		<script>
		$(document).ready(function () {

			$("#insertPoint_1").click(function (event) {

				event.preventDefault();

				var insertPoint_1 = $("#point2").val();


				//dataType: 'json',
				$.ajax({
					type: "GET",
					url: "/user/insertPoint",
					cache: false,
					contentType: 'application/json; charset=utf-8',
					data: insertPoint_1,
					success: function (result) {
						alert("100???????????? ?????????????????????!");
					},
					error: function (e) {
						alert("??????");
						console.log(e);
					}
				});

			});

		});
	</script>
</html>