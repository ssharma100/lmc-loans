package com.lmc.loan.domains

class SimpleInterestLoan {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
    }
    
    static constraints = {
        loanno (nullable: false, blank: false)
        percentagerate (nullable: false, blank: false)
        annualdays (nullable: false, blank: true, maxSize:365)
        loanterm (nullable: false, blank: false, inList: [6, 12, 24, 36, 48, 60, 72])
        payperiod (nullable: false, blank: false, inList: ["MONTHLY"])
        amountdue (nullable: false, blank: false, scale: 2, maxSize: 2000)
        dueday (nullable: false, blank:false, range: 1..31)
        gracedays (nullable: false, blank: false, range: 1..30 )
        latepenalty (nullable: false, blank: false, scale: 2, maxSize: 50)
        origAmount (nullable: false, blank: true, scale: 2, maxSize: 100000)
        prePaymentPenalty (nullable: false, blank:true, scale:2, maxSize: 10)
        
        account (nullable: true)
        
    }

    static belongsTo = [account:Accounts]
    
    int loanno
    float percentagerate
    int annualdays
    int loanterm
    float amountdue
    int dueday
    int gracedays
    String payperiod
    float latepenalty
    // Loan Origination Information
    float origAmount
    Date origDate
    float prePaymentPenalty
}
