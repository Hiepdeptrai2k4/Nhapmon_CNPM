package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.Users;
import BookStore.Entity.Books;
import BookStore.Entity.MapperUsers;

@Repository
public class UsersDao extends BaseDao {
	public int AddAccount(Users user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO ");
		sql.append("users ");
		sql.append("( ");
		sql.append(" Username, ");
		sql.append(" PasswordHash, ");
		sql.append(" Email ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append(" '"+user.getUsername() + "', ");
		sql.append(" '"+user.getPasswordHash() + "', ");
		sql.append(" '"+user.getEmail() + "' ");
		sql.append(")");
		int insert= _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public Users GetUserByAcc(Users user) {
		String sql = "SELECT * FROM users WHERE Username='"+user.getUsername()+"'";
		List<Users> result = new ArrayList<Users>();
		result = _jdbcTemplate.query(sql, new MapperUsers());
		if(result.isEmpty()) return null;
		return result.get(0);
	}
}