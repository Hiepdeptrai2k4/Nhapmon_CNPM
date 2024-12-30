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
public class CategorysAdminController extends BaseAdminController {
	@Autowired
	AddCategoryServiceImpl addCategoryService ;
	
	@RequestMapping(value = {"/admin/admin-category"})
	public ModelAndView Category() {
		_mvShare.addObject("category", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/category");
		
		return _mvShare;
	}
	@RequestMapping(value = {"/admin/admin-category/delete/{id}"})
	public ModelAndView DeleteCategory(@PathVariable int id) {
		addCategoryService.DeleteCategory(id);
		_mvShare.setViewName("redirect:/admin/admin-category");
		
		return _mvShare;
	}
	@RequestMapping(value = "/admin/sua-danh-muc/{id}", method = RequestMethod.GET)
	public ModelAndView SuaTacGiaIndex(@PathVariable int id) {
		_mvShare.addObject("category", addCategoryService.GetCategorybyId(id));
		
		_mvShare.setViewName("admin/add/editcategorys");
		
		return _mvShare;
	}
	@RequestMapping(value = "/admin/sua-danh-muc/{id}", method = RequestMethod.POST)
	public ModelAndView SuaTacGia(@PathVariable int id, @ModelAttribute("category") Categorys category) {
		//author.setAuthorID(id);
		category.setGenreID(id);
		addCategoryService.EditCategory(category);
		////addAuthorService.EditAuthor(author);
		_mvShare.setViewName("redirect:/admin/admin-category");
		
		return _mvShare;
	}
}
