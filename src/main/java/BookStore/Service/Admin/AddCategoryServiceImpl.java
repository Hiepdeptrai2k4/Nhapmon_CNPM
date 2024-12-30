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

	@Override
	public int DeleteCategory(int id) {
		// TODO Auto-generated method stub
		return categoryDao.DeleteCategory(id);
	}

	@Override
	public Categorys GetCategorybyId(int id) {
		// TODO Auto-generated method stub
		return categoryDao.GetCategorybyID(id);
	}

	@Override
	public int EditCategory(Categorys category) {
		// TODO Auto-generated method stub
		return categoryDao.EditCategory(category);
	}
	
}
