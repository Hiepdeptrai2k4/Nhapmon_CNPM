package BookStore.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BookStore.Dao.CategoryDao;
import BookStore.Entity.Categorys;

@Service
public class AddCategoryServiceImpl implements IAddCategoryService{
	@Autowired
	CategoryDao categoryDao = new CategoryDao();
	
	@Override
	public int AddCategory(Categorys category) {
		return categoryDao.AddCategory(category);
	}
	
}
