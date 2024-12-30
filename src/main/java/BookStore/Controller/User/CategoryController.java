package BookStore.Controller.User;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import BookStore.Entity.Bills;
import BookStore.Entity.Search;
import BookStore.Service.User.CategoryServiceImpl;
import BookStore.Service.User.DataService;
import BookStore.Service.User.ProductServiceImpl;

@Controller
public class CategoryController extends BaseController{
	@Autowired
	CategoryServiceImpl categoryServiceImpl;
	@Autowired
	DataService dataService;
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@RequestMapping(value = {"/category/{id}"})
	public ModelAndView Index(@PathVariable int id,HttpSession session, Model model) {
		//ModelAndView mv= new ModelAndView("user/index");
		loadCart(session,model);
		loadBill(session,model);
		_mvShare.addObject("interestbooks",productServiceImpl.GetDataFavorBook(6));
		_mvShare.addObject("favorbooks",productServiceImpl.GetDataFavorBook(6));
		_mvShare.addObject("genre", _homeService.GetDataCategorys());
		_mvShare.addObject("authors", _homeService.GetDataAuthors());
		_mvShare.addObject("searchInfo", new Search());
		if(dataService.isSearch()==false) {
			_mvShare.addObject("listbook",categoryServiceImpl.GetDataBookCategory(id));
		}
		else {
			_mvShare.addObject("listbook",dataService.getListBook());
		}
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/category");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/search"}, method =RequestMethod.POST)
	public ModelAndView Search(@ModelAttribute("searchInfo") Search search) {
		String title = search.getBar();    
	    String author = search.getAuthor();
	    String genres = search.getGenres(); 
	    
	    	
	    
	    try {
	        title = URLEncoder.encode(title, "UTF-8");
	        author = URLEncoder.encode(author, "UTF-8");
	        genres = URLEncoder.encode(genres, "UTF-8");
	        
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace(); 
	    }

	   
	    String redirectUrl = "/search?title=" + title + "&genres=" + genres + "&author=" + author;

	    
	    _mvShare.setViewName("redirect:" + redirectUrl);
	    return _mvShare;
	}
	@RequestMapping(value = {"/search"}, method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "title", required = false) String title,
                       
                         @RequestParam(value = "genres", required = false) String genres,
                         @RequestParam(value = "author", required = false) String author,
                         Model model,HttpSession session) {
        
        
		_mvShare.addObject("interestbooks",productServiceImpl.GetDataFavorBook(6));
		_mvShare.addObject("favorbooks",productServiceImpl.GetDataFavorBook(6));
		_mvShare.addObject("genre", _homeService.GetDataCategorys());
		_mvShare.addObject("authors", _homeService.GetDataAuthors());
		loadCart(session,model);
		loadBill(session,model);
		_mvShare.addObject("searchInfo", new Search());
		
		_mvShare.addObject("listbook",categoryServiceImpl.searchBooks(title, author, genres));
		
		//_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/category");
		return _mvShare;
    }
}
