package com.lmc.loan

class TransactionsController {

    def scaffold = com.lmc.loan.domains.Transactions
    
    def handleSearch = {
        render(view: "summaryResults")
    }
}
