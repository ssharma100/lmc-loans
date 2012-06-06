package com.lmc.loan

class AccountsController {
    List accts
    def scaffold = com.lmc.loan.domains.Accounts
    
    def handleSearch = {
        accts = com.lmc.loan.domains.Accounts.list()
        println ("Serach Results Found: " + accts.size())
        render(view: "summaryResults", model: [accountList: accts])
    }
    
    def handleAdd = {
        
    }
    
    def prepareAdd = {
        render(view: "showAddScreen")
    }
    
}
