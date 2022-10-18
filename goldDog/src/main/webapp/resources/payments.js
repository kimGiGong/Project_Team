
let eno = "${estimate.e_no}";
var obj = "";
let token =$("meta[name='_csrf']").attr("content");                
let header=$("meta[name='_csrf_header']").attr("content");
$(document).ready(function(){
	if("${estimate.e_con}" == 1){
		$.ajax({
			url : "/payment/members" ,
			method : "POST",
			beforeSend: function(xhr){ xhr.setRequestHeader(header,token); },
			data : { e_no : eno },
			success: function(result){
				obj = JSON.parse(result);
				console.log(obj); 
			},
			error: function(e){
				console.log(e);
			}
		});
	}

})


let date = new Date();
const year = date.getFullYear();
const month = ('0' + (date.getMonth() + 1)).slice(-2);
const day = ('0' + date.getDate()).slice(-2);
const hours = ('0' + date.getHours()).slice(-2);
const minutes = ('0' + date.getMinutes()).slice(-2);
const seconds = ('0' + date.getSeconds()).slice(-2);



let setAmount = 100;



const IMP = window.IMP;
IMP.init("imp23825600");

function requestPay() {
	console.log(obj); 
	IMP.request_pay({
		pg : "html5_inicis.INIpayTest",
		pay_method : "card",
		merchant_uid : year + month + day + hours + minutes + seconds + obj.m_no, //주문번호
		name : obj.t_name,
		amount : setAmount, 
		buyer_name : obj.m_name,
		buyer_email : ''
	}, function(rsp) { // callback
		if (rsp.success) {
			console.log(rsp);
			$.ajax({
				url : "/payment",
				method : "POST",
				dataType: "text",
				beforeSend: function(xhr){ xhr.setRequestHeader(header,token); },
				data : {
					imp_uid : rsp.imp_uid, //결제 고유번호     
					p_order :rsp.merchant_uid, //주문번호
					p_name_user : rsp.buyer_name,
					t_no_name : rsp.name,
					p_amount : rsp.paid_amount,
					m_no : obj.m_no,
					t_no : obj.t_no,
				    p_name_manager : obj.t_m_no,
				    e_no : obj.e_no
				},
				success: function(){
					var form = document.createElement("form");
					form.method = "GET";
					form.action = "/myapge";
					form.submit();
				}
			})
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		}
	});
}