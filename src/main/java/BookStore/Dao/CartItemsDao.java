package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import BookStore.Entity.CartItems;
import BookStore.Entity.MapperCartItems;
import BookStore.Entity.Users;


@Repository
public class CartItemsDao extends BaseDao {
	
	
	
	public List<CartItems> GetCartItems(int userID) {
		List<CartItems> list = new ArrayList<CartItems>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM cartItems ");
		sql.append("WHERE UserID = " + userID);
		list = _jdbcTemplate.query(sql.toString(), new MapperCartItems());
		return list;
	}
	
	
	
	public int checkCart(int userID,int bookID) {
		List<CartItems> list = new ArrayList<CartItems>();
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM cartItems ");
		sql.append("WHERE UserID = " + userID+" ");
		sql.append("AND BookID = " + bookID+" ");
		list = _jdbcTemplate.query(sql.toString(), new MapperCartItems());
		if(list.isEmpty() == true ) {
			return 0;
		}
		else return 1;
	}
	public int AddCart(int userID, CartItems cartItem) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO ");
		sql.append("cartitems ");
		sql.append("( ");
		sql.append(" UserID, ");
		sql.append(" BookID, ");
		sql.append(" quantity ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+userID + "', ");
		sql.append(" '"+cartItem.getBookId() + "', ");
		sql.append(" '"+1 + "' ");
		sql.append(")");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int EditCart(int userID, int bookID,int quantity) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE ");
		sql.append("cartitems ");
		sql.append("SET ");
		sql.append(" quantity = " + quantity +" ");
		sql.append("WHERE UserID = " + userID+" ");
		sql.append("AND BookID = " + bookID+" ");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	
	
	public int DeleteCart(int userID, int bookID) {
		StringBuffer  sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM cartitems ");
		sql.append("WHERE UserID = " + userID+" ");
		sql.append("AND BookID = " + bookID+" ");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int Test(String s) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO ");
		sql.append("genres ");
		sql.append("(`GenreID`, `GenreName`, `Description`) ");
		sql.append(" VALUES ");
		sql.append("( ");
		sql.append("NULL, ");
		sql.append("'Stm', ");
		sql.append("'"+s+"' ");
		sql.append(") ");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
}
