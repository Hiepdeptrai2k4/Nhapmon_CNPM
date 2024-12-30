<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<body>
	
		<!-- TOP Nav Bar -->
		
		<!-- TOP Nav Bar END -->
		<!-- Page Content  -->
		<div id="content-page" class="content-page">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="iq-card">
							<div class="iq-card-header d-flex justify-content-between">
								<div class="iq-header-title">
									<h4 class="card-title">Sửa sách</h4>
								</div>
							</div>
							<div class="iq-card-body">
								 <form:form action="${book.bookID}" method="POST"
									modelAttribute="book">
									<form:hidden path="bookID" />
									<div class="form-group">
										<label>Tên sách:</label>

										<form:input type="text" class="form-control"
											placeholder="Mời nhập tên sách" path="Title" />
									</div>
									<div class="form-group">
										<label for="genre">Danh mục sách:</label> <select
											class="form-control" id="genre" name="GenreID">
											<option value="1" ${empty param.GenreID ? 'selected' : ''}>Chọn danh mục
												sách</option>
											<c:forEach var="item" items="${category}">
												<option value="${item.genreID}" ${book.genreID == item.genreID ? 'selected' : ''}>${item.genreName}</option>
											</c:forEach>
										</select>

									</div>
									
									
									
									<div class="form-group">
										<label>Tác giả sách:</label> <select class="form-control"
											id="author" name="AuthorID">
											<option value="1" ${empty param.AuthorID ? 'selected' : ''}>Chọn tác giả</option>
											<c:forEach var="item" items="${author}">
												<option value="${item.authorID}" ${book.authorID == item.authorID ? 'selected' : ''}>${item.authorName}</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group">
										<label>Hình ảnh:</label>
										<div class="custom-file">

											<form:input type="file" class="custom-file-input"
												accept="image/png, image/jpeg" path="BookImg" />
											<label class="custom-file-label">Choose file</label>
										</div>
									</div>
									<div class="form-group">
										<label>Sách pdf:</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input"
												accept="application/pdf, application/vnd.ms-excel">
											<label class="custom-file-label">Chọn file</label>
										</div>
									</div>
									<div class="form-group">
										<label>Giá sách:</label>
										<form:input type="text" class="form-control"
											placeholder="Mời nhập giá sách" path="Price" />
									</div>
									<div class="form-group">
										<label>Số lượng trong kho:</label>
										<form:input type="text" class="form-control"
											placeholder="Mời nhập số lượng" path="Stock" />
									</div>
									<div class="form-group">
										<label>Nội dung:</label>

										<form:input type="text" class="form-control" rows="4"
											placeholder="Mời nhập Description" path="Description" />
									</div>
									<button type="submit" class="btn btn-primary">Gửi</button>
									<a href="/BookStore/admin/admin-books" class="btn btn-danger">Trở lại</a>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Wrapper END -->
	<!-- Footer -->
	<footer class="iq-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="privacy-policy.html">Privacy
								Policy</a></li>
						<li class="list-inline-item"><a href="terms-of-service.html">Terms
								of Use</a></li>
					</ul>
				</div>

			</div>
		</div>
	</footer>
	<!-- Footer END -->
	<!-- color-customizer -->

	<!-- color-customizer END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap4.min.js"></script>
	<!-- Appear JavaScript -->
	<script src="js/jquery.appear.js"></script>
	<!-- Countdown JavaScript -->
	<script src="js/countdown.min.js"></script>
	<!-- Counterup JavaScript -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<!-- Wow JavaScript -->
	<script src="js/wow.min.js"></script>
	<!-- Apexcharts JavaScript -->
	<script src="js/apexcharts.js"></script>
	<!-- Slick JavaScript -->
	<script src="js/slick.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="js/select2.min.js"></script>
	<!-- Owl Carousel JavaScript -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup JavaScript -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Smooth Scrollbar JavaScript -->
	<script src="js/smooth-scrollbar.js"></script>
	<!-- lottie JavaScript -->
	<script src="js/lottie.js"></script>
	<!-- am core JavaScript -->
	<script src="js/core.js"></script>
	<!-- am charts JavaScript -->
	<script src="js/charts.js"></script>
	<!-- am animated JavaScript -->
	<script src="js/animated.js"></script>
	<!-- am kelly JavaScript -->
	<script src="js/kelly.js"></script>
	<!-- am maps JavaScript -->
	<script src="js/maps.js"></script>
	<!-- am worldLow JavaScript -->
	<script src="js/worldLow.js"></script>
	<!-- Raphael-min JavaScript -->
	<script src="js/raphael-min.js"></script>
	<!-- Morris JavaScript -->
	<script src="js/morris.js"></script>
	<!-- Morris min JavaScript -->
	<script src="js/morris.min.js"></script>
	<!-- Flatpicker Js -->
	<script src="js/flatpickr.js"></script>
	<!-- Style Customizer -->
	<script src="js/style-customizer.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="js/custom.js"></script>
</body>
</html>