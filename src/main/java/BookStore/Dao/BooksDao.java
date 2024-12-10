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
	public Books GetDataBookById(int id) {
		List<Books> list = new ArrayList<Books>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM books ");
		sql.append("WHERE BookID ="+id);
		
		list = _jdbcTemplate.query(sql.toString(), new MapperBooks());
		return list.get(0);
	}
	public List<Books> GetDataSomeBook(int num) {
		List<Books> list = new ArrayList<Books>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM books ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT "+num);
		list = _jdbcTemplate.query(sql.toString(), new MapperBooks());
		return list;
	}
	public List<Books> GetDataFavorBook(int num) {
		List<Books> list = new ArrayList<Books>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM books ");
		sql.append("WHERE Favor = 2 ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT "+num);
		list = _jdbcTemplate.query(sql.toString(), new MapperBooks());
		return list;
	}
	public List<Books> GetDataBookCategory(int id) {
		List<Books> list = new ArrayList<Books>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM books ");
		sql.append("WHERE GenreID = "+id+" ");
		sql.append("ORDER BY RAND() ");
		sql.append("LIMIT 12");
		list = _jdbcTemplate.query(sql.toString(), new MapperBooks());
		return list;
	}
	
	
	
	
}
