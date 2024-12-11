package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAuthors implements RowMapper<Authors>{
	@Override
	public Authors mapRow(ResultSet rs, int rowNum) throws SQLException {
		Authors author = new Authors();
		author.setAuthorID(rs.getInt("AuthorID"));
		author.setAuthorName(rs.getString("AuthorName"));
		author.setAuthorImg(rs.getString("AuthorImg"));
		author.setInformation(rs.getString("Information"));
		return author;
	}

}
