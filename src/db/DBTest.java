package db;

import java.sql.Connection;

public class DBTest {

    public static void main(String[] args) {

        Connection con = DBManager.getConnection();

        if (con != null) {
            System.out.println("Database connection successful!");
        } else {
            System.out.println("Database connection failed!");
        }
    }
}