package com.lmc.loan.domains

class SimpleInterestLoan {
    static constraints = {
    }

    int Loanno;
    float percentagerate;
    int annualdays;
    int loanterm;
    float amountdue;
    int dueday;
    int gracedays;
    float latepenalty;
}
