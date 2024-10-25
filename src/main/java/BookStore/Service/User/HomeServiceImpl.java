package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BooksDao;
import BookStore.Entity.Books;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private BooksDao booksDao;
	@Autowired
	
	@Override
	public List<Books> GetDataBook() {
		
		return booksDao.GetDataBook();
	}


}







