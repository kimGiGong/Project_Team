<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	 	<!-- Custom fonts for this template-->
    <link href="/resources/bum/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			//review 모달 글쓰기 눌렀을때 띄울 
			$("#dogInsert").on("click",function(e){
				e.preventDefault(); 
				console.log("리뷰 확인 모달.");
				$("#dogInsertPro").submit();
			});
		});
	</script>
	
</head>
<body>

		<div class="card card-body">
			<table>
				<tr>
					<th>
						<button class="btn btn-primary" type="button" style="width:50%;" 
						data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
							애견관리
						</button>
					</th>
					<th>
						<button type="button" class="btn btn-primary me-md-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
							등록
						</button>
					</th>
					<th>
						<button type="button" class="btn btn-primary  me-md-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
							추가
						</button>
					</th>
				</tr>
			</table>
		</div>

	<div class="collapse" id="collapseExample">
		<div class="card card-body">
			<table>
				<tr>
					<th style="width:50%">가을이</th>
					<th>
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
							보기
						</button>
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal3">
							삭제
						</button>
					</th>
				</tr>
				<tr>
					<th style="width:50%">쥬디</th>
					<th>
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
							보기
						</button>
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal3">
							삭제
						</button>
					</th>
				</tr>
			</table>
		</div>
	</div>
	
	
	
	
	<!-- Modal 1-->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="exampleModalLabel">애견 등록</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="dogInsertPro" action="/member/dogInsertPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="dogInsert">
						<table>
							<tr>
								<th>이　　름 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_name" placeholder="예) 가을이"></th>
							</tr>
							<tr>
								<th>나　　이 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_age" placeholder="예) 4 (살, 숫자만 입력)"></th>
							</tr>
							<tr>
								<th>성　　별 : </th>
								<th>
									남 <input type="radio" name="d_gender" value="남" checked/> 
									여 <input type="radio" name="d_gender" value="여"/> 
								</th>
							</tr>
							<tr>
								<th>종　　류 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_type" placeholder="예) 푸들"></th>
							</tr>
							<tr>
								<th>무　　게 : </th>
								<th><input type="text" class="form-control form-control-user" name="d_weight" placeholder="예) 5 (kg, 숫자만 입력)"></th>
							</tr>
							<tr>
						    	<th class="text-center" colspan="2"><input class="form-control" type="file" id="formFile" name="part_img"/></th>
						    </tr>
						</table>
					</form>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="dogInsert" >등록</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal 2-->
	<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="exampleModalLabel">애견 수정</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block">
	                    <div class="p-5">
	                    	<img class="card-img-top" src="/resources/serverImg/dog.jpg" width="222" height="180" alt="Card image cap">
	                    	<input class="form-control" width="420" type="file" id="formFile" name="img"/>
	                    </div>
	                </div>
					<div class="col-lg-7">
						<form id="dogModfiyPro" action="/member/dogModfiyPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" name="dogModfiy" onsubmit="return checkField()">
							<table>
								<br/><br/>
								<tr>
									<th>이　　름　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_name" value="가을이"></th>
								</tr>
								<tr>
									<th>나　　이　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_age" value="4살"></th>
								</tr>
								<tr>
									<th>성　　별　:　</th>
									<th><input class="form-control form-control-user" value="남"  readonly="readonly" /></th>
								</tr>
								<tr>
									<th>종　　류　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_type" value="푸들"></th>
								</tr>
								<tr>
									<th>무　　게　:　</th>
									<th><input type="text" class="form-control form-control-user" name="d_weight" value="5kg"></th>
								</tr>
							</table>
						</form>
					</div>
				
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="review" >수정</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>	