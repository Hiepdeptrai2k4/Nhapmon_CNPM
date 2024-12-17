package BookStore.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.CartItems;
import BookStore.Entity.Users;
import BookStore.Service.User.AccountServiceImpl;
import BookStore.Service.User.CartServiceImpl;
import BookStore.Service.User.ProductServiceImpl;

@Controller
public class AuthenController extends BaseController {
	@Autowired
	AccountServiceImpl accountServiceImpl;
	@Autowired
	CartServiceImpl cartServiceImpl;
	
	@RequestMapping(value = {"/authen/signup"}, method =RequestMethod.GET)
	public ModelAndView SignUp(HttpSession session) {
		
		if(session.getAttribute("LoginInfo")==null)
		{
			_mvShare.setViewName("user/signup");
			_mvShare.addObject("user", new Users());
		}
		else {
			_mvShare.setViewName("redirect:/");
		}
		return _mvShare;
		
	}
	@RequestMapping(value = {"/authen/signup"}, method =RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountServiceImpl.AddAccount(user);
		if(count >0) {
			_mvShare.addObject("status", "Đăng ký thành công");
		}
		else {
			_mvShare.addObject("status", "Đăng ký thất bại");
		}
		_mvShare.setViewName("user/signup");
		return _mvShare;
	}
	@RequestMapping(value = {"/authen/login"}, method =RequestMethod.GET)
	public ModelAndView Login(HttpSession session) {
		if(session.getAttribute("LoginInfo")==null)
		{
			_mvShare.setViewName("user/login");
			_mvShare.addObject("user", new Users());
		}
		else {
			_mvShare.setViewName("redirect:/");
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/authen/login"}, method =RequestMethod.POST)
	public ModelAndView Login(HttpSession session , @ModelAttribute("user") Users user) {
		Users checkUser = accountServiceImpl.CheckAccount(user);
		if(checkUser != null) {
			_mvShare.setViewName("redirect:/");
			session.setAttribute("LoginInfo", checkUser);
			//Load Cart
			session.removeAttribute("cart");
			
			HashMap<Integer, CartItems> cart = new HashMap<Integer, CartItems>();
			cart = cartServiceImpl.LoadCart(checkUser.getUserID(),cart);
			session.setAttribute("cart", cart);
			
		}
		else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại");
		}
		return _mvShare;
	}
	@RequestMapping(value = {"/authen/logout"}, method =RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("cart");
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
}
