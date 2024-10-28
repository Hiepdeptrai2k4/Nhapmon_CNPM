package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BooksDao;
import BookStore.Entity.Books;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	private BooksDao booksDao;
	
	@Override
	public Books GetDataBookById(int id) {
		Books book = new Books();
		book = booksDao.GetDataBookById(id);
		return book;
	}

}
