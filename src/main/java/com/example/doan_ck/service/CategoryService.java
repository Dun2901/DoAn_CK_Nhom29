package com.example.doan_ck.service;


import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Category;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryService {

    public static CategoryService getInstance() {
        return new CategoryService();
    }

    public List<Category> listAllCategory (){
        List<Category> pro = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT `categoryID`,`name` FROM categories")
                    .mapToBean(Category.class)
                    .stream().collect(Collectors.toList());
        });
        return pro;
    }
    public String getNameByID (String id){
        List<Category> cate = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT `categoryID`,`name` FROM categories where categoryID=?")
                    .bind(0,id)
                    .mapToBean(Category.class)
                    .stream().collect(Collectors.toList());
        });
        return cate.get(0).getCategoryID();
    }
}
