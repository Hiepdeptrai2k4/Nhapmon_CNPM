package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.Authors;
import BookStore.Entity.MapperAuthors;



@Repository
public class AuthorDao extends BaseDao{

	public List<Authors> GetDataAuthors() {
		List<Authors> list = new ArrayList<Authors>();
		String sql = "SELECT * FROM authors";
		list = _jdbcTemplate.query(sql, new MapperAuthors());
		return list;
	}
	public Authors GetDataAuthorsByid(int id) {
		List<Authors> list = new ArrayList<Authors>();
		String sql = "SELECT * FROM authors WHERE AuthorID="+id+" ";
		list = _jdbcTemplate.query(sql, new MapperAuthors());
		return list.get(0);
	}
	
	public int DeleteAuthors(int authorID) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE FROM authors ");
		
		sql.append("WHERE ");
		
		sql.append("AuthorID="+authorID+" ");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int EditAuthors(Authors author) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE `authors` SET ");
		
		sql.append("AuthorName='"+author.getAuthorName()+"', ");
		sql.append("Information='"+author.getInformation()+"' ");
		sql.append("WHERE ");
		
		sql.append("AuthorID="+author.getAuthorID()+" ");
		
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public int AddAuthor(Authors author) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO authors ");
		sql.append("( ");
		sql.append("   AuthorName, ");
		sql.append("   AuthorImg, ");
		sql.append("   Information ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+author.getAuthorName()+"', ");
		sql.append("   '"+author.getAuthorImg()+"', ");
		sql.append("   '"+author.getInformation()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
}
