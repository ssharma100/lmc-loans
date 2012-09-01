package com.lmc.loan

class AccountsController {
    
    def scaffold = com.lmc.loan.domains.Accounts
    
    def handleSearch = {
        
        List accts = com.lmc.loan.domains.Accounts.list()
        println ("Serach Results Found: " + accts.size())
        render(view: "summaryResults", model: [accountList: accts])
    }
    
    def handleAdd = {
        println("Processing Create Account Request For Loan No: " + params.loanno + " Account No: " + params.account_no + "....");
        // Create A New Customer
        println("Using Account Record:" + params)
        def accounts = new com.lmc.loan.domains.Accounts(params)
        
        if (!accounts.save(flush: true, insert: true, onfailError: true)) {
            accounts.errors.each {
                println it
            }
        }
        println("Created Account & Customer Records...")
        render(view: "showAccountDetailScreen")
    }
    
    def prepareAdd = {
        render(view: "showAddScreen")
    }
    
}
