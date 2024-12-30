package BookStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Authors;
import BookStore.Entity.Categorys;
import BookStore.Service.Admin.AddCategoryServiceImpl;

@Controller
public class AddCategorysController extends BaseAdminController{
	@Autowired
	AddCategoryServiceImpl addCategoryService = new AddCategoryServiceImpl();
	
	@RequestMapping(value = "/admin/them-danh-muc", method = RequestMethod.GET)
	public ModelAndView ThemDanhMuc() {
		_mvShare.addObject("category", new Categorys());	
		_mvShare.setViewName("admin/add/addcategorys");
		
		return _mvShare;
	}

	@RequestMapping(value = "/admin/them-danh-muc", method = RequestMethod.POST)
	public ModelAndView Addcategory(@ModelAttribute("category") Categorys category) {
		int count = addCategoryService.AddCategory(category);
		if(count > 0) {
			_mvShare.addObject("status", "Thêm danh mục thành công ");
		}
		else {
			_mvShare.addObject("status", "Thêm danh mục thất bại ");
		}
		_mvShare.setViewName("redirect:/admin/admin-category");
		
		return _mvShare;
	}
	
}
