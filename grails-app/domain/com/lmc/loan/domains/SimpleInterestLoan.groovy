package com.lmc.loan.domains

class SimpleInterestLoan {
    static constraints = {
        loanno (nullable: false, blank: false)
    }

    int loanno;
    float percentagerate;
    int annualdays;
    int loanterm;
    float amountdue;
    int dueday;
    int gracedays;
    float latepenalty;
    // Loan Origination Information
    float origAmount;
    Date origDate;
    float prePaymentPenalty;
}
