package com.lmc.loan

class AccountsController {
    
    def scaffold = com.lmc.loan.domains.Accounts
    
    def handleSearch = {
        List accts = com.lmc.loan.domains.Accounts.list()
        println ("Serach Results Found: " + accts.size())
        render(view: "summaryResults", model: [accountList: accts])
    }
    
    def handleAdd = {
        println("Processing Create Account Request For Loan No: " + params.loanno);
        // Create A New Customer
        def customer = new com.lmc.loan.domains.Customer(params)
        // Create A Co-Signer
        def cosigner = null
        // Create The Loan Information (Simple Interest Loans Only)
        def loan = new com.lmc.loan.domains.SimpleInterestLoan(params)
        
        // Create The Account
        def account = new com.lmc.loan.domains.Accounts(params)
        account.customer = customer
        account.loan = loan 
                
        if (!loan.save(flush: true, insert: true, onfailError: true)) {
            loan.errors.each {
                println it
            }
        }
        if (!customer.save(flush: true, insert: true, onfailError: true)) {
            customer.errors.each {
                println it
            }
        }       
        
        if (!account.save(flush: true, insert: true, onfailError: true)) {
            account.errors.each {
                println it
            }
        }
        
        println("Created Account & Customer Records...")
        println(" Account ID Set To " + account.id + " Customer ID Set To " + customer.id)
        render(view: "showAccountDetailScreen")
    }
    
    def prepareAdd = {
        render(view: "showAddScreen")
    }
    
}
