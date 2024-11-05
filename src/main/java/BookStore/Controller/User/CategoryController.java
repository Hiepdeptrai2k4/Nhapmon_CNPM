package BookStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Service.User.CategoryServiceImpl;
import BookStore.Service.User.ProductServiceImpl;

@Controller
public class CategoryController extends BaseController{
	@Autowired
	CategoryServiceImpl categoryServiceImpl;
	
	@RequestMapping(value = {"/category/{id}"})
	public ModelAndView Index(@PathVariable int id) {
		//ModelAndView mv= new ModelAndView("user/index");
		
		
		_mvShare.addObject("listbook",categoryServiceImpl.GetDataBookCategory(id));
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/category");
		return _mvShare;
	}
}
