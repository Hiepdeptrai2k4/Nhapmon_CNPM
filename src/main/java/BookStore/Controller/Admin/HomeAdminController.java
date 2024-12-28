package BookStore.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Users;
@Controller
public class HomeAdminController extends BaseAdminController{
	@RequestMapping(value = {"/admin", "/index"})
	public ModelAndView Index(HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		Users user = (Users) session.getAttribute("LoginInfo");
		if(user==null)
		{
			_mvShare.setViewName("redirect:/authen/login");
			_mvShare.addObject("user", new Users());
			return _mvShare;
		}
		if(!user.getUsername().equals("admin")) {
			_mvShare.setViewName("redirect:/error/deny");
			
			return _mvShare;
		}
		//_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("admin/index");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/admin/dashboard"})
	public ModelAndView Dashboard() {
		ModelAndView mv= new ModelAndView("admin/dashboard");
		
		return mv;
	}
	
	

	@RequestMapping(value = {"/admin/admin-books"})
	public ModelAndView Books() {
		ModelAndView mv= new ModelAndView("admin/books");
		mv.addObject("bigBook", _homeService.GetDataBigBook());
		return mv;
	}
}
