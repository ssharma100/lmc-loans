package com.lmc.loan.domains

class SiLoaninfo {
    static mapping = {
        id column:'LoanNo'
        version false
    }
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
