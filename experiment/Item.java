package experiment;

import java.time.*;

public class Item {

    private int id;
    private String name;
    private double price;
    private double weight;
    private boolean onSale;
    private LocalDate expirationDate;

    public Item(int id, String name, double price, double weight, boolean onSale, LocalDate expirationDate){
        this.id = id;
        this.name = name;
        this.price = price;
        this.weight = weight;
        this.onSale = onSale;
        this.expirationDate = expirationDate;
    }

    public int getId(){ return id; }

    public double getPrice(){ return price; }

    public double getWeight(){ return weight; }

    public boolean isOnSale(){ return onSale; }

    /**
     * Applies a discount if the item is close to its expiration date.
     * If the item expires in less than 7 days, a discount of 0.05 is applied
     * for each day passed.
     */
    public void updateExpirationDiscount(){
        //TODO
    }
}
