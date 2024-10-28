package BookStore.Controller.Admin;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseAdminController {
	
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init () {
		//_mvShare.addObject("menus",_homeService.GetDataMenus());
		return _mvShare;
	}
}
