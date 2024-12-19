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
