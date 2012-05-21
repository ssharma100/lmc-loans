package com.lmc.loan.domains

class Customer {

    static constraints = {
    }

    // One-To-One Mapping Of Domain
    Accounts accounts;
    SimpleInterestLoan loan;

    String first;
    String middle;
    String last;
    String address1;
    String address2;
    String city;
    String state;
    String zip4;
    String maintel;
    String alttel;
}
