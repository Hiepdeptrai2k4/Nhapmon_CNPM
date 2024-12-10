package BookStore.Controller.User;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Dao.CartItemsDao;
import BookStore.Entity.CartItems;
import BookStore.Service.User.ProductServiceImpl;

@Controller 
public class HomeController extends BaseController{
	@Autowired
	ProductServiceImpl productServiceImpl;
	@Autowired
	CartItemsDao cartItemsDao;
	
	
	 private int counter = 10; 
	
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		_mvShare.addObject("_12books",productServiceImpl.GetDataSomeBook(12));
		_mvShare.addObject("books",_homeService.GetDataBook());
		_mvShare.addObject("number",counter);
		//_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		
		//LoadCart
		HashMap<Integer, CartItems> cart = (HashMap<Integer, CartItems>) session.getAttribute("cart");
		if (cart == null) {
		    cart = new HashMap<Integer, CartItems>();
		    session.setAttribute("Cart", cart);
		}
		
		model.addAttribute("cart", cart);
		//end load cart
		
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/product"})
	public ModelAndView Product() {
		ModelAndView mv= new ModelAndView("user/product");
		
		return mv;
	}
	
	
	
	// POST endpoint để tăng counter
    @PostMapping("/increase-counter")
    @ResponseBody
    public int increaseCounter() {
        counter++;  // Tăng biến counter lên 1
        return counter;  // Trả về giá trị mới
    }
		
	
}
