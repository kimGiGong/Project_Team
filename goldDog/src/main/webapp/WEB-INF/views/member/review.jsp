<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 	<!-- Custom fonts for this template-->
    <link href="/resources/bum/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			//review 모달 글쓰기 눌렀을때 띄울 
			$("#review").on("click",function(e){
				e.preventDefault(); 
				console.log("리뷰 확인 모달.");
				$("#reviewPro").submit();
			});
		});
		//유효성 검사
    	function checkField() {
    		let inputs = document.review;
    		if(! inputs.r_score.value) {
    			alert("평점을 입력해주세요.")
    			return false;
    		}
    		if(! inputs.r_text.value) {
    			alert("리뷰를 입력해주세요.")
    			return false;
    		}
    	}
	</script>
	
	<style type="text/css">
		.star-rating {
			display: flex;
			flex-direction: row-reverse;
			font-size: 2.25rem;
			line-height: 2.5rem;
			justify-content: space-around;
			padding: 0 0.2em;
			text-align: center;
			width: 5em;
		}
		
		.star-rating input {
			display: none;
		}
		
		.star-rating label {
			-webkit-text-fill-color: transparent;
			/* Will override color (regardless of order) */
			-webkit-text-stroke-width: 2.3px;
			-webkit-text-stroke-color: #2b2a29;
			cursor: pointer;
		}
		
		.star-rating :checked ~ label {
			-webkit-text-fill-color: gold;
		}
		
		.star-rating label:hover, .star-rating label:hover ~ label {
			-webkit-text-fill-color: #fff58c;
		}
	</style>

</head>
<body>

	
	<!-- review Modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reviewModal">
		리뷰 작성
	</button>
	
	<!-- review Modal -->
	<div class="modal fade" id="reviewModal" tabindex="-1" aria-labelledby="reviewModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="reviewModalLabel">리뷰 작성</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div>
						<h5 align="center">서비스에 만족하시나요 ?</h5>
					</div>
					<form id="reviewPro" action="/member/reviewPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="review" onsubmit="return checkField()">
						<table>
							<div class="star-rating space-x-4 mx-auto">
								<input type="radio" id="5-stars" name="r_score" value="5" v-model="ratings" /> 
								<label for="5-stars" class="star pr-4">★</label>
								<input type="radio" id="4-stars" name="r_score" value="4" v-model="ratings" /> 
								<label for="4-stars" class="star">★</label> 
								<input type="radio" id="3-stars" name="r_score" value="3" v-model="ratings" />
								<label for="3-stars" class="star">★</label> 
								<input type="radio" id="2-stars" name="r_score" value="2" v-model="ratings" /> 
								<label for="2-stars" class="star">★</label> 
								<input type="radio" id="1-star" name="r_score" value="1" v-model="ratings" /> 
								<label for="1-star" class="star">★</label>
							</div>
							<hr />
							<tr>
								<th>훈련사 이름　:　홍성현<br></th>
							</tr>
							<tr>
								<th>
									<textarea rows="7" cols="55" name="r_text" placeholder="리뷰 작성"></textarea><br>
								</th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
						    </tr>
						</table>
					</form>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="review" >저장</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

	<div class="star-rating space-x-4 mx-auto">
		<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings" /> 
		<label for="5-stars" class="star pr-4">★</label>
		<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings" /> 
		<label for="4-stars" class="star">★</label> 
		<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings" />
		<label for="3-stars" class="star">★</label> 
		<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings" /> 
		<label for="2-stars" class="star">★</label> 
		<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" /> 
		<label for="1-star" class="star">★</label>
	</div>
	
	<!-- Modal
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
		견적서 확인
	</button>  -->

	<!-- Modal
	<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel" align="center">견적서 확인</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div>
						<h1 align="center">견적서 확인</h1>
					</div>
					<form id="reviewPro" action="/member/reviewPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
						<table >
							<tr>
								<th>훈련사 이름　:　홍성현<br></th>
							</tr>
							<tr>
								<th>
									<textarea rows="7" cols="55" name="r_text" placeholder="리뷰 작성"></textarea><br>
								</th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
						    </tr>
						</table>
					</form>
					
					<form id="reviewPro" action="/member/reviewPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
						<table>
							
							<tr>
								<th>훈련사 이름　:　홍성현<br></th>
							</tr>
							<tr>
								<th>
									<textarea rows="7" cols="55" name="r_text" placeholder="리뷰 작성"></textarea><br>
								</th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="r_img"/></th>
						    </tr>
						</table>
					</form>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="review" >확인</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>  -->

</body>
</html>