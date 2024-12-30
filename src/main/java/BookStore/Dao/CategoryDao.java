package BookStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import BookStore.Entity.Categorys;
import BookStore.Entity.MapperCategorys;

@Repository
public class CategoryDao extends BaseDao{
	public List<Categorys> GetDataCategorys() {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM genres";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	public Categorys GetCategorybyID(int id) {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM genres WHERE GenreID="+id+" ";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list.get(0);
	}
	public int AddCategory(Categorys category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO genres ");
		sql.append("( ");
		sql.append("   GenreName, ");
		sql.append("   Description ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+category.getGenreName()+"', ");
		sql.append("   '"+category.getDescription()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	public int DeleteCategory(int id) {
		StringBuffer  sql = new StringBuffer();
		
		
		sql.append("DELETE FROM genres ");
		
		sql.append("WHERE ");
		
		sql.append("GenreID="+id+" ");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
		
	};
	
	public int EditCategory(Categorys category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE ");
		sql.append("genres SET ");
		
		sql.append("GenreName='"+category.getGenreName()+"', ");
		sql.append("Description='"+category.getDescription()+"' ");
		sql.append("WHERE ");
		
		sql.append("GenreID="+category.getGenreID()+" ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
}
