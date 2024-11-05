package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Books;

@Service
public interface IProductService {
	@Autowired
	public Books GetDataBookById(int id);
	public List<Books> GetDataSomeBook(int num);
	public List<Books> GetDataFavorBook(int num);
}
