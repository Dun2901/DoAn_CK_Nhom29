package com.example.doan_ck.db;

import com.example.doan_ck.modal.User;
import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

public class JDBIConnector {
    private static Jdbi jdbi;

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + DBProperties.getDbHost() + ":" + DBProperties.getDbPort() + "/" + DBProperties.getDbName());
        dataSource.setUser(DBProperties.getUsername());
        dataSource.setPassword(DBProperties.getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbi = Jdbi.create(dataSource);
    }

    private JDBIConnector() {

    }

    public static Jdbi get() {
        if (jdbi == null) {
            makeConnect();
        }
        return jdbi;
    }

    public static void main(String[] args) {
        List<User> users = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from users").mapToBean(User.class)
                    .stream().collect(Collectors.toList());
        });

        System.out.println(users);
    }
}