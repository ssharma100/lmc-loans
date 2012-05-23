package com.lmc.loan

class AccountsController {
    List accts
    def scaffold = com.lmc.loan.domains.Accounts
    
    def handleSearch = {
        accts = com.lmc.loan.domains.Accounts.list()
        render(view: "summaryResults")
    }
    
    def showAddScreen = {
    }
}
