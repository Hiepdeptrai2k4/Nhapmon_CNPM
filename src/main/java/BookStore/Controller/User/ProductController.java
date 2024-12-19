package BookStore.Controller.User;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Service.User.HomeServiceImpl;
import BookStore.Service.User.ProductServiceImpl;

@Controller 
public class ProductController extends BaseController {
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value = {"/details/{id}"})
	public ModelAndView Index(@PathVariable int id,HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		loadCart(session,model);
		loadBill(session,model);
		_mvShare.addObject("book",productServiceImpl.GetDataBookById(id));
		_mvShare.addObject("fivebooks",productServiceImpl.GetDataSomeBook(5));
		_mvShare.addObject("favorbooks",productServiceImpl.GetDataFavorBook(6));
		//_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/product");
		return _mvShare;
	}
}
