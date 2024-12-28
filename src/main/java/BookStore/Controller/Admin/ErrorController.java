package BookStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorController {
	@RequestMapping(value = {"/error/deny"})
	public ModelAndView Author() {
		
		
		return new ModelAndView("admin/deny");
	}
}
