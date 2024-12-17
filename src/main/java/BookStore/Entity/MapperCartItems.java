package BookStore.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCartItems implements RowMapper<CartItems>{

	@Override
	public CartItems mapRow(ResultSet rs, int rowNum) throws SQLException {
		CartItems cartItem = new CartItems();
		cartItem.setUserId(rs.getInt("UserID"));
		cartItem.setBookId(rs.getInt("BookID"));
		cartItem.setQuantity(rs.getInt("quantity"));
		
		return cartItem;
	}

}
