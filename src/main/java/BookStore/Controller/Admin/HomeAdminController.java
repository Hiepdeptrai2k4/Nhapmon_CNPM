package BookStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeAdminController extends BaseAdminController{
	
	
	@RequestMapping(value = {"/admin", "/index", "/admin/dashboard"})
	public ModelAndView Index() {
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.addObject("bigBook", _homeService.GetDataBigBook());
		_mvShare.addObject("profile", profilesSevice.GetDataProfiles());
		_mvShare.addObject("cartItem", cartItemsService.GetDataCartItems());
		_mvShare.addObject("bills", billsService.GetDataAllBill());
		_mvShare.setViewName("admin/index");
		return _mvShare;
	}
	
	
	

	@RequestMapping(value = {"/admin/admin-books"})
	public ModelAndView Books() {
		ModelAndView mv= new ModelAndView("admin/books");
		mv.addObject("bigBook", _homeService.GetDataBigBook());
		return mv;
	}
}
