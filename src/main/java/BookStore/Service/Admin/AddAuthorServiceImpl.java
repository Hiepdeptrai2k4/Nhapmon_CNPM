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

	@Override
	public int DeleteAuthor(int authorID) {
		// TODO Auto-generated method stub
		return authorDao.DeleteAuthors(authorID);
	}

	@Override
	public Authors GetAuthorbyid(int authorID) {
		// TODO Auto-generated method stub
		return authorDao.GetDataAuthorsByid(authorID);
	}

	@Override
	public int EditAuthor(Authors author) {
		// TODO Auto-generated method stub
		return authorDao.EditAuthors(author);
	}

}
