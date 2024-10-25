package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBooks implements RowMapper<Books> {

	@Override
	public Books mapRow(ResultSet rs, int rowNum) throws SQLException {
		Books books = new Books();
		books.setBookID(rs.getInt("BookID"));
		books.setTitle(rs.getString("Title"));
		books.setAuthorID(rs.getInt("AuthorID"));
		books.setDescription(rs.getString("Description"));
		books.setPrice(rs.getDouble("Price"));
		books.setStock(rs.getInt("Stock"));
		books.setGenreID(rs.getInt("GenreID"));
		books.setBookImg(rs.getString("BookImg"));
		books.setYear(rs.getInt("Year"));
		books.setFavor(rs.getInt("Favor"));
		return books;
	}

}
