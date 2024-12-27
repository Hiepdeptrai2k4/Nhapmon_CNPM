package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.CartItems;
import BookStore.Entity.MapperCartItems;

@Repository
public class CartItemsDao extends BaseDao {
	public List<CartItems> GetDataCartItems(){
		List<CartItems> list = new ArrayList<CartItems>();
		StringBuffer  sql = new StringBuffer();
		sql.append("select * from cartitems ");
		list = _jdbcTemplate.query(sql.toString(), new MapperCartItems());
		return list;
	}
}
