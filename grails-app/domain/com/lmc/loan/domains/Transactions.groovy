package com.lmc.loan.domains

class Transactions {
    static mapping = {
        id name: 'trxid', generator: 'increment', column: 'TrxId'
        version column:'Updated'
    }

    static belongsTo = [loanno: SimpleInterestLoan]
    static constraints = {
        seqno unique: 'loanno'
    }

    Long trxid;
    int  loanno;
    int  customerpk;
    int  seqno;
    Date paymentdate;
    float amtpaid;
    float amtdue;
    float interestdue;
    int   interestdays;
    float principalremain;
    float principalchange;
}
