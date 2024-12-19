package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.BigBooks;
import BookStore.Entity.MapperBigBooks;

@Repository
public class BigBooksDao extends BaseDao{
	public List<BigBooks> GetDataBigBook(){
		List<BigBooks> list = new ArrayList<BigBooks>();
		StringBuffer  sql = new StringBuffer();
		sql.append("select * from books, authors, genres ");
		sql.append("where books.AuthorID = authors.AuthorID ");
		sql.append("and books.GenreID = genres.GenreID");
		list = _jdbcTemplate.query(sql.toString(), new MapperBigBooks());
		return list;
	} 
	
	
}
