<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js" ></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js" ></script>
    <script type="text/javascript">
	var IMP = window.IMP;
	IMP.init("imp23825600");

	
	// 엑세스 토큰 갖고오기 curl
//	curl -H "Content-Type:application/json" -X POST -d "{\"imp_key\": \"4565286812547616\", \"imp_secret\":\"rwecWl1uRkZXcYODaio6woHxjTfJlPhkSjlMWBEkXUChS4Ra7ir7gQMT2rOolu91PV7iVF6CMEMhw8ua\"}" https://api.iamport.kr/users/getToken
	// 엑세스 토큰
	/*
	{
    "code": 0,
    "message": null,
		"response":{
			"access_token": "4d90e890e095659cfedbea252a0ae579aabf693c", // access token
			"now": 1664249894, // 아임포트 REST API 서버의 현재 시간
			"expired_at": 1664251678, // token의 만료 시간 (UNIX timestamp, KST 기준)
		},
	}
	*/
	
	
	$.ajax({
	    url: "https://api.iamport.kr/users/getToken",
	    method: "POST", // POST method
	    headers: { "Content-Type":"application/json" }, // "Content-Type": "application/json"
	    data:{
	    	imp_key: 4565286812547616,
	    	imp_secret: 'rwecWl1uRkZXcYODaio6woHxjTfJlPhkSjlMWBEkXUChS4Ra7ir7gQMT2rOolu91PV7iVF6CMEMhw8ua'
		},
	    success : function(response){
	    	console.log(response);
	    },
		error: function(e){
	    	console.log(e);
		}
	});
	
	/*
    function requestPay() {
        IMP.request_pay({
            pg : 'kakaopay.TCSUBSCRIP',
            pay_method : 'kakaopay',
            merchant_uid: "000009", // 상점에서 관리하는 주문 번호
        	name : '최초인증결제',
        	amount : 100, // 빌링키 발급만 진행하며 결제승인을 하지 않습니다.
        	customer_uid : 'usersID', // 필수 입력
        	buyer_email : 'iamport@siot.do',
        	buyer_name : '아임포트',
        	buyer_tel : '02-1234-1234'
        }, function (rsp) { // callback
            if (rsp.success) {
                // jQuery로 HTTP 요청
                console.log(rsp.imp_uid);
                jQuery.ajax({
                    url: "http://localhost:8080/", 
                    type: "POST",
                    headers: { "Content-Type": "application/json" },
                    data: {
                        imp_uid : rsp.imp_uid,//결제 고유번호
                        merchant_uid : rsp.merchant_uid,   //주문번호 
                        customer_uid : rsp.customer_uid,
                        amount : rsp.amount,                     
                    }
                }).always(function (data) {
                  alert(data.imp_uid);
                  alert(data.merchant_uid);
                  alert(data.customer_uid);
                  alert(data.amount);
            	});
            } else {
                alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
            }
        });
    }
	*/
    </script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<button onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>