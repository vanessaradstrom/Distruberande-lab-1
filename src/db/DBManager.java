package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
    private static DBManager instance = null;
    private Connection con = null;

    private static DBManager getInstance() {
        if (instance == null)
            instance = new DBManager();
        return instance;
    }
    //håller kopplingen till databasen, Vi vill inte skapa koppling varje gång därav singelton


    private DBManager() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/webshop",
                    "root",
                    "123"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        return getInstance().con;
    }
}