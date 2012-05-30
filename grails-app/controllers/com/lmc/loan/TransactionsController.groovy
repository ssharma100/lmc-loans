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
        
        render(view: "showAddScreen", model: [simpleinterestloan: loan])
    }

}
