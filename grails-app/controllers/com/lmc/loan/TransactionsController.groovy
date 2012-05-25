package com.lmc.loan

class TransactionsController {
    List trxs
    def scaffold = com.lmc.loan.domains.Transactions
    
    def handleSearch = {
        trxs = com.lmc.loan.domains.Transactions.findAll()
        render(view: "summaryResults")
    }
}
