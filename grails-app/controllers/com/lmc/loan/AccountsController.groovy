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
        def customer = new com.lmc.loan.domains.Customer(params)
        // Create A Co-Signer
        def cosigner = null
        
        // Create The Account
        def account = new com.lmc.loan.domains.Accounts(params)
        customer.account = account
        
        
        println(" Account ID Set To " + account.id + " Customer ID Set To " + customer.id)
        if (!customer.save(flush: true, insert: true, onfailError: true)) {
            customer.errors.each {
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
