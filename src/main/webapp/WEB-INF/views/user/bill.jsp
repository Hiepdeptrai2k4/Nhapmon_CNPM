
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
                                    <h4 class="card-title">Đơn hàng</h4>
                                 </div>
                              </div>
                              <div class="iq-card-body">
                                 <ul class="list-inline p-0 m-0" id="cartCheckout">
                                 
                                 <c:forEach var="entry" items="${billItemDetail}">
                                    <c:if test="${billItemDetail.size() > 0}">
                                    <li class="checkout-product">
                                       <div class="row align-items-center">
                                          <div class="col-sm-2">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="<c:url value = "/assets/user/${ entry.book.bookImg }"/>" alt=""></a>
                                             </span>
                                          </div>
                                          <div class="col-sm-4">
                                             <div class="checkout-product-details">
                                                <h5>${ entry.book.title }</h5>
                                                <p class="text-success">Còn hàng</p>
                                                <div class="price">
                                                   <h5><fmt:formatNumber value="${ entry.book.price*9/10 }" type="number" groupingUsed="true" pattern="#,##0" /> ₫</h5>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="row">
                                                <div class="col-sm-10">
                                                   <div class="row align-items-center mt-2">
                                                      <div class="col-sm-7 col-md-6">
                                                         
                                                         <p type="text" id="quantity${entry.book.bookID }" class="quantity-style" >${ entry.quantity }</p>
                                                         
                                                      </div>
                                                      <div class="col-sm-5 col-md-6">
                                                         <span class="product-price"><fmt:formatNumber value="${ entry.book.price*9/10*entry.quantity }" type="number" groupingUsed="true" pattern="#,##0" /> ₫</span>
                                                      </div>
                                                   </div>
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
                                    <span id="totalPrice">-<fmt:formatNumber value="0" type="number" groupingUsed="true" pattern="#,##0" /> đ</span>
                                 </div>
                                 <hr>
                                 <p><b>Chi tiết</b></p>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>${ billDetail.name }</span>
                                    
                                 </div>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>${ billDetail.phone }</span>
                                    
                                 </div>
                                 <div class="d-flex justify-content-between mb-1" >
                                    <span>${ billDetail.address }</span>
                                    
                                 </div>
                                 
                                 <hr>
                                 <div class="d-flex justify-content-between">
                                    <span class="text-dark"><strong>Tổng</strong></span>
                                    <span class="text-dark" id="finalPrice"><strong><fmt:formatNumber value="${ billDetail.total }" type="number" groupingUsed="true" pattern="#,##0" /> đ</strong></span>
                                 </div>
                                 <c:if test="${billItemDetail.size() > 0}">
                                 <a id="place-order" href="javascript:void();" class="btn btn-primary d-block mt-3 next">Hủy đơn</a>
                                 </c:if>
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
                  
                  
               </div>
            </div>
         </div>
      </div>
      <!-- Wrapper END -->
</body>
