package BookStore.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.BooksDao;
import BookStore.Entity.Books;

@Service
public class AddBookServiceImpl implements IAddBookService {
	@Autowired
	BooksDao booksDao = new BooksDao();

	public int AddBook(Books book) {
		return booksDao.AddBook(book);
	}
	
	public int DeleteBookByID(int id) {
		try {
			return booksDao.DeleteBookByID(id); // Gọi phương thức repository
		} catch (Exception e) {
			e.printStackTrace();
			return 0; // Thất bại
		}
	}

	public List<Books> GetDataBook() {
		return booksDao.GetDataBook();
	}
	
	@Override
	public Books GetDataBookById(int id) {
		Books book = new Books();
		book = booksDao.GetDataBookById(id);
		return book;
	}

	@Override
	public int EditBook(Books book) {
		return booksDao.EditBook(book);
	}
	

}
