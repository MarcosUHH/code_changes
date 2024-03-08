#!/bin/bash

# Clear the content of CostCalculator.java
printf "" > CostCalculator.java

# Write the new content to CostCalculator.java without adding a newline
printf "package experiment;\n" >> CostCalculator.java
printf "\n" >> CostCalculator.java
printf "import java.util.*;\n" >> CostCalculator.java
printf "\n" >> CostCalculator.java
printf "public class CostCalculator {\n" >> CostCalculator.java
printf "\n" >> CostCalculator.java
printf "    /**\n" >> CostCalculator.java
printf "     * Returns the discount rate based on the membership level of the customer.\n" >> CostCalculator.java
printf "     * Customers at level 1 do not receive any discount.\n" >> CostCalculator.java
printf "     * Customers at level 2 to 4 receive a 10% discount.\n" >> CostCalculator.java
printf "     * Customers from level 5 included receive a 25% discount.\n" >> CostCalculator.java
printf "     * @param membershipLevel - the level of membership of the customer\n" >> CostCalculator.java
printf "     * @return the discount rate applied to the customer\n" >> CostCalculator.java
printf "     */\n" >> CostCalculator.java
printf "    public double getSaleDiscountRate(int membershipLevel){\n" >> CostCalculator.java
printf "        //TODO\n" >> CostCalculator.java
printf "        return 0;\n" >> CostCalculator.java
printf "    }\n" >> CostCalculator.java
printf "\n" >> CostCalculator.java
printf "    /**\n" >> CostCalculator.java
printf "     * Computes the total cost of the items bought by a customer (including the shipping costs).\n" >> CostCalculator.java
printf "     * If an item is on sale, a discount is applied.\n" >> CostCalculator.java
printf "     * @param items - the list of items in the order\n" >> CostCalculator.java
printf "     * @param membershipLevel - the level of membership of the customer\n" >> CostCalculator.java
printf "     * @param shippingCosts - the shipping costs of the order\n" >> CostCalculator.java
printf "     * @return the total cost of the items\n" >> CostCalculator.java
printf "     */\n" >> CostCalculator.java
printf "    public double computeTotalCost(List<Item> items, int membershipLevel, double shippingCosts) {\n" >> CostCalculator.java
printf "        //TODO\n" >> CostCalculator.java
printf "        return 0;\n" >> CostCalculator.java
printf "    }\n" >> CostCalculator.java
printf "}\n" >> CostCalculator.java


#!/bin/bash

# Clear the content of Item.java
printf "" > Item.java

# Write the new content to Item.java without adding a newline
printf "package experiment;\n" >> Item.java
printf "\n" >> Item.java
printf "import java.time.*;\n" >> Item.java
printf "\n" >> Item.java
printf "public class Item {\n" >> Item.java
printf "\n" >> Item.java
printf "    private int id;\n" >> Item.java
printf "    private String name;\n" >> Item.java
printf "    private double price;\n" >> Item.java
printf "    private double weight;\n" >> Item.java
printf "    private boolean onSale;\n" >> Item.java
printf "    private LocalDate expirationDate;\n" >> Item.java
printf "\n" >> Item.java
printf "    public Item(int id, String name, double price, double weight, boolean onSale, LocalDate expirationDate){\n" >> Item.java
printf "        this.id = id;\n" >> Item.java
printf "        this.name = name;\n" >> Item.java
printf "        this.price = price;\n" >> Item.java
printf "        this.weight = weight;\n" >> Item.java
printf "        this.onSale = onSale;\n" >> Item.java
printf "        this.expirationDate = expirationDate;\n" >> Item.java
printf "    }\n" >> Item.java
printf "\n" >> Item.java
printf "    public int getId(){ return id; }\n" >> Item.java
printf "\n" >> Item.java
printf "    public double getPrice(){ return price; }\n" >> Item.java
printf "\n" >> Item.java
printf "    public double getWeight(){ return weight; }\n" >> Item.java
printf "\n" >> Item.java
printf "    public boolean isOnSale(){ return onSale; }\n" >> Item.java
printf "\n" >> Item.java
printf "    /**\n" >> Item.java
printf "     * Applies a discount if the item is close to its expiration date.\n" >> Item.java
printf "     * If the item expires in less than 7 days, a discount of 0.05 is applied\n" >> Item.java
printf "     * for each day passed.\n" >> Item.java
printf "     */\n" >> Item.java
printf "    public void updateExpirationDiscount(){\n" >> Item.java
printf "        //TODO\n" >> Item.java
printf "    }\n" >> Item.java
printf "}\n" >> Item.java

