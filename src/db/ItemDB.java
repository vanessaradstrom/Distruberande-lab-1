package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.Vector;

public class ItemDB extends bo.Item {

    public static Collection serchItems(String group) {

        Vector v = new Vector();

        try {

            Connection con = DBManager.getConnection();

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery(
                    "SELECT id, name, description, price FROM T_ITEM"
            );

            while (rs.next()) {

                int i = rs.getInt("id");

                String name = rs.getString("name");

                String desc = rs.getString("description");

                double price = rs.getDouble("price");

                v.addElement(
                        new ItemDB(i, name, desc, price)
                );
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }

        return v;
    }

    private ItemDB(int i, String name, String desc, double price) {

        super(i, name, desc, price);
    }
}