package bo;

import db.ItemDB;
import java.util.Collection;

public class Item {

    private String name;
    private String desc;
    private int id;
    private double price;

    static public Collection searchItems(String group) {
        return ItemDB.serchItems(group);
    }

    protected Item(int id, String name, String desc, double price) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public double getPrice() {
        return price;
    }
}