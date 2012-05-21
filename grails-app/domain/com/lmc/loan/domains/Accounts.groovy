package com.lmc.loan.domains

class Accounts {

    static constraints = {}

    Customer customer
    Customer cosigner
    
    // Field Mapping Of The Underlying Persistence Object
    int loanno;
    String stmtAddress1;
    String stmtAddress2;
    String stmtCity;
    String stmtState;
    String stmtZip4;    
}
