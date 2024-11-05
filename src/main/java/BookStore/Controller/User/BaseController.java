package BookStore.Controller.User;

import java.util.HashMap;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.CartItems;
import BookStore.Service.User.HomeServiceImpl;


@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	@ModelAttribute("cart")
    public HashMap<Integer, CartItems> loadCart(HttpSession session) {
		HashMap<Integer, CartItems> cart = (HashMap<Integer, CartItems>)session.getAttribute("Cart");
		if (cart==null) {
    		cart = new HashMap<Integer, CartItems>();
    	}
    	session.setAttribute("Cart", cart);
        return cart;
    }
	
	@PostConstruct
	public ModelAndView Init () {
		//_mvShare.addObject("menus",_homeService.GetDataMenus());
		return _mvShare;
	}
}
