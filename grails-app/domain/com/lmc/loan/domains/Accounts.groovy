package com.lmc.loan.domains

class Accounts {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
    }
    
    static constraints = {
        customer (nullable: true)
        loan (nullable: true)
        cosigner_id (nullable: true, blank: true)
        stmtAddress1 (nullable: false, blank: false)
        stmtAddress2 (nullable: true, blank: true)
        stmtState (blank: false, minSize: 2, maxSize:2)
        stmtZip4 (blank: false, minSize: 5, maxSize:5)
    }

    Customer customer
    SimpleInterestLoan loan
    
    // Field Mapping Of The Underlying Persistence Object
    int loanno
    String stmtAddress1
    String stmtAddress2
    String stmtCity
    String stmtState
    String stmtZip4   
    Long cosigner_id
}
