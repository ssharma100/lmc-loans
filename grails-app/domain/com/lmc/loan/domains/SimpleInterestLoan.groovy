package com.lmc.loan.domains

class SimpleInterestLoan {
    static mapping = {
        id name: 'id', generator: 'increment', column: 'id'
    }
    
    static constraints = {
        percentageRate (nullable: false, blank: false)
        annualDays (nullable: false, blank: true, maxSize:365)
        loanTerm (nullable: false, blank: false, inList: [6, 12, 24, 36, 48, 60, 72])
        payPeriod (nullable: false, blank: false, inList: ["MONTHLY"])
        amountDue (nullable: false, blank: false, scale: 2, maxSize: 2000)
        dueDay (nullable: false, blank:false, range: 1..31)
        graceDays (nullable: false, blank: false, range: 1..30 )
        latePenalty (nullable: false, blank: false, scale: 2, maxSize: 50)
        origAmount (nullable: false, blank: true, scale: 2, maxSize: 100000)
        prePaymentPenalty (nullable: false, blank:true, scale:2, maxSize: 10)
        
        siLoan (nullable: true)
        
    }

    static belongsTo = [siLoan:SimpleInterestLoan]
   
    float percentageRate
    int annualDays
    int loanTerm
    float amountDue
    int dueDay
    int graceDays
    String payPeriod
    float latePenalty
    // Loan Origination Information
    float origAmount
    Date origDate
    float prePaymentPenalty
}
