package com.example.doan_ck.service;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Image;
import com.example.doan_ck.modal.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ImagesService {

    public static ImagesService getInstance() {
        return new ImagesService();
    }

    public List<Product> getImgForProducts (List<Product> list){
        List<Image> images = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("\tSELECT `imageID`, `product_id`,`name`,`url`,`status` \n" +
                            "\tFROM images WHERE images.`status`=0 ")
                    .mapToBean(Image.class)
                    .stream().collect(Collectors.toList());
        });
        ArrayList a= new ArrayList<String>();

        for (Product p: list) {
            for (Image i: images) {
                if(p.getProductID().equals(i.getProduct_id())) {
                    a.add(i.getUrl());
                }
            }
            p.setImage(a.stream().toList());
            a.clear();
        }
        return list;
    }
}
