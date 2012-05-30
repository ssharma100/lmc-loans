package com.lmc.loan

class TransactionsController {
    List trxs
    
    def scaffold = com.lmc.loan.domains.Transactions
    
    def handleSearch = {
        trxs = com.lmc.loan.domains.Transactions.findAllByLoanno(params.loanno)
        flash.loanno = params.loanno
        render(view: "summaryResults")
    }

    def handleAdd = {
        def loan = com.lmc.loan.domains.SimpleInterestLoan.findByLoanno(params.loanno)
        // Figure The Current Value For Loan Payment - Pre-Calc What Can Be Done
        // Find The Last Transaction
        def trx = com.lmc.loan.domains.Transactions.find("from Transactions as tx where tx.loanno='" + params.loanno + "' order by tx.seqno desc limit 1")
        println ("Current Sequence: " + trx.seqno)
        render(view: "showAddScreen", model: [simpleinterestloan: loan, lasttrx: trx])
    }

}
