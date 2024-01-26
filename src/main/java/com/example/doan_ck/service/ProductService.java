package com.example.doan_ck.service;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Product;
import com.example.doan_ck.modal.User;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {

    public static ProductService getInstance() {
        return new ProductService();
    }

    public List<Product> getTopNewProduct(int n) {
        List<Product> pro = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT productID, cat_id,products.`name`, `description`,out_price,vendors.`name` as`vendor`, products.`status`, `deleteAt`, sum(prices.quanity) as quantity\n" +
                            "FROM products INNER JOIN vendors on products.vendor_id = vendors.vendorID INNER JOIN prices on prices.product_id= products.productID\n" +
                            "WHERE products.`status`=0 and vendors.`status`=0 \n" +
                            "GROUP BY  productID, cat_id,products.`name`, `description`,out_price,`vendor_id`, products.`status`, `deleteAt`\n" +
                            "order by productID DESC\n" +
                            "LIMIT ?;")
                    .bind(0, n)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
        return ImagesService.getInstance().getImgForProducts(pro);
    }

    public static List<Product> getTopProduct(int n) {
        List<Product> pro = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT productID, cat_id,products.`name`, `description`,out_price,vendors.`name` as`vendor`, products.`status`, `deleteAt`, sum(prices.quanity) as quantity\n" +
                            "FROM products INNER JOIN vendors on products.vendor_id = vendors.vendorID INNER JOIN prices on prices.product_id= products.productID\n" +
                            "WHERE products.`status`=0 and vendors.`status`=0  \n" +
                            "GROUP BY  productID, cat_id,products.`name`, `description`,out_price,`vendor_id`, products.`status`, `deleteAt`\n" +
                            "order by out_price DESC LIMIT ?\n")
                    .bind(0, n)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
        return ImagesService.getInstance().getImgForProducts(pro);
    }

    public List<Product> getAllProducts() {
        List<Product> products = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT\n" +
                            "    p.productID,\n" +
                            "    p.cat_id,\n" +
                            "    p.name,\n" +
                            "    p.description,\n" +
                            "    p.vendor_id,\n" +
                            "    p.status AS product_status,\n" +
                            "    p.deleteAt,\n" +
                            "    i.url AS image_url,\n" +
                            "    pr.in_price,\n" +
                            "    pr.out_price,\n" +
                            "    pr.quanity,\n" +
                            "    pr.import_date\n" +
                            "FROM\n" +
                            "    products p\n" +
                            "INNER JOIN\n" +
                            "    images i ON p.productID = i.product_id\n" +
                            "LEFT JOIN\n" +
                            "    prices pr ON p.productID = pr.product_id;\n")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
        return products;
    }

    public List<Product> getProductByVendor_ID (String id){
        List<Product> pro = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT\n" +
                            "    p.productID,\n" +
                            "    p.cat_id,\n" +
                            "    p.name,\n" +
                            "    p.description,\n" +
                            "    p.vendor_id,\n" +
                            "    p.status AS product_status,\n" +
                            "    p.deleteAt,\n" +
                            "    i.url AS image_url,\n" +
                            "    pr.in_price,\n" +
                            "    pr.out_price,\n" +
                            "    pr.quanity,\n" +
                            "    pr.import_date\n" +
                            "FROM\n" +
                            "    products p\n" +
                            "INNER JOIN\n" +
                            "    images i ON p.productID = i.product_id\n" +
                            "LEFT JOIN\n" +
                            "    prices pr ON p.productID = pr.product_id\n" +
                            "WHERE\n" +
                            "    p.vendor_id = ?")
                    .bind(0, id)
                    .mapToBean(Product.class).stream().collect(Collectors.toList());
        });
        return pro;
    }
    public String getNewID (){
        List<Product> pro = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT productID\n" +
                            "FROM products\n" +
                            "order by productID DESC\n" +
                            "LIMIT 1;")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
        return  (Integer.parseInt(pro.get(0).getProductID()) +1)+"" ;
    }
    public void addProduct (String productID, String cat_id, String name, String vendor_id, String image, String discription,  int quantity,int price, int in_price){
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO `products` VALUES (?, ?, ?, ?, ?, 0, NULL);")
                        .bind(0, productID)
                        .bind(1, cat_id)
                        .bind(2, name)
                        .bind(3, discription)
                        .bind(4, vendor_id)
                        .execute()
        );
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO `prices` VALUES (?, ?, ?, ?, NOW());")
                        .bind(0, productID)
                        .bind(1, in_price)
                        .bind(2, price)
                        .bind(3, quantity)
                        .execute()
        );
//
//        ImagesService.getInstance().insertImage(ImagesService.getInstance().getLastImageID(),productID,name,image);
    }
    public static void main(String[] args) {
        ProductService pro = new ProductService();
//        String list = pro.addProduct("2","23","phong","23","3");

//        System.out.println(list);


    }
}
