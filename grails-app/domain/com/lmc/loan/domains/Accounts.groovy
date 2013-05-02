package com.lmc.loan.domains

class Accounts {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
    }
    
    static constraints = {
        borrower (nullable: true)
        coBorrower (nullable: true)
        siLoan (nullable: true)
    }

    Customer borrower
    Customer coBorrower
    SimpleInterestLoan siLoan
}
