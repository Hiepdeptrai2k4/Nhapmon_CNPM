package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategorys implements RowMapper<Categorys>{
	@Override
	public Categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categorys category = new Categorys();
		category.setGenreID(rs.getInt("GenreID"));
		category.setGenreName(rs.getString("GenreName"));
		category.setDescription(rs.getString("Description"));
		return category;
	}
}

