<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
<div id="content-page" class="content-page">
            <div class="container-fluid checkout-content">
               <div class="row">
	<div id="payment" class="car p-0 col-12-0">
                     <div class="row align-item-center">
                        <div class="col-lg-8">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Lựa chọn thanh toán</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <form class="mt-3">
                                    <div class="d-flex align-items-center">
                                       <span>Mã giảm giá: </span>
                                       <div class="cvv-input ml-3 mr-3">
                                          <input type="text" class="form-control" required=""> 
                                       </div>
                                       <button type="submit" class="btn btn-primary">Tiếp tục</button>
                                    </div>
                                 </form>
                                 <hr>
                                 <div class="card-lists">
                                    <div class="form-group">
                                       
                                       <div class="custom-control custom-radio">
                                          <input type="radio" id="cod" name="cod" class="custom-control-input" checked >
                                          <label class="custom-control-label" for="cod" checked> Thanh toán khi giao hàng                                          </label>
                                       </div>
                                    </div>
                                 </div>
                                 <hr>
                                 <a id="deliver-address" href="payment/accept" class="btn btn-primary d-block mt-1 next">Thanh toán</a>

                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4">
                           <div class="iq-card">
                              <div class="iq-card-body">
                                 <h4 class="mb-2">Chi tiết</h4>
                                 <div class="d-flex justify-content-between">
                                    <span>Giá 3 sản phẩm</span>
                                    <span><strong><fmt:formatNumber value="${ totalprice/10*9 }" type="number" groupingUsed="true" pattern="#,##0" /> đ</strong></span>
                                 </div>
                                 <div class="d-flex justify-content-between">
                                    <span>Phí vận chuyển</span>
                                    <span class="text-success">Miễn phí</span>
                                 </div>
                                 <hr>
                                 <div class="d-flex justify-content-between">
                                    <span>Số tiền phải trả</span>
                                    <span><strong><fmt:formatNumber value="${ totalprice/10*9 }" type="number" groupingUsed="true" pattern="#,##0" /> đ</strong></span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  </div>
            </div>
         </div>
</body>
