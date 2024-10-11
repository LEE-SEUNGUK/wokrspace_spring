<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<jsp:include page="/WEB-INF/inc/top.jsp"></jsp:include>
	<!-- 회원가입 -->
	<!-- Contact Section-->
	<section class="page-section" style="margin-top: 100px" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">로그인</h2>
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
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" action="/loginDo" method="post">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="id" name="memId" value="${cookie.rememberId.value}" type="text"
								placeholder="아이디를 입력하세요" data-sb-validations="required" /> <label
								for="id">ID</label>
							<div class="invalid-feedback" data-sb-feedback="id:required">아이디는
								필수입니다</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="pw" name="memPw" type="password"
								placeholder="비밀번호를 입력하세요" data-sb-validations="required" /> <label
								for="pw">Password</label>
							<div class="invalid-feedback" data-sb-feedback="pw:required">비밀번호는
								필수입니다</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<div class="form-floating mb-3">
							<input ${cookie.rememberId.value == null ? "" : "checked"} class="form-check-input" type="checkbox"
								name="remember"> 아이디 기억하기
						</div>
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">로그인</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- 회원가입 -->
	<jsp:include page="/WEB-INF/inc/footer.jsp"></jsp:include>
</body>
</html>