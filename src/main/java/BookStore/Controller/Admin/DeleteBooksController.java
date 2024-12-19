package BookStore.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Service.Admin.AddBookServiceImpl;

@Controller
public class DeleteBooksController extends BaseAdminController{
	 @Autowired
	    private AddBookServiceImpl addBookService;
	 
	

	 @RequestMapping(value = "/admin/xoa-sach/{id}", method = RequestMethod.GET)
	 public ModelAndView DeleteBook(@PathVariable("id") int id) {
		 int count = addBookService.DeleteBookByID(id);
			if(count > 0) {
				_mvShare.addObject("status", "Xóa sách thành công ");
			}
			else {
				_mvShare.addObject("status", "Xóa sách thất bại ");
			}
			_mvShare.setViewName("redirect:/admin/admin-books");
			
			return _mvShare;
	 }


}
