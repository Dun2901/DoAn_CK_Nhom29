package com.example.doan_ck.service;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Image;
import com.example.doan_ck.modal.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class ImagesService {

    public static ImagesService getInstance() {
        return new ImagesService();
    }

    public List<Product> getImgForProducts(List<Product> list) {
        List<Image> images = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT `imageID`, `product_id`,`name`,`url`,`status` " +
                            "FROM images WHERE images.`status`=0 ")
                    .mapToBean(Image.class)
                    .stream().collect(Collectors.toList());
        });

        for (Product p : list) {
            // Tìm hình ảnh tương ứng với sản phẩm
            Optional<Image> matchingImage = images.stream()
                    .filter(i -> p.getProductID().equals(i.getProduct_id()))
                    .findFirst();

            // Nếu tìm thấy, lấy URL hình ảnh và đặt vào trường imageUrl của sản phẩm
            matchingImage.ifPresent(image -> p.setImageUrl(image.getUrl()));
        }

        return list;
    }


}
