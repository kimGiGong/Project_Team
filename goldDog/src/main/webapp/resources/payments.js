
let eno = $("#dogCheck").val();
let m_no = "";
let t_m_no = "";
let t_name = "";
let m_name = "";
let token =$("meta[name='_csrf']").attr("content");                
let header=$("meta[name='_csrf_header']").attr("content");
$(document).ready(function(){
	$.ajax({
		url : "/payment/members" ,
		method : "POST",
		beforeSend: function(xhr){ xhr.setRequestHeader(header,token); },
		data : { e_no : eno },
		success: function(result){
		var obj = JSON.parse(result);
		    console.log(obj.m_no); 
		},
		error: function(e){
			console.log(e);
		}
	});

})


let date = new Date();
const year = date.getFullYear();
const month = ('0' + (date.getMonth() + 1)).slice(-2);
const day = ('0' + date.getDate()).slice(-2);
const hours = ('0' + date.getHours()).slice(-2);
const minutes = ('0' + date.getMinutes()).slice(-2);
const seconds = ('0' + date.getSeconds()).slice(-2);

const t_no_name = "홍홍홍";
let username ="" ;
let setAmount = 100;



const IMP = window.IMP;
IMP.init("imp23825600");

function requestPay() {
	console.log(m_no);
	IMP.request_pay({
		pg : "html5_inicis.INIpayTest",
		pay_method : "card",
		merchant_uid : year + month + day + hours + minutes + seconds + m_no, //주문번호
		name : t_name,
		amount : setAmount, // 숫자타입
		buyer_name : m_name,
		buyer_email : ''
	}, function(rsp) { // callback
		if (rsp.success) {
			console.log(rsp);
			$.ajax({
				url : "/payment",
				method : "POST",
				dataType: "text",
				data : {
					imp_uid : rsp.imp_uid, //결제 고유번호     
					p_no : rsp.merchant_uid, //주문번호
					p_name_user : rsp.buyer_name,
					t_no_name : rsp.name,
					p_amount : rsp.paid_amount
				}
			})
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		}
	});
}