$(document).ready(function(){

	function ondetails(id) {
		alert(id);
		var html = "아니!!!"
		$("#"+id+" p").empty();
		$("#"+id+" p").append(html);
	}
	
	CKEDITOR.replace('WriteEditor',
		{filebrowserUploadUrl:"/ImgUpLoad/imageUpload.do?${_csrf.parameterName}=${_csrf.token}"
		});
	CKEDITOR.config.width = '75%';
	CKEDITOR.config.height = 400;
	
	$('.area').click(function() {
	
	})
});	//ready



 function onAddress(a) {
	$('.area_container').css('display', 'none');
	document.getElementById(a.className).style.display= "grid";
}
