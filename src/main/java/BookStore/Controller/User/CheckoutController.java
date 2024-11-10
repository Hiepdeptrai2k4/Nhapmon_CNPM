package BookStore.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.CartItems;
import BookStore.Service.User.CartServiceImpl;





@Controller
public class CheckoutController extends BaseController{

	@Autowired
	CartServiceImpl cartService;
	
	@RequestMapping(value = {"/checkout"})
	public ModelAndView Index(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		HashMap<Integer, CartItems> cart = loadCart(session,model); 
		
    	
		_mvShare.addObject("totalprice",cartService.totalPrice(cart));
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/checkout");
		return _mvShare;
	}
}
