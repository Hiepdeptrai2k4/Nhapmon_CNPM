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
	public int DeleteBookByID(int id) {
        String sql = "DELETE FROM books WHERE BookID = ?";
        
        return _jdbcTemplate.update(sql, id);
    }
    
    public int EditBook(Books book) {
        StringBuffer sql = new StringBuffer();
        sql.append("UPDATE books ");
        sql.append("SET ");
        sql.append("   Title = '" + book.getTitle() + "', ");
        sql.append("   GenreID = '" + book.getGenreID() + "', ");
        sql.append("   AuthorID = '" + book.getAuthorID() + "', ");
        sql.append("   Price = '" + book.getPrice() + "', ");
        sql.append("   Description = '" + book.getDescription() + "', ");
        sql.append("   Stock = '" + book.getStock() + "', ");
        sql.append("   BookImg = '" + book.getBookImg() + "' ");
        sql.append("WHERE ");
        sql.append("   BookID = '" + book.getBookID() + "'");

        int update = _jdbcTemplate.update(sql.toString());
        return update;
    }
	
    public int AddBook(Books book) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO books ");
		sql.append("( ");
		sql.append("   Title, ");
		sql.append("   GenreID, ");
		sql.append("   AuthorID, ");
		sql.append("   Price, ");
		sql.append("   Description, ");
		sql.append("   Stock, ");
		sql.append("   BookImg ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+book.getTitle()+"', ");
		sql.append("   '"+book.getGenreID()+"', ");
		sql.append("   '"+book.getAuthorID()+"', ");
		sql.append("   '"+book.getPrice()+"', ");
		sql.append("   '"+book.getDescription()+"', ");
		sql.append("   '"+book.getStock()+"', ");
		sql.append("   '"+book.getBookImg()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
}
