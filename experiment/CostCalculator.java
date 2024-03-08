package experiment;

import java.util.*;

public class CostCalculator {

    /**
     * Returns the discount rate based on the membership level of the customer.
     * Customers at level 1 do not receive any discount.
     * Customers at level 2 to 4 receive a 10 0iscount.
     * Customers from level 5 included receive a 25 0iscount.
     * @param membershipLevel - the level of membership of the customer
     * @return the discount rate applied to the customer
     */
    public double getSaleDiscountRate(int membershipLevel){
        double discountRate = 0;
        if(membershipLevel > 2 && membershipLevel < 5) {
            discountRate = 0.1;
        }
        if(membershipLevel >= 5) {
            discountRate = 0.25;
        }
        return discountRate;
    }

    /**
     * Computes the total cost of the items bought by a customer (including the shipping costs).
     * If an item is on sale, a discount is applied.
     * @param items - the list of items in the order
     * @param membershipLevel - the level of membership of the customer
     * @param shippingCosts - the shipping costs of the order
     * @return the total cost of the items
     */
    public double computeTotalCost(List<Item> items, int membershipLevel, double shippingCosts) {
        double totalPrice = shippingCosts;
        for (Item item : items) {
            if (item.isOnSale()) {
                totalPrice += item.getPrice() * (1 - getSaleDiscountRate(membershipLevel));
            } else {
                totalPrice += item.getPrice();
            }
        }
        return totalPrice;
    }
}