#!/bin/bash

# Clear the content of OnlineBasket.java
printf "" > OnlineBasket.java

# Write the new content to OnlineBasket.java without adding a newline
printf "package experiment;\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "import java.util.*;\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "public class OnlineBasket {\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    private List<Item> items;\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    public OnlineBasket(){\n" >> OnlineBasket.java
printf "        this.items = new ArrayList<>();\n" >> OnlineBasket.java
printf "    }\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    /**\n" >> OnlineBasket.java
printf "     * Adds an item to the basket\n" >> OnlineBasket.java
printf "     * @param item - the item to add to the basket\n" >> OnlineBasket.java
printf "     */\n" >> OnlineBasket.java
printf "    public void addToBasket(Item item){ items.add(item); }\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    /**\n" >> OnlineBasket.java
printf "     * Removes an item from the basket\n" >> OnlineBasket.java
printf "     * @param itemId - the id of the item to remove\n" >> OnlineBasket.java
printf "     */\n" >> OnlineBasket.java
printf "    public void removeItemFromBasket(int itemId){ items.remove(itemId); }\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    /**\n" >> OnlineBasket.java
printf "     * Returns the list of items currently in the basket\n" >> OnlineBasket.java
printf "     * @return items in the basket\n" >> OnlineBasket.java
printf "     */\n" >> OnlineBasket.java
printf "    public List<Item> getItemsInBasket(){\n" >> OnlineBasket.java
printf "        return items;\n" >> OnlineBasket.java
printf "    }\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    /**\n" >> OnlineBasket.java
printf "     * Computes the shipping costs of the items in the basket\n" >> OnlineBasket.java
printf "     * @param destinationAddress - the address where the items are shipped\n" >> OnlineBasket.java
printf "     * @return the shipping costs of the items\n" >> OnlineBasket.java
printf "     */\n" >> OnlineBasket.java
printf "    public double finalizeOrder(OnlineCustomer.Address destinationAddress) {\n" >> OnlineBasket.java
printf "        //TODO\n" >> OnlineBasket.java
printf "        return 0;\n" >> OnlineBasket.java
printf "    }\n" >> OnlineBasket.java
printf "\n" >> OnlineBasket.java
printf "    /**\n" >> OnlineBasket.java
printf "     * Computes the total weight of the items in the basket\n" >> OnlineBasket.java
printf "     * @return the total weight of the items in the order\n" >> OnlineBasket.java
printf "     */\n" >> OnlineBasket.java
printf "    private double computeBasketItemsWeight(){\n" >> OnlineBasket.java
printf "        double totalWeight = 0;\n" >> OnlineBasket.java
printf "        for(Item item : items) {\n" >> OnlineBasket.java
printf "            totalWeight += item.getWeight();\n" >> OnlineBasket.java
printf "        }\n" >> OnlineBasket.java
printf "        return totalWeight;\n" >> OnlineBasket.java
printf "    }\n" >> OnlineBasket.java
printf "}\n" >> OnlineBasket.java

#!/bin/bash

# Clear the content of OnlineCustomer.java
printf "" > OnlineCustomer.java

