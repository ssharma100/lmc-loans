package com.lmc.loan.domains

class Accounts {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
        version column:'version'
    }
    
    static constraints = {
        customer (nullable: true)
        cosigner (nullable: true)
        stmtAddress2 (nullable: true)
        stmtState (blank: false, minSize: 2, maxSize:2)
        stmtZip4 (blank: false, minSize: 5, maxSize:5)
    }

    Customer customer
    
    // Field Mapping Of The Underlying Persistence Object
    int loanno
    String stmtAddress1
    String stmtAddress2
    String stmtCity
    String stmtState
    String stmtZip4   
    long cosigner
}
