
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<body>
<!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid checkout-content">
               <div class="row">
                  <div id="cart" class="card-block show p-0 col-12">
                     <div class="row align-item-center">
                        <div class="col-lg-8">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Giỏ hàng</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <ul class="list-inline p-0 m-0" id="cartCheckout">
                                 
                                 <c:forEach var="entry" items="${cart}">
                                    <c:if test="${cart.size() > 0}">
                                    <li class="checkout-product">
                                       <div class="row align-items-center">
                                          <div class="col-sm-2">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="<c:url value = "/assets/user/${ entry.value.book.bookImg }"/>" alt=""></a>
                                             </span>
                                          </div>
                                          <div class="col-sm-4">
                                             <div class="checkout-product-details">
                                                <h5>${ entry.value.book.title }</h5>
                                                <p class="text-success">Còn hàng</p>
                                                <div class="price">
                                                   <h5><fmt:formatNumber value="${ entry.value.book.price*9/10 }" type="number" groupingUsed="true" pattern="#,##0" /> ₫</h5>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="row">
                                                <div class="col-sm-10">
                                                   <div class="row align-items-center mt-2">
                                                      <div class="col-sm-7 col-md-6">
                                                         <button type="button" class="fa fa-minus qty-btn" id="btn-minus${entry.value.book.bookID }"></button>
                                                         <input type="text" id="quantity${entry.value.book.bookID }" class="quantity-style" value="${ entry.value.quantity }">
                                                         <button type="button" class="fa fa-plus qty-btn" id="btn-plus${entry.value.book.bookID }"></button>
                                                      </div>
                                                      <div class="col-sm-5 col-md-6">
                                                         <span class="product-price"><fmt:formatNumber value="${ entry.value.book.price*9/10 }" type="number" groupingUsed="true" pattern="#,##0" /> ₫</span>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-sm-2">
                                                   <a href="javascript:void();" class="text-dark font-size-20" onclick="deleteCartCheckout(${entry.value.book.bookID})"><i class="ri-delete-bin-7-fill"></i></a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </li>
                                    </c:if>
                                    
                                    </c:forEach>
                                    
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4">
                           <div class="iq-card">
                              <div class="iq-card-body">
                                 <p>Tùy chọn</p>
                                 <div class="d-flex justify-content-between">
                                    <span>Phiếu giảm giá</span>
                                    <span><a href="#"><strong>Áp dụng</strong></a></span>
                                 </div>
                                 <hr>
                                 <p><b>Chi tiết</b></p>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>Tổng</span>
                                    <span id="totalPrice"><fmt:formatNumber value="${ totalprice }" type="number" groupingUsed="true" pattern="#,##0" /> đ</span>
                                 </div>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>Giảm giá</span>
                                    <span class="text-success" id="sale"><fmt:formatNumber value="${ totalprice/10 }" type="number" groupingUsed="true" pattern="#,##0" /> đ</span>
                                 </div>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>Thuế VAT</span>
                                    <span id="VAT">0đ</span>
                                 </div>
                                 <div class="d-flex justify-content-between">
                                    <span>Phí vận chuyển</span>
                                    <span class="text-success">Miễn phí</span>
                                 </div>
                                 <hr>
                                 <div class="d-flex justify-content-between">
                                    <span class="text-dark"><strong>Tổng</strong></span>
                                    <span class="text-dark" id="finalPrice"><strong><fmt:formatNumber value="${ totalprice*9/10 }" type="number" groupingUsed="true" pattern="#,##0" /> đ</strong></span>
                                 </div>
                                 <a id="place-order" href="javascript:void();" class="btn btn-primary d-block mt-3 next">Đặt hàng</a>
                              </div>
                           </div>
                           <div class="iq-card ">
                              <div class="card-body iq-card-body p-0 iq-checkout-policy">
                                 <ul class="p-0 m-0">
                                    <li class="d-flex align-items-center">
                                       <div class="iq-checkout-icon">
                                          <i class="ri-checkbox-line"></i>
                                       </div>
                                       <h6>Chính sách bảo mật (Thanh toán an toàn và bảo mật.)</h6>
                                    </li>
                                    <li class="d-flex align-items-center">
                                       <div class="iq-checkout-icon">
                                          <i class="ri-truck-line"></i>
                                       </div>
                                       <h6>Chính sách giao hàng (Giao hàng tận nhà.)</h6>
                                    </li>
                                    <li class="d-flex align-items-center">
                                       <div class="iq-checkout-icon">
                                          <i class="ri-arrow-go-back-line"></i>
                                       </div>
                                       <h6>Chính sách hoàn trả</h6>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="address" class="card-block p-0 col-12">
                     <div class="row align-item-center">
                        <div class="col-lg-8">
                           <div class="iq-card">
                              <div class="iq-card-header d-flex justify-content-between">
                                 <div class="iq-header-title">
                                    <h4 class="card-title">Thêm địa chỉ mới</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                              <form:form action="checkout" method="POST" modelAttribute="informationForm">
                                 
                                    <div class="row mt-3">
                                       <div class="col-md-6">
                                          <div class="form-group">
                                             <label>Họ và tên: *</label> 
                                             <form:input type="text" class="form-control" id="fname" required="" value="${profile.firstName }${profile.lastName}" path="name" />
                             
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group"> 
                                             <label>Số điện thoại: </label> 
                                             <form:input type="text" class="form-control" name="mno" required="" value="${LoginInfo.phone }" path="phone" />
                                             
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <div class="form-group"> 
                                             <label>Địa chỉ: *</label>
                                             <form:input type="text" class="form-control" name="houseno" required="" value="${LoginInfo.address }" path="address" /> 
                                             
                                          </div>
                                       </div>
                                       <div class="col-md-6">
                                          <button id="deliver-address-btn" type="submit" class="btn btn-primary d-block mt-1 next">Lưu và giao tại đây</button>
                                       </div>
                                    </div>
                                 </form:form>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4">
                           <div class="iq-card">
                              <div class="iq-card-body">
                                 <h4 class="mb-2">Ông Trần Thuận</h4>
                                 <div class="shipping-address">
                                    <p class="mb-0">11 Thành Thái</p>
                                    <p>Thành phố Đà Nẵng</p>
                                    <p>0789-999-999</p>
                                 </div>
                                 <hr>
                                 
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->
</body>
