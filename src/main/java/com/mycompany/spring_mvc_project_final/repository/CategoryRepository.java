package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.CategoryEntity;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<CategoryEntity,Integer> {
    CategoryEntity findByCategoryId (int categoryId);


//    CategoryEntity findByName(String categoryName);
}
