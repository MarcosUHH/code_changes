package experiment;

import java.util.*;

public class OnlineBasket {

    private List<Item> items;

    public OnlineBasket(){
        this.items = new ArrayList<>();
    }

    /**
     * Adds an item to the basket
     * @param item - the item to add to the basket
     */
    public void addToBasket(Item item){ items.add(item); }

    /**
     * Removes an item from the basket
     * @param itemId - the id of the item to remove
     */
    public void removeItemFromBasket(int itemId){ items.remove(itemId); }

    /**
     * Returns the list of items currently in the basket
     * @return items in the basket
     */
    public List<Item> getItemsInBasket(){
        return items;
    }

    /**
     * Computes the shipping costs of the items in the basket
     * @param destinationAddress - the address where the items are shipped
     * @return the shipping costs of the items
     */
    public double finalizeOrder(OnlineCustomer.Address destinationAddress) {
        //TODO
        return 0;
    }

    /**
     * Computes the total weight of the items in the basket
     * @return the total weight of the items in the order
     */
    private double computeBasketItemsWeight(){
        double totalWeight = 0;
        for(Item item : items) {
            totalWeight += item.getWeight();
        }
        return totalWeight;
    }
}
