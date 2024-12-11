package BookStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategorysAdminController extends BaseAdminController {
	@RequestMapping(value = {"/admin/admin-category"})
	public ModelAndView Category() {
		_mvShare.addObject("category", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/category");
		
		return _mvShare;
	}

}
