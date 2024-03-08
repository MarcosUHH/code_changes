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
        //TODO
        return 0;
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
        //TODO
        return 0;
    }
}
