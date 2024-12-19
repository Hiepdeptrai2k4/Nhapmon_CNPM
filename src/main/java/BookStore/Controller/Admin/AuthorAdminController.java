package BookStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthorAdminController extends BaseAdminController {
	@RequestMapping(value = {"/admin/admin-author"})
	public ModelAndView Author() {
	
		_mvShare.addObject("author", _homeService.GetDataAuthors());
		_mvShare.setViewName("admin/author");
		return _mvShare;
	}

}
