package com.lmc.loan.domains

class SimpleInterestLoan {
    static constraints = {
    }

    int loanno;
    float percentagerate;
    int annualdays;
    int loanterm;
    float amountdue;
    int dueday;
    int gracedays;
    float latepenalty;
}