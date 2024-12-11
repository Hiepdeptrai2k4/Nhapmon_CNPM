package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBigBooks implements RowMapper<BigBooks>{
public BigBooks mapRow(ResultSet rs, int rowNum) throws SQLException {
	BigBooks bigBook = new BigBooks();
	bigBook.setBookID(rs.getInt("BookID"));
	bigBook.setTitle(rs.getString("Title"));
	bigBook.setAuthorID(rs.getInt("AuthorID"));
	bigBook.setDescription(rs.getString("Description"));
	bigBook.setPrice(rs.getDouble("Price"));
	bigBook.setStock(rs.getInt("Stock"));
	bigBook.setGenreID(rs.getInt("GenreID"));
	bigBook.setBookImg(rs.getString("BookImg"));
	bigBook.setYear(rs.getInt("Year"));
	bigBook.setFavor(rs.getInt("Favor"));
	bigBook.setGenreName(rs.getString("GenreName"));
	bigBook.setAuthorName(rs.getString("AuthorName"));
	return bigBook;
}
}