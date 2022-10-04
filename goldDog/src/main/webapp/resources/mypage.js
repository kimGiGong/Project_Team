$(document).ready(function(){
	$(".Estimate_details").click(function(){
		$.ajax({
			dataType : "text",
			data : param,
			url : "jq13.jsp",
			type : "get",
			success : function(data){ resultHtml(num1, num2, data); },
			error : function(){ alert("에러 발생"); }
		});	//ajax()
	});	//click()
});	//ready()
