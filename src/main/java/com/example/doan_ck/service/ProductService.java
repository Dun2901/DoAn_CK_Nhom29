package com.example.doan_ck.service;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Product;
import java.util.StringTokenizer;
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

    public static Product getProductByID(String id) {
        Product product = JDBIConnector.get().withHandle(handle -> {
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
                            "    p.productID = ?;\n")
                    .bind(0, id)
                    .mapToBean(Product.class)
                    .findFirst()
                    .orElse(null); // Trả về null nếu không tìm thấy sản phẩm
        });
        return product;
    }


//    public static void main(String[] args) {
//        ProductService pro = new ProductService();
//        List<Product> list = pro.getAllProducts();
//
//        for(Product o : list) {
//            System.out.println(o);
//        }
//    }

    public static void main(String[] args) {
        String productIdToTest = "013";
        Product product = getProductByIDTest(productIdToTest);

        if (product != null) {
            System.out.println("Product found:");
            System.out.println(product.toString());
        } else {
            System.out.println("Product not found for ID: " + productIdToTest);
        }
    }

    private static Product getProductByIDTest(String id) {
        // Gọi hàm getProductByID từ lớp chứa hàm đó
        return getProductByID(id);
    }
}