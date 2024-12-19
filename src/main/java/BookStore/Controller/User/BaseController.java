package BookStore.Controller.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.CartItems;
import BookStore.Entity.Users;
import BookStore.Entity.Bills;
import BookStore.Service.User.BillServiceImpl;
import BookStore.Service.User.HomeServiceImpl;


@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	@Autowired
	BillServiceImpl _billServiceImpl;
	
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
	
	public HashMap<Integer, CartItems> loadCart(HttpSession session, Model model) {
		HashMap<Integer, CartItems> cart = (HashMap<Integer, CartItems>)session.getAttribute("cart");
		if (cart==null) {
    		cart = new HashMap<Integer, CartItems>();
    	}
		model.addAttribute("cart", cart);
		return cart;
	}
	@ModelAttribute("bill")
	public List<Bills> loadBill(HttpSession session, Model model) {
		List<Bills> bills = new ArrayList<Bills>();
		if(session.getAttribute("LoginInfo")==null) {
		
		return bills;
		}
		Users user = (Users) session.getAttribute("LoginInfo");
		bills= _billServiceImpl.getBills(user);
		return bills;
	}
	
	@PostConstruct
	public ModelAndView Init () {
		//_mvShare.addObject("menus",_homeService.GetDataMenus());
		
		return _mvShare;
	}
}
