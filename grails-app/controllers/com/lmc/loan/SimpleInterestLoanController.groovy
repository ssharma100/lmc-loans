package com.lmc.loan

class SimpleInterestLoanController {

    def scaffold = com.lmc.loan.domains.SimpleInterestLoan
    
    def handleDetail = {
        // Find The Item As Requested.
        def loan = com.lmc.loan.domains.SimpleInterestLoan.findByLoanno(params.loanno)
        // Compute The Transaction Information
        def trxs = com.lmc.loan.domains.Transactions.findAllByLoanno(params.loanno)
        flash.paymentCount = trxs.size()
        def totalInterest = 0.00
        def totalPrincipal  = 0.00
        // Total Relavant Information - Ony If Values Were Returned
        if (flash.paymentCount > 0) {
            trxs.each { trxItem ->
                totalInterest = totalInterest + trxItem.interestdue
                totalPrincipal  = totalPrincipal + trxItem.principalchange.abs()
            }
            flash.totalInterest = totalInterest.round(2)
            flash.totalPrincipal = totalPrincipal.round(2)
        }
        println ("Interest: " + totalInterest.round(2) + " Principal Total: " + totalPrincipal.round(2))
        println("Transactions: " + trxs.size())
        def trx = com.lmc.loan.domains.Transactions.find(
            "from Transactions as tx where tx.loanno='" + params.loanno + "' order by tx.seqno desc limit 1"
            )
        flash.lastPayment = trx;

        render(view: "showDetails", model: [simpleinterestloan: loan])
    }
}
