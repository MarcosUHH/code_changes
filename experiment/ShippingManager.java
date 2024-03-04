package experiment;

public class ShippingManager {

    /**
     * Computes the shipping cost of an order. If the order weight is lower or equal 5, the shipping cost is 7 USD,
     * if the weight is higher than 5 and lower or equal 18, the shipment cost is 10 USD, otherwise it is 20 USD.
     * Then, the method charges an import fee based on the shipping costs of the order.
     * If the order is shipped to a country other than the US, Canada, Mexico, and the United Kingdom,
     * the shipping cost doubles.
     * @param totalWeight - the weight of the order
     * @param destinationAddress - the address to which the order must be shipped
     * @return the total shipping costs
     */
    public double computeShippingCosts(double totalWeight, OnlineCustomer.Address destinationAddress){
        double shippingCost = 0;
        if(totalWeight <= 5) {
            shippingCost = 7;
        }
        if(totalWeight > 5 && totalWeight <= 18) {
            shippingCost = 10;
        }
        if(totalWeight > 18) {
            shippingCost = 20;
        }
        switch (destinationAddress.getCountry()) {
            case "USA":
                shippingCost = shippingCost * 1.2;
                break;
            case "Canada":
                shippingCost = shippingCost * 1.18;
                break;
            case "Mexico":
                shippingCost = shippingCost * 1.35;
                break;
            case "UK":
                shippingCost = shippingCost * 1.27;
            default:
                shippingCost = shippingCost * 2;
        }
        return shippingCost;
    }
}