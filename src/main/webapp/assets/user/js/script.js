/**
 * 
 */
function increaseCounter() {
            fetch('/BookStore/increase-counter', {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                }
            })
            .then(response => response.text()) // Nhận dữ liệu trả về từ server
            .then(data => {
                document.getElementById("counter").innerText = data; // Cập nhật số đếm
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
        function addCart(id) {
        	console.log('Error:', id);
            fetch('/BookStore/addcart/'+id, {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                }
            })
            .then(response => response.json()) // Nhận dữ liệu trả về từ server
            .then(data => {
            	console.log('Data returned from server:', data); // Kiểm tra dữ liệu trả về

                if (data && data.size !== undefined) {
                    document.getElementById("cartSize1").innerText = data.size;
                    

                    // Cập nhật view giỏ hàng
                    updateCartView(data.cart); // Gọi hàm cập nhật view
                    document.getElementById("cartSize2").innerText = data.size;
                } else {
                    console.error("Size not found in the response");
                    
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
        
        function deleteCart(id,event) {
			event.stopPropagation();
        	console.log('Error:', id);
            fetch('/BookStore/deletecart/'+id, {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                }
            })
            .then(response => response.json()) // Nhận dữ liệu trả về từ server
            .then(data => {
            	console.log('Data returned from server:', data); // Kiểm tra dữ liệu trả về

                if (data && data.size !== undefined) {
                    document.getElementById("cartSize1").innerText = data.size;
                    

                    // Cập nhật view giỏ hàng
                    updateCartView(data.cart); // Gọi hàm cập nhật view
                    document.getElementById("cartSize2").innerText = data.size;
                } else {
                    console.error("Size not found in the response");
                    
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
        
        function updateCartView(carts) {
   			
            
            let cartHtml = `<div class="bg-primary p-3">
                <h5 class="mb-0 text-white">Giỏ Hàng<small class="badge badge-light float-right pt-1" id="cartSize2">0</small></h5>
            </div>`;

            carts.forEach(item => {
            	  console.log(item);
				var formattedPrice = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(item.price);
                cartHtml += `
                <a href="#" class="iq-sub-card">
                    <div class="media align-items-center">
                        <div class="">
                            <img class="rounded" src="/BookStore/assets/user/${item.bookImg}" alt="">
                        </div>
                        <div class="media-body ml-3">
                            <h6 class="mb-0 ">${ item.title }</h6>
                            <p class="mb-0">${ formattedPrice} đ </p>
                        </div>
                        <div class="float-right font-size-24 text-danger" onclick="deleteCart(${item.bookID},event)"><i class="ri-close-fill"></i></div>
                    </div>
                </a>`;
            });
            
            
            document.getElementById("cartContent").innerHTML = cartHtml; // Cập nhật nội dung giỏ hàng
        }
        function deleteCartCheckout(id) {
			
        	console.log('Error:', id);
            fetch('/BookStore/deletecart/'+id, {
                method: 'POST',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                }
            })
            .then(response => response.json()) // Nhận dữ liệu trả về từ server
            .then(data => {
            	console.log('Data returned from server:', data); // Kiểm tra dữ liệu trả về

                if (data && data.size !== undefined) {
                    
                    

                    // Cập nhật view giỏ hàng trong check out
                    updateCartViewCheckout(data.cart); // Gọi hàm cập nhật view
                    updatePrice(data.totalprice);
                } else {
                    console.error("Size not found in the response");
                    
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
        function updateCartViewCheckout(carts) {
   			
            
            let cartHtml = ``;

            carts.forEach(item => {
            	  console.log(item);
				var formattedPrice = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(item.price);
				var formattedPriceSale = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(item.price*9/10);
                cartHtml += `
                <li class="checkout-product">
                                       <div class="row align-items-center">
                                          <div class="col-sm-2">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="/BookStore/assets/user/${ item.bookImg }" alt=""></a>
                                             </span>
                                          </div>
                                          <div class="col-sm-4">
                                             <div class="checkout-product-details">
                                                <h5>${ item.title }</h5>
                                                <p class="text-success">Còn hàng</p>
                                                <div class="price">
                                                   <h5>${formattedPriceSale} ₫</h5>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="row">
                                                <div class="col-sm-10">
                                                   <div class="row align-items-center mt-2">
                                                      <div class="col-sm-7 col-md-6">
                                                         <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                                                         <input type="text" id="quantity" value="${ item.quantity }">
                                                         <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                                                      </div>
                                                      <div class="col-sm-5 col-md-6">
                                                         <span class="product-price">${formattedPriceSale} ₫</span>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-sm-2">
                                                   <a href="javascript:void();" class="text-dark font-size-20" onclick="deleteCartCheckout(${item.bookID})"><i class="ri-delete-bin-7-fill"></i></a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </li>`;
            });
            
            
            document.getElementById("cartCheckout").innerHTML = cartHtml; // Cập nhật nội dung giỏ hàng
        }
        function updatePrice(totalPrice) {
   			
            
            
			document.getElementById("cartSize2").innerText = data.size;
            	var sale=totalPrice/10;
				var formattedTotalPrice = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(totalPrice);
				var formattedSalePrice = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(sale);
				var formattedFinalPrice = new Intl.NumberFormat('en-US', {
					minimumFractionDigits: 0
				}).format(totalPrice-sale);
				document.getElementById("totalPrice").innerText = formattedTotalPrice;
				document.getElementById("sale").innerText = formattedSalePrice;
				document.getElementById("finalPrice").innerText = formattedFinalPrice;
                
                
            
            
        }