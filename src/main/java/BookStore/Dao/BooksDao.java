package BookStore.Dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.Books;
import BookStore.Entity.MapperBooks;



@Repository
public class BooksDao extends BaseDao {
	public List<Books> GetDataBook(){
		List<Books> list = new ArrayList<Books>();
		String sql = "SELECT * FROM books";
		list = _jdbcTemplate.query(sql, new MapperBooks());
		return list;
	} 
	
	
	
}
