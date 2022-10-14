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
</head>
	
	 
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
		
	<!--  헤더 END -->
	<h2>견적서 페이지</h2>
	
	 <div class="container">
	   </br></br></br></br></br></br></br></br>
	   <div class="row mb-5">
                <div class="col-md-8">
                
                  <div class="card mb-3">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img class="card-img card-img-left" src="/resources/serverImg/${clientDog.d_img}" width="150" height="150"/>
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">견적서</h5>
                          <p class="card-text">이 름 : ${clientDog.d_name} </p> 
                          <p class="card-text">나 이 : ${clientDog.d_age} </p> 
                          <p class="card-text">성 별 : ${clientDog.d_gender} </p> 
                          <p class="card-text">종 류 : ${clientDog.d_type} </p> 
                          <p class="card-text">무 게 : ${clientDog.d_weight} </p> 
                        </div>
                      </div>
                    </div>
                  </div>
                  
	                <div class="card mb-3">
	               <div class="card shadow-none bg-transparent border border-primary mb-3">
	                 <div class="card-body">
	                   <h5 class="card-title " style="text-align: left;">훈련사의 BEST 리뷰</h5>
	                   <p class="card-text" style="text-align: right;" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>(${Ravg})${review[i].r_score}</p>
	                 </div>
	               </div>
	             </div>
                  
                  
                  
                  
                  
                  
                  
                  
                </div>
                
                
                
                <div class="col-md-4">
                  <div class="card mb-3">
                    <div class="row g-0">
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Card title</h5>
                          <p class="card-text"> </p>
                          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <img class="card-img card-img-right" src="/resources/feane/images/17.jpg" alt="Card image" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
              
          </br></br></br></br></br></br></br></br>
          </div><!--/.con-->
	


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
		$(document).ready(function(){
		
		
		</script>
	






