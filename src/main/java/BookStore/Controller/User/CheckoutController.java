package BookStore.Controller.User;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Bills;
import BookStore.Entity.CartItems;
import BookStore.Entity.Users;
import BookStore.Service.User.BillServiceImpl;
import BookStore.Service.User.CartServiceImpl;
import BookStore.Service.User.DataService;
import BookStore.Service.User.ProfilesServiceImpl;





@Controller
public class CheckoutController extends BaseController{
	@Autowired
	ProfilesServiceImpl profilesServiceImlp;
	@Autowired
	CartServiceImpl cartService;
	@Autowired 
	DataService dataService;
	@Autowired 
	BillServiceImpl billServiceImpl;
	
	@RequestMapping(value = {"/checkout"})
	public ModelAndView CheckOut(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		HashMap<Integer, CartItems> cart = loadCart(session,model); 
		_mvShare.addObject("informationForm", new Bills());
		Users user = (Users) session.getAttribute("LoginInfo");
		if(user!=null) _mvShare.addObject("profile",profilesServiceImlp.GetDataProfiles(user.getUserID()));
		
		
		_mvShare.addObject("totalprice",cartService.totalPrice(cart));
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/checkout");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/payment"})
	public ModelAndView Payment(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		HashMap<Integer, CartItems> cart = loadCart(session,model); 
		
		_mvShare.setViewName("user/payment");
		return _mvShare;
	}
	@RequestMapping(value = {"/payment/accept"})
	public ModelAndView PaymentAcc(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		HashMap<Integer, CartItems> cart = loadCart(session,model); 
		if(dataService.isBill()==false) {
			_mvShare.setViewName("redirect:/authen/login");
			return _mvShare;
		}
		Users user = (Users) session.getAttribute("LoginInfo");
		Bills bill = dataService.getBills();
		cart = billServiceImpl.addBills(user, bill, cart);
		session.removeAttribute("cart");
		session.setAttribute("cart", cart);
    	model.addAttribute("cart", cart);
		_mvShare.addObject("totalprice",cartService.totalPrice(cart));
		
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("redirect:/");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/checkout"}, method =RequestMethod.POST)
	public ModelAndView BillInfor(@ModelAttribute("informationForm") Bills bills) {
		
		dataService.setBills(bills);
		dataService.setIsBill(true);
		_mvShare.setViewName("redirect:/payment");
		return _mvShare;
	}
	
	
	
	
}
