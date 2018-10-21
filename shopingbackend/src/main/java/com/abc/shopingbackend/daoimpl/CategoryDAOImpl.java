
package com.abc.shopingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.abc.shopingbackend.dao.CategoryDAO;
import com.abc.shopingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();

	static {
		Category category = new Category();

		// adding first category
		category.setId(1);
		category.setName("Television");
		category.setDescription("this is some description for television!");
		category.setImageURL("cat_1.png");

		categories.add(category);

		// second category
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("this is some description for Mobile!");
		category.setImageURL("cat_2.png");

		categories.add(category);

		// Third category
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("this is some description for Laptop!");
		category.setImageURL("cat_3.png");

		categories.add(category);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {

			for(Category category : categories) {
				if(category.getId() == id) return category;
			}
		return null;
	}

}
