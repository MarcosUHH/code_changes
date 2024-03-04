package experiment;

import java.time.*;

public class OnlineCustomer {

    private String username;
    private Address address;
    private int membershipLevel;
    private LocalDate registrationDate;

    public OnlineCustomer(String username, String address, int postalCode,
                          String country, int membershipLevel, LocalDate registrationDate){
        this.username = username;
        this.address = new Address(address, postalCode, country);
        this.membershipLevel = membershipLevel;
	    this.registrationDate = registrationDate;
    }

    public int getMembershipLevel() {
        membershipLevel = updateMembership(membershipLevel);
        return membershipLevel;
    }

    public Address getAddress(){ return address; }

    /**
     * Checks for how long a customer has been registered and updates their membership level accordingly.
     * If a customer has been registered for at least 1 year its membership level is equivalent to the
     * number of years since their registration.
     * The highest level of membership is 10.
     * @param membership - the current membership of a customer
     * @return the updated membership level
     */
    private int updateMembership(int membership){
        LocalDate today = LocalDate.now();
        Period membershipDuration = Period.between(registrationDate, today);
        int membershipDurationYears = membershipDuration.getYears();
        if(membershipDurationYears >= 1) {
            membership = membershipDurationYears;
        }
        if(membership > 10) {
            membership = 10;
        }
        return membership;
    }

    public class Address{

        private String address;
        private int postalCode;
        private String country;

        public Address(String address, int postalCode, String country){
            this.address = address;
            this.postalCode = postalCode;
            this.country = country;
        }

        public String getCountry(){ return country; }
    }
}