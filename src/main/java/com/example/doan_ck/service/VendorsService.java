package com.example.doan_ck.service;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.Vendor;

import java.util.List;
import java.util.stream.Collectors;

public class VendorsService {

    public static VendorsService getInstance() {
        return new VendorsService();
    }

    public List<Vendor> getVendors (){
        List<Vendor> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT `vendorID`,`name`,`status` FROM vendors")
                        .mapToBean(Vendor.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list;
    }

    public static void main(String[] args) {
        VendorsService ven = new VendorsService();
        List<Vendor> listV = ven.getVendors();

        for (Vendor o : listV) {
            System.out.println(o);
        }
    }
}
