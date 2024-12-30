<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<body>
	
		
		<!-- TOP Nav Bar END -->
		<!-- Page Content  -->
		<div id="content-page" class="content-page">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="iq-card">
							<div class="iq-card-header d-flex justify-content-between">
								<div class="iq-header-title">
									<h4 class="card-title">Xác nhận đơn hàng</h4>
								</div>
							</div>
							<div class="iq-card-body">
								<form:form action="${ bill.billID }" method="POST" 	modelAttribute="bill">
    <div class="form-group">
                <label for="billID">Mã Hóa Đơn</label>
                <input type="hidden" id="billID" value="${bill.billID}" name="BillID"/>
                <span>${bill.billID}</span>
            </div>
            <!-- Tên Khách Hàng -->
            <div class="form-group">
                <label for="name">Tên Khách Hàng</label>
                <input type="hidden" id="name" value="${bill.name}" name="Name"/>
                <span>${bill.name}</span>
            </div>
            <!-- Số Điện Thoại -->
            <div class="form-group">
                <label for="phone">Số Điện Thoại</label>
                <input type="hidden" id="phone" value="${bill.phone}" name="Phone"/>
                <span>${bill.phone}</span>
            </div>
            <!-- Tổng Tiền -->
            <div class="form-group">
                <label for="total">Tổng Tiền</label>
                <input type="hidden" id="total" value="${bill.total}" name="Total"/>
                <span>${bill.total}</span>
            </div>
            <!-- Trạng Thái -->
            <div class="form-group">
                <label for="state">Trạng Thái</label>
                
            </div>
    <c:if test="${bill.state != 3}">
    <form:select path="State" class="form-control" id="state">
                    <option value="0" ${bill.state == 0 ? 'selected' : ''}>Đã Hủy Đơn Hàng</option>
                    <option value="1" ${bill.state == 1 ? 'selected' : ''}>Đang Chờ Xử Lý</option>
                    <option value="2" ${bill.state == 2 ? 'selected' : ''}>Đang Giao Hàng</option>
                    <option value="3" ${bill.state == 3 ? 'selected' : ''}>Đã Giao Thành Công</option>
    </form:select>
    <button type="submit" class="btn btn-primary">Xác Nhận</button>
    </c:if>
    <c:if test="${bill.state == 3}">
    <form:select path="State" class="form-control" id="state" disabled="true">
                    <option value="0" ${bill.state == 0 ? 'selected' : ''}>Đã Hủy Đơn Hàng</option>
                    <option value="1" ${bill.state == 1 ? 'selected' : ''}>Đang Chờ Xử Lý</option>
                    <option value="2" ${bill.state == 2 ? 'selected' : ''}>Đang Giao Hàng</option>
                    <option value="3" ${bill.state == 3 ? 'selected' : ''}>Đã Giao Thành Công</option>
    </form:select>
    </c:if>
</form:form>

 <c:if test="${not empty status}">
            <div class="alert 
                        ${status.contains('thành công') ? 'alert-success' : 'alert-danger'}" 
                 role="alert">
                ${status}
            </div>
        </c:if>

<!-- Nút quay lại danh sách hóa đơn -->
<a href="<c:url value='/admin' />" class="btn btn-secondary mt-2">Quay lại </a>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Wrapper END -->
	
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