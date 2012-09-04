package com.lmc.loan.domains

class Customer {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
    }
    
    static constraints = {
        address2 (nullable: true, blank: true)
        maintel (nullable: false, blank: false)
        alttel (nullable:true, blank: true)
        middle (nullable: true, blank: true)
        state (blank: false, minSize: 2, maxSize:2)
        zip4 (blank: false, minSize: 5, maxSize:5)
        
        account (nullable: true)
    }    
    
    static belongsTo = [account:Accounts]
    
    String first
    String middle
    String last
    String address1
    String address2
    String city
    String state
    String zip4
    String maintel
    String alttel
}
