package BookStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Entity.Authors;
import BookStore.Entity.BigBooks;
import BookStore.Entity.Books;
import BookStore.Entity.Categorys;

@Service
public interface IHomeService {
	@Autowired
	public List<Books> GetDataBook();
	
	@Autowired
	public List<Authors> GetDataAuthors();

	@Autowired
	public List<Categorys> GetDataCategorys();
	
	@Autowired
	public List<BigBooks> GetDataBigBook();
}
