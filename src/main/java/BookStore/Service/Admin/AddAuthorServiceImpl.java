package BookStore.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.AuthorDao;
import BookStore.Entity.Authors;

@Service
public class AddAuthorServiceImpl implements IAddAuthorService{
	@Autowired
	AuthorDao authorDao = new AuthorDao();
	
	@Override
	public int AddAuthor(Authors author) {
		return authorDao.AddAuthor(author);
	}

}
