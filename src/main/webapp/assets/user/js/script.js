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
            	   	
                cartHtml += `
                <a href="#" class="iq-sub-card">
                    <div class="media align-items-center">
                        <div class="">
                            <img class="rounded" src="assets/user/${item.bookImg}" alt="">
                        </div>
                        <div class="media-body ml-3">
                            <h6 class="mb-0 ">${ item.title }</h6>
                            <p class="mb-0">${ item.price }đ</p>
                        </div>
                        <div class="float-right font-size-24 text-danger" onclick="deleteCart(${item.bookID},event)"><i class="ri-close-fill"></i></div>
                    </div>
                </a>`;
            });
            cartHtml += `
            <div class="d-flex align-items-center text-center p-3">
                                       <a class="btn btn-primary mr-2 iq-sign-btn" href="checkout.html" role="button">Giỏ Hàng</a>
                                       <a class="btn btn-primary iq-sign-btn" href="checkout.html" role="button">Thanh Toán</a>
                                    </div>`;
            
            document.getElementById("cartContent").innerHTML = cartHtml; // Cập nhật nội dung giỏ hàng
        }