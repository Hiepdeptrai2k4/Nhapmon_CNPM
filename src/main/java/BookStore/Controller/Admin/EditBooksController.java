package BookStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Books;
import BookStore.Service.Admin.AddBookServiceImpl;

@Controller
public class EditBooksController extends BaseAdminController{
	@Autowired
	AddBookServiceImpl addBookService = new AddBookServiceImpl();
	
	@RequestMapping(value = "/admin/sua-sach/{id}", method = RequestMethod.GET)
	public ModelAndView SuaSach(@PathVariable("id") int id) {
		 Books book = addBookService.GetDataBookById(id); // Lấy thông tin sách cần sửa
	    _mvShare.addObject("book", book);
		_mvShare.addObject("author", _homeService.GetDataAuthors());	
		_mvShare.addObject("category", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/add/editbooks");
		
		return _mvShare;
	}

	@RequestMapping(value = "/admin/sua-sach/{id}", method = RequestMethod.POST)
	public ModelAndView EditBooks(@ModelAttribute("book") Books book,@PathVariable("id") int id) {
		_mvShare.addObject("author", _homeService.GetDataAuthors());	
		_mvShare.addObject("category", _homeService.GetDataCategorys());

		int count = addBookService.EditBook(book);
		if(count > 0) {
			_mvShare.addObject("status", "Sửa sách thành công ");
		}
		else {
			_mvShare.addObject("status", "Sửa sách thất bại ");
		}
		_mvShare.setViewName("admin/add/editbooks");
		
		return _mvShare;
	}
}
