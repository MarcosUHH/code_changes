package experiment;

import java.util.*;

public class OnlineBasket {

    private HashMap<Integer, Item> items;

    public OnlineBasket(){
        this.items = new HashMap<>();
    }

    /**
     * Adds an item to the basket
     * @param item - the item to add to the basket
     */
    public void addToBasket(Item item){ items.put(item.getId(), item); }

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
        List<Item> itemsInBasket = new ArrayList<>();
        itemsInBasket.addAll(items.values());
        return itemsInBasket;
    }

    /**
     * Computes the shipping costs of the items in the basket
     * @param destinationAddress - the address where the items are shipped
     * @return the shipping costs of the items
     */
    public double finalizeOrder(OnlineCustomer.Address destinationAddress) {
        double basketWeight = computeBasketItemsWeight();
        ShippingManager shippingManager = new ShippingManager();
        return shippingManager.computeShippingCosts(basketWeight, destinationAddress);
    }

    /**
     * Computes the total weight of the items in the basket
     * @return the total weight of the items in the order
     */
    private double computeBasketItemsWeight(){
        double totalWeight = 0;
        for(Item item : items.values()) {
            totalWeight += item.getWeight();
        }
        return totalWeight;
    }
}