# Write the new content to OnlineCustomer.java without adding a newline
printf "package experiment;\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "import java.time.*;\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "public class OnlineCustomer {\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    private String username;\n" >> OnlineCustomer.java
printf "    private Address address;\n" >> OnlineCustomer.java
printf "    private int membershipLevel;\n" >> OnlineCustomer.java
printf "    private LocalDate registrationDate;\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    public OnlineCustomer(String username, String address, int postalCode,\n" >> OnlineCustomer.java
printf "                          String country, int membershipLevel, LocalDate registrationDate){\n" >> OnlineCustomer.java
printf "        this.username = username;\n" >> OnlineCustomer.java
printf "        this.address = new Address(address, postalCode, country);\n" >> OnlineCustomer.java
printf "        this.membershipLevel = membershipLevel;\n" >> OnlineCustomer.java
printf "        this.registrationDate = registrationDate;\n" >> OnlineCustomer.java
printf "    }\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    public int getMembershipLevel() {\n" >> OnlineCustomer.java
printf "        return membershipLevel;\n" >> OnlineCustomer.java
printf "    }\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    public Address getAddress(){ return address; }\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    /**\n" >> OnlineCustomer.java
printf "     * Checks for how long a customer has been registered and updates their membership level accordingly.\n" >> OnlineCustomer.java
printf "     * If a customer has been registered for at least 1 year its membership level is equivalent to the\n" >> OnlineCustomer.java
printf "     * number of years since their registration.\n" >> OnlineCustomer.java
printf "     * The highest level of membership is 10.\n" >> OnlineCustomer.java
printf "     * @param membership - the current membership of a customer\n" >> OnlineCustomer.java
printf "     * @return the updated membership level\n" >> OnlineCustomer.java
printf "     */\n" >> OnlineCustomer.java
printf "    private int updateMembership(int membership){\n" >> OnlineCustomer.java
printf "        //TODO\n" >> OnlineCustomer.java
printf "        return 0;\n" >> OnlineCustomer.java
printf "    }\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "    public class Address{\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "        private String address;\n" >> OnlineCustomer.java
printf "        private int postalCode;\n" >> OnlineCustomer.java
printf "        private String country;\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "        public Address(String address, int postalCode, String country){\n" >> OnlineCustomer.java
printf "            this.address = address;\n" >> OnlineCustomer.java
printf "            this.postalCode = postalCode;\n" >> OnlineCustomer.java
printf "            this.country = country;\n" >> OnlineCustomer.java
printf "        }\n" >> OnlineCustomer.java
printf "\n" >> OnlineCustomer.java
printf "        public String getCountry(){ return country; }\n" >> OnlineCustomer.java
printf "    }\n" >> OnlineCustomer.java
printf "}\n" >> OnlineCustomer.java

#!/bin/bash

# Clear the content of ShippingManager.java
printf "" > ShippingManager.java

# Write the new content to ShippingManager.java
echo "package experiment;" >> ShippingManager.java
echo "" >> ShippingManager.java
echo "public class ShippingManager {" >> ShippingManager.java
echo "" >> ShippingManager.java
echo "    /**" >> ShippingManager.java
echo "     * Computes the shipping cost of an order. If the order weight is lower or equal 5, the shipping cost is 7 USD," >> ShippingManager.java
echo "     * if the weight is higher than 5 and lower or equal 18, the shipment cost is 10 USD, otherwise it is 20 USD." >> ShippingManager.java
echo "     * Then, the method charges an import fee based on the shipping costs of the order." >> ShippingManager.java
echo "     * If the order is shipped to a country other than the US, Canada, Mexico, and the United Kingdom," >> ShippingManager.java
echo "     * the shipping cost doubles." >> ShippingManager.java
echo "     * @param totalWeight - the weight of the order" >> ShippingManager.java
echo "     * @param destinationAddress - the address to which the order must be shipped" >> ShippingManager.java
echo "     * @return the total shipping costs" >> ShippingManager.java
echo "     */" >> ShippingManager.java
echo "    public double computeShippingCosts(double totalWeight, OnlineCustomer.Address destinationAddress){" >> ShippingManager.java
echo "        //TODO" >> ShippingManager.java
echo "        return 0;" >> ShippingManager.java
echo "    }" >> ShippingManager.java
echo "}" >> ShippingManager.java