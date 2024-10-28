package BookStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Service.User.HomeServiceImpl;
import BookStore.Service.User.ProductServiceImpl;

@Controller 
public class ProductController extends BaseController {
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value = {"/user/details/{id}"})
	public ModelAndView Index(@PathVariable int id) {
		//ModelAndView mv= new ModelAndView("user/index");
		
		_mvShare.addObject("book",productServiceImpl.GetDataBookById(id));
		//_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/product");
		return _mvShare;
	}
}
