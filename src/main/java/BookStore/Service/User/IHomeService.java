package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Books;

@Service
public interface IHomeService {
	@Autowired
	public List<Books> GetDataBook();
	
}
