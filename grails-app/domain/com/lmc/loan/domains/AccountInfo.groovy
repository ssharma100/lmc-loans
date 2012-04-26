package com.lmc.loan.domains

class AccountInfo {
    static mapping = {
        table 'ACCOUNTINFO'
        id column:'LoanNo'
        version false
    }
    static constraints = {
    }
    int loanno;
    int customerpk;
    int cosignerpk;
    String stmtAddress1;
    String stmtAddress2;
    String stmtCity;
    String stmtState;
    String stmtZip4;
    
}
