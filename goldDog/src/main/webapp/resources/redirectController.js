$(document).ready(function(){

	console.log(useType)
	if( useType == 'trainer'){
		$("#t").addClass('active');
		$("#h").removeClass('active');
	}else if( useType == 'hair'){
		$("#t").removeClass('active');
		$("#h").addClass('active');
	}else{
		window.location.href='/main/premain';
	}
	
	
})