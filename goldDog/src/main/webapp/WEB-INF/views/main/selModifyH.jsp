<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
	
	 <style>
	.fa-star:before {
    content: "\f005";
    color: #48c1bd;
	}
	.fa-vcard:before, .fa-address-card:before {
    color: #6b6b6b;
}

</style>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
</head>
	 
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
		
	<!--  헤더 END -->
	
	
	 <div class="container">
	  <div class="row justify-content-md-center">
	  <div class="col-lg-6 ">
	  		<br/><br/><br/>
               <div class="col-md ">
                 <div class="card mb-3 border border-primary mb-3">
                   <div class="row g-0">
                     <div class="col-md-4">
                      <img src="/resources/serverImg/${member.m_img}" width="185px" height="185px" style="border-radius:1.5rem;"/>
                     </div>
                     <div class="col-md-8">
                       <div class="card-body">
                         <h5 class="card-title">훈련사 정보수정 페이지</h5>
                         <p class="card-text">이름 : ${member.m_name}</p> 
                         <p class="card-text">정보 : ${member.m_phone}</p> 
                         <p class="card-text">
                         </p> 
                       </div>
                     </div>
                   </div>
                 </div>
               </div>    
               
             <form id="updateStylist" action="selModifyProH?${_csrf.parameterName}=${_csrf.token}" method="post">
             <input type="hidden" name="m_no" value="${stylist.m_no}"/>
              <div class="col-lg-12">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title">자기소개</h5>
                   	<textarea class="form-control" rows="3" name="h_self" >${stylist.h_self}</textarea>
                 </div>
               </div>
             </div>
             
               <div class="col-lg-12">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title">판매 추가정보(꾸미기용)</h5>
                   	<textarea class="form-control" rows="3" id="WriteEditor" name="h_sel" ></textarea>
                   	<div class="col-12 col-md-9"><small class="form-text text-muted">ex)미용 추가가격(5kg 이상의 강아지는 + 10000)</small></div>
                   	<div class="col-12 col-md-9"><small class="form-text text-muted">ex)미용 추가가격(장모종 강아지는 + 20000)</small></div>
                 </div>
               </div>
             </div>
             
             
             
              <div class="col-lg-12">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title">자격증</h5>
                   	<input type="text" name="h_license" value="${stylist.h_license}">
                 </div>
               </div>
             </div>
             
             <div class="row justify-content-md-center">
              <div class="col-lg-6">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title"><td>훈련시작금액</td></h5>
                   	<input type="number" name="h_price" value="${stylist.h_price}">원
                 </div>
               </div>
             </div>
              <div class="col-lg-6">
               <div class="card shadow-none bg-transparent border border-primary mb-3">
                 <div class="card-body">
                   <h5 class="card-title"><td>경력</td></h5>
                   	<input type="number" name="h_career" value="${stylist.h_career}">년
                 </div>
               </div>
             </div>
	         </div><!--/.row-->
	         <div class="row justify-content-md-center">
    	          <div class="col-lg-12">
	    	         <input type="button" class="btn float-right btn-info" id="newBoard" value="수정하기">
		         </div><!--/.row-->
	         </div><!--/.row-->
             </form>
             	<br/><br/><br/>
             </div>   
         </div><!--/.row-->
         </div><!--/.con-->
	 


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
	$(document).ready(function(){
		
		$("#newBoard").on("click",function(e){
			e.preventDefault(); 
			console.log("글쓰기 확인");
			
			$("#updateStylist").submit();
		});	
		
		
		
		CKEDITOR.replace('WriteEditor',
				{filebrowserUploadUrl:"/ImgUpLoad/imageUpload.do?${_csrf.parameterName}=${_csrf.token}"
				});
		CKEDITOR.config.width = '100%';
		CKEDITOR.config.height = 400;
		
		$('.area').click(function() {
		
		})
	});
			
		
		</script>
	






