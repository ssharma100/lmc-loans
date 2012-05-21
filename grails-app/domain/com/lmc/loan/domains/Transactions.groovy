package com.lmc.loan.domains

class Transactions {
    static mapping = {
        id column:'TrxId'
        version column:'Updated'
    }

    static belongsTo = [simpleInterestLoan: SimpleInterestLoan]
    static constraints = {
    }

    Long trxid;
    int loanno;
    int customerpk;
    int seqno;
    Date paymentdate;
    float amtpaid;
    float amtdue;
    float interestdue;
    int interestdays;
    float principalremain;
    float principalchange;
}
