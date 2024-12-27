package BookStore.Controller.Admin;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Service.Admin.BillsServiceImpl;
import BookStore.Service.Admin.CartItemsServiceImpl;
import BookStore.Service.User.HomeServiceImpl;
import BookStore.Service.User.ProfilesServiceImpl;

@Controller
public class BaseAdminController {
	
	@Autowired
	HomeServiceImpl _homeService;
	@Autowired
	ProfilesServiceImpl profilesSevice;
	@Autowired
	CartItemsServiceImpl cartItemsService;
	@Autowired
	BillsServiceImpl billsService;;
	
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init () {
		//_mvShare.addObject("menus",_homeService.GetDataMenus());
		return _mvShare;
	}
}
