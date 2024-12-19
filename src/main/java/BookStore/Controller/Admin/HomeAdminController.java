package BookStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeAdminController extends BaseAdminController{
	@RequestMapping(value = {"/admin", "/index"})
	public ModelAndView Index() {
		//ModelAndView mv= new ModelAndView("user/index");
		
		
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
