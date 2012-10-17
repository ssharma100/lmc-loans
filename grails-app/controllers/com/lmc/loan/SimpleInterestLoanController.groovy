package com.lmc.loan

class SimpleInterestLoanController {

    def scaffold = com.lmc.loan.domains.SimpleInterestLoan
    
    def getDetail = {
        // Find The Item As Requested.
        def loan = com.lmc.loan.domains.SimpleInterestLoan.findByLoanno(params.loanno)
        // Compute The Transaction Information
        def trxs = com.lmc.loan.domains.Transactions.findAllByLoanno(params.loanno)
        flash.paymentCount = trxs.size();
        println("Transactions: " + trxs.size())
        def trx = com.lmc.loan.domains.Transactions.find("from Transactions as tx where tx.loanno='" + params.loanno + "' order by tx.seqno desc limit 1")
        println("Last Transaction: " + trx);
        flash.lastPayment = trx;
        render(view: "showDetails", model: [simpleinterestloan: loan])
    }
}
