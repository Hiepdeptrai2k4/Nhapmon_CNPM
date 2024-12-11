package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.AuthorDao;
import BookStore.Dao.BigBooksDao;
import BookStore.Dao.BooksDao;
import BookStore.Dao.CategoryDao;
import BookStore.Entity.Authors;
import BookStore.Entity.BigBooks;
import BookStore.Entity.Books;
import BookStore.Entity.Categorys;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private BooksDao booksDao;
	@Autowired
	private AuthorDao authorDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private BigBooksDao bigBooksDao;
	
	@Override
	public List<Books> GetDataBook() {
		
		return booksDao.GetDataBook();
	}
	@Override
	public List<Authors> GetDataAuthors() {
		return authorDao.GetDataAuthors();
	}
	
	@Override
	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}
	@Override
	public List<BigBooks> GetDataBigBook() {
		return bigBooksDao.GetDataBigBook();
	}

}







