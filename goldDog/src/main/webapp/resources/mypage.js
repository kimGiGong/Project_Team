
function ondetails(id) {
	alert(id);
	var html = "아니!!!"
	$("#"+id+" p").empty();
	$("#"+id+" p").append(html);
}

$(document).ready(function(){
});	//ready()