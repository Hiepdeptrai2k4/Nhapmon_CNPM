package BookStore.Service.Admin;

import org.springframework.stereotype.Service;

import BookStore.Entity.Authors;

@Service
public interface IAddAuthorService {
	public int AddAuthor(Authors author);
}
