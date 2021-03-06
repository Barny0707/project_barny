<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html">
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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order</title>

</head>
<body>
    
    <h4>????????????</h4>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/order2' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.cartList"/>"> 
                <td><sec:authentication property="principal.cartList"/></td>
                <hr class="my-4">
            </form>
        </div>
    </div>

    <h4>????????? ??????</h4>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart3' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>??????????????? : <sec:authentication property="principal.memberVO.member_id"/></p>
                <p>??????????????? : <sec:authentication property="principal.memberVO.member_name"/></p>
                <p>????????? : <sec:authentication property="principal.memberVO.tel"/> </p>
                <p>????????? : <sec:authentication property="principal.memberVO.email"/> </p>
                <hr class="my-4">
            </form>
        </div>
    </div>

    <h4>?????? ??????</h4>
    <div class="row">
        <div class="col-md-8">
            <form action="<c:url value='/user/cart3' />" method="post">
                <input name="member_idx" type="hidden" value="<sec:authentication property="principal.memberVO.member_idx"/>">
                <p>????????? : <sec:authentication property="principal.memberVO.address"/> </p>
                <hr class="my-4">
            </form>
                <!-- <button id="payment" type="button" class="btn-outline-dark btn-sm">????????????</button> -->
        </div>
    </div>
    
       <h4>?????? ??????</h4>   

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
              <button id="payment" type="button" class="btn-outline-dark btn-sm">????????????</button>
            </div>
          </div>
        </div>
      </div>
    </div>

<!-- <button type="submit" class="orderPage btn-outline-dark btn-sm" href="/user/orderPage">????????????</button> -->
<div class="text-center mb-5 mt-5">
    <a class="btn btn-secondary btn-lg text-uppercase" href="/orderPage">????????????!</a>
</div>

</body>

<script>
	$(document).ready(function(){
			
	    var IMP = window.IMP;
	    IMP.init("imp13011359");
	    
	    $("#payment").click(function(event) {
	    
	    IMP.request_pay({
	        pg : 'kakaopay',
	        pay_method : 'card',
	        merchant_uid : 'merchant_' + new Date().getTime(),
	        name : 'A?????????',
	        amount : 14000,
	        buyer_email : '12345@naver.com',
	        buyer_name : '?????????',
	        buyer_tel : '1234-5678',
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
	        } else {
	            var msg = '????????? ?????????????????????.'; 
	            msg += '???????????? : ' + rsp.error_msg;

	            alert(msg);
	        }
	    });
	    });
	});    
	    
	   
</script>
</html>