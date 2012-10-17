package com.lmc.loan

class TransactionsController {
    List trxs
    
    def scaffold = com.lmc.loan.domains.Transactions
    
    def handleSearch = {
        trxs = com.lmc.loan.domains.Transactions.findAllByLoanno(params.loanno)
        flash.loanno = params.loanno
        // Handle Empty Results (For A New Loan, With No Postings)
        if (trxs.isEmpty()) {
            render(view: "emptyResults")
        }
        else {
            render(view: "summaryResults")
        }
    }

    def handleAdd = {
        def seqNo = params.seqNo
        println ("Adding Payment Sequence: " + seqNo +
            " InterestDays: " + params.interestdays + 
            " InterestDue: " + params.interestdue +
            " Principal Remain: " + params.principalremain +
            " Principal Change: " + params.principalchange + 
            " On " + params.paymentdate_year + "/" + (params.paymentdate_month) + "/" + params.paymentdate_day)
        def transaction = new com.lmc.loan.domains.Transactions(
            loanno: params.loanno, 
            seqno: seqNo,
            paymentdate: new Date().parse("yyyy/MM/dd", params.paymentdate_year + "/" + (params.paymentdate_month) + "/" + params.paymentdate_day),
            trxid: new Date().getTime(),
            interestdays: params.interestdays,
            amtpaid: params.amtpaid,
            amtdue: params.amtdue,
            interestdue: params.interestdue,
            principalremain: params.principalremain,
            principalchange: params.principalchange
        )
        if (!transaction.save(flush: true, insert: true)) {
            transaction.errors.each {
                println it
            }
        }
        
        trxs = com.lmc.loan.domains.Transactions.findAllByLoanno(params.loanno)
        flash.loanno = params.loanno
        render(view: "summaryResults")
    }

    def prepareAdd = {
        def loan = com.lmc.loan.domains.SimpleInterestLoan.findByLoanno(params.loanno)
        // Figure The Current Value For Loan Payment - Pre-Calc What Can Be Done
        // Find The Last Transaction
        def trx = com.lmc.loan.domains.Transactions.find("from Transactions as tx where tx.loanno='" + params.loanno + "' order by tx.seqno desc limit 1")
        render(view: "showAddScreen", model: [simpleinterestloan: loan, lasttrx: trx])
    }
}
