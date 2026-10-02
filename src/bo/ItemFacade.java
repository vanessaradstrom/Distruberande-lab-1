package bo;

import ui.ItemInfo;

import java.util.ArrayList;
import java.util.Collection;

public class ItemFacade {

    public static Collection<ItemInfo> getItems() {

        Collection items = Item.searchItems("");

        ArrayList<ItemInfo> result = new ArrayList<>();

        for (Object obj : items) {

            Item item = (Item) obj;

            result.add(
                    new ItemInfo(
                            item.getId(),
                            item.getName(),
                            item.getDesc(),
                            item.getPrice()
                    )
            );
        }

        return result;
    }

    public static Item getItemById(int id) {

        Collection items = Item.searchItems("");

        for (Object obj : items) {

            Item item = (Item) obj;

            if (item.getId() == id) {
                return item;
            }
        }

        return null;
    }
}