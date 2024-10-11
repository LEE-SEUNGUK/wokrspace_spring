<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- 회원가입 -->
	<!-- Contact Section-->
	<section class="page-section" style="margin-top: 100px" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">게시글</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<div class="mb-3">
						<label>제목</label>
						<h6>${board.boardTitle}</h6>
					</div>
					<div class="mb-3">
						<label>작성자</label>
						<h6>${board.memNm}</h6>
					</div>
					<div class="mb-3">
						<label>수정일</label>
						<h6>${board.updateDt}</h6>
					</div>
					<div class="mb-3">
						<label>내용</label>
						<textarea class="form-control" style="height: 20rem" readonly>${board.boardContent}</textarea>
					</div>
					<c:if test="${sessionScope.login.memId == board.memId}">
						<form class="d-inline-block"
							action="<c:url value = "/boardEditDo" /> " method="post">
							<input type="hidden" name="boardNo" value="${board.boardNo}">
							<button class="btn btn-success btn-xl" type="submit">수정</button>
						</form>
						<form class="d-inline-block"
							action="<c:url value = "/boardDelDo" /> " method="post">
							<input type="hidden" name="boardNo" value="${board.boardNo}">
							<input type="hidden" name="memId" value="${board.memId}">
							<button class="btn btn-danger btn-xl" type="submit">삭제</button>
						</form>
					</c:if>
				</div>
			</div>
		</div>
	</section>

	<!-- 회원가입 -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>