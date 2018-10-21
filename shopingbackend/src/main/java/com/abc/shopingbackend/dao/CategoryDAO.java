package com.abc.shopingbackend.dao;

import java.util.List;

import com.abc.shopingbackend.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();
	Category get(int id);
}
