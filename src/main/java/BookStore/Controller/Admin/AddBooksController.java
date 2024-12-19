package BookStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Books;
import BookStore.Service.Admin.AddBookServiceImpl;

@Controller
public class AddBooksController extends BaseAdminController{
	@Autowired
	AddBookServiceImpl addBookService = new AddBookServiceImpl();
	
	@RequestMapping(value = "/admin/them-sach", method = RequestMethod.GET)
	public ModelAndView ThemSach() {
		_mvShare.addObject("book", new Books());	
		_mvShare.addObject("author", _homeService.GetDataAuthors());	
		_mvShare.addObject("category", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/add/addbooks");
		
		return _mvShare;
	}

	@RequestMapping(value = "/admin/them-sach", method = RequestMethod.POST)
	public ModelAndView AddBooks(@ModelAttribute("book") Books book) {
		_mvShare.addObject("author", _homeService.GetDataAuthors());	
		_mvShare.addObject("category", _homeService.GetDataCategorys());

		int count = addBookService.AddBook(book);
		if(count > 0) {
			_mvShare.addObject("status", "Thêm sách thành công ");
		}
		else {
			_mvShare.addObject("status", "Thêm sách thất bại ");
		}
		_mvShare.setViewName("admin/add/addbooks");
		
		return _mvShare;
	}
}
