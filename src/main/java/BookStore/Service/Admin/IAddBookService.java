package BookStore.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import BookStore.Entity.Books;

@Service
public interface IAddBookService {
	public int AddBook(Books book);
	public int DeleteBookByID(int id);
	public List<Books> GetDataBook();
	public Books GetDataBookById(int id);
	public int EditBook(Books book);
}
