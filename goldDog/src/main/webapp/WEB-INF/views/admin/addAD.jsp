<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
</head>
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
	<!--  헤더 END -->
    
		<div class="container">
			<h1>훈련사 페이지 광고 수정.</h1>
			<div class="box" style="border: solid 2px #008294; border-radius : 1.5rem;">
			<div class="filters-content">
			<div class="row">
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add1.ad_img}" width="350" height="300" alt="Card image cap"></a>
			      <div class="card-body">
			        	<h5 class="card-title">첫번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 첫번째 광고</p>
						<p class="card-text">변경일자: ${add1.ad_date}</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="hidden" id="formFile" name="ad_no" value="1"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br>
						</form>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add2.ad_img}" width="350" height="300" alt="Card image cap"></a>
			      <div class="card-body">
			        	<h5 class="card-title">두번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 두번째 광고</p>
						<p class="card-text">변경일자: ${add2.ad_date}</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="hidden" id="formFile" name="ad_no" value="2"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br> 
						</form>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add3.ad_img}"  width="350" height="300" alt="Card image cap"></a>
			      <div class="card-body">
				       	<h5 class="card-title">세번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 세번째 광고</p>
						<p class="card-text">변경일자 : ${add3.ad_date}</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="hidden" id="formFile" name="ad_no" value="3"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br>
						</form>
			    </div>
			  </div>
			</div>
			
			</div>
			</div>
			</div>
		</div>
		
		
		
		<div class="container">
			<h1>미용사 페이지 광고 수정</h1>
			<div class="box" style="border: solid 2px #008294;">
			<div class="filters-content">
			<div class="row">
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add1.ad_img}"   width="350" height="300" alt="Card image cap"></a>
			      <div class="card-body">
			        	<h5 class="card-title">첫번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 첫번째 광고</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br>
						</form>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add2.ad_img}"  width="350" height="300"  alt="Card image cap"></a>
			      <div class="card-body">
			        	<h5 class="card-title">첫번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 첫번째 광고</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br> 
						</form>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-4">
			    <div class="card">
			    	<a class="move" ><img class="card-img-top" src="/resources/serverImg/${add3.ad_img}"  width="350" height="300"  alt="Card image cap"></a>
			      <div class="card-body">
				       	<h5 class="card-title">첫번째 광고</h5>
						<p class="card-text">현재 등록 되어있는 첫번째 광고</p>
						<form action="/admin/uploadPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
							<input class="form-control" type="file" id="formFile" name="img"/><br>
							<input type="submit" class="btn btn-primary" value="변경"/> <br>
						</form>
			    </div>
			  </div>
			</div>
			
			</div>
			</div>
			</div>
			<br/><br/><br/><br/>
		</div>



 <%@ include file="../footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			
			// 로그아웃 
			$("#logoutBtn").click(function(e){
				e.preventDefault(); 
				$("#logoutForm").submit();
			});
	</script>
	






