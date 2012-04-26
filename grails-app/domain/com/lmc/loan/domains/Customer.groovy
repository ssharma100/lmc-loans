package com.lmc.loan.domains

class Customer {
    static mapping = {
        id column:'Pk'
        version false

    }
    static constraints = {
    }

    int pk;
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
