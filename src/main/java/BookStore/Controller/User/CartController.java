package BookStore.Controller.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import BookStore.Entity.CartItems;
import BookStore.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController{
	
	@Autowired 
	CartServiceImpl cartService;
	
	// POST endpoint để tăng counter
    @PostMapping("/addcart/{id}")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> AddCart(HttpSession session, @PathVariable int id, Model model) {
    	HashMap<Integer, CartItems> cart = (HashMap<Integer, CartItems>)session.getAttribute("cart");
    	if (cart==null) {
    		cart = new HashMap<Integer, CartItems>();
    	}
    	
    	cart = cartService.AddCart(id, cart);
    	session.setAttribute("cart", cart);
    	model.addAttribute("cart", cart);
    	Map<String, Object> response = new HashMap<>();
        response.put("size", cart.size()); // Số lượng sản phẩm trong giỏ hàng

        // Danh sách các sản phẩm trong giỏ hàng
        List<Map<String, Object>> items = new ArrayList<>();
        for (CartItems item : cart.values()) {
            Map<String, Object> itemData = new HashMap<>();
            itemData.put("title", item.getBook().getTitle());
            itemData.put("bookImg", item.getBook().getBookImg());
            itemData.put("price", item.getBook().getPrice());
            itemData.put("quantity", item.getQuantity()); // Nếu có số lượng
            itemData.put("bookID", item.getBookId());
            items.add(itemData);
        }
        response.put("cart", items); // Thêm danh sách sản phẩm vào phản hồi

        return ResponseEntity.ok(response); // Trả về phản hồi với mã trạng thái 200
          
    }
    @PostMapping("/deletecart/{id}")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> DeleteCart(HttpSession session, @PathVariable int id, Model model) {
    	HashMap<Integer, CartItems> cart = (HashMap<Integer, CartItems>)session.getAttribute("cart");
    	if (cart==null) {
    		cart = new HashMap<Integer, CartItems>();
    	}
    	System.out.print("Delete "+id);
    	cart = cartService.DeleteCart(id, cart);
    	session.setAttribute("cart", cart);
    	model.addAttribute("cart", cart);
    	Map<String, Object> response = new HashMap<>();
        response.put("size", cart.size()); // Số lượng sản phẩm trong giỏ hàng

        // Danh sách các sản phẩm trong giỏ hàng
        List<Map<String, Object>> items = new ArrayList<>();
        for (CartItems item : cart.values()) {
            Map<String, Object> itemData = new HashMap<>();
            itemData.put("title", item.getBook().getTitle());
            itemData.put("bookImg", item.getBook().getBookImg());
            itemData.put("price", item.getBook().getPrice());
            itemData.put("quantity", item.getQuantity()); // Nếu có số lượng
            itemData.put("bookID", item.getBookId());
            items.add(itemData);
        }
        response.put("cart", items); // Thêm danh sách sản phẩm vào phản hồi

        return ResponseEntity.ok(response); // Trả về phản hồi với mã trạng thái 200
          
    }
}
