package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BooksDao;
import BookStore.Entity.Books;
@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private BooksDao booksDao;
	
	@Override
	public List<Books> GetDataBookCategory(int id) {
		
		return booksDao.GetDataBookCategory(id);
	}

}
