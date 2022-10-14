$(document).ready(function(){

	
	CKEDITOR.replace('WriteEditor',
		{filebrowserUploadUrl:"/ImgUpLoad/imageUpload.do?${_csrf.parameterName}=${_csrf.token}"
		});
	CKEDITOR.config.width = '75%';
	CKEDITOR.config.height = 400;
	
	$('.area').click(function() {
	
	})
	
	$( document ).on( "click", "input[type=checkbox]" , function() {
		let thisval = $( this ).val();
		let thisname = areaname(this.name);
		if($(this).val()=='전체'){
			if($(this).is(':checked')){
				
				$("input[name='"+this.name+"']").prop('checked',false);
				
				$(this).prop('checked',true);
				
				$(".business_item > button[name='"+this.name+"']").parent().remove();
				
				let addHTML = "<div class='business_item'><button name='"+this.name+"' data-ico='X' value='전체'>"+areaname(this.name)+" 전체</button></div>"; 
		 		$(".business_items_container").append(addHTML);
		 	
		 	}else{
				$(".business_item > button[name='"+this.name+"']").parent().remove();
		 	}
			
		}else{
			if($(this).is(':checked')){
		 		let addHTML = "<div class='business_item'><button name='"+this.name+"' data-ico='X' value='"+thisval+"'>"+thisname+' '+thisval+"</button></div>"; 
		 		$(".business_items_container").append(addHTML);
		 		if($("button[value='전체'][name='"+this.name+"']")){
		 			$("input[value='전체'][name='"+this.name+"']").prop('checked',false);
		 			$(".business_item > button[value='전체'][name='"+this.name+"']").parent().remove();
		 		}
		 		
			}else{
		 		$(".business_item > button[value='"+thisval+"']").parent().remove();
		 		
			}
		}
	});
	
	$(document).on("click",".business_item > button[data-ico='X']",function(){
	
		let thisval = $(this).val();
		
		$("input[value='"+thisval+"'][name='"+this.name+"']").prop('checked',false);
		
		$(this).parent().remove();
		
	});
	
	$(document).on("click", ".addressEdit" , function(){
	
		if($(this).text() == "지역변경"){
			$(this).children().text("취소");
			$("button[data-ico='X']").attr("disabled",false	);
			$(".edit").css("display","block");
		}else{
			$(this).children().text("지역변경");
			$("button[data-ico='X']").attr("disabled",true	);
			$(".edit").css("display","none");
			$(this).children().css("display","block");
		}
	
	});
	
	

	
});	//ready

function areaname(name){
	let localName;
	if(name==="seoul"){
		localName = "서울";
	}else if(name==="gyeonggi"){
		localName = "경기";
	}
	return localName;
}

function onAddress(a) {
	$('.area_container').css('display', 'none');
	document.getElementById(a.className).style.display= "grid";
}

(function(){
let get = $("button[data-ico='X']");
	for (let val of get) {
	
		$("input[value='"+val.value+"'][name='"+val.name+"']").prop('checked',true);
		
	};
	$(".edit").css('display','none');
	$(".addressEdit > .edit").css("display","block");
})();




