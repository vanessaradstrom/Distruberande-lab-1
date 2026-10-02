package ui;

import bo.ItemFacade;

import java.util.Collection;

public class ItemController {

    public static Collection<ItemInfo> getItems() {
        return ItemFacade.getItems();
    }
}