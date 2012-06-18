<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Summary Results Page For Loan Details -->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Loan Details Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Transaction Search Results</h1>
    <table>
      <tr>
        <td><g:link controller="Transactions"action="handleSearch" params="[loanno: simpleinterestloan.loanno]">
            Payment History
            </g:link>
        </td>
        <td>
          <g:link action="prepareAdd" params="[simpleinterestloan.loanno]">
            Refresh
          </g:link>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table style="width: 900px; border-width: 7px;">
      <tr>
        <td style="width: 5em;">Loan No.:&nbsp; ${simpleinterestloan.loanno}</td><td style="width: 10px"></td>
        <td style="width: 5em;">Percentage:&nbsp; ${simpleinterestloan.percentagerate}</td><td style="width: 10px"></td>
        <td style="width: 5em;">Term (Months):&nbsp; ${simpleinterestloan.loanterm}</td><td style="width: 10px"></td>
        <td style="width: 5em;">Amount:&nbsp; ${simpleinterestloan.amountdue}</td><td style="width: 10px"></td>
        <td style="width: 5em;">Due On:&nbsp; ${simpleinterestloan.dueday}</td><td style="width: 10px"></td>
      </tr>
      <tr>
        <td style="width: 5em;">Penalty:&nbsp; ${simpleinterestloan.latepenalty}</td><td style="width: 10px"></td>
        <td style="width: 5em;">Grace:&nbsp; ${simpleinterestloan.gracedays}</td><td style="width: 10px"></td>
        <td style="width: 5em;">&nbsp;</td><td style="width: 10px"></td>
        <td style="width: 5em;">&nbsp;</td><td style="width: 10px"></td>
        <td style="width: 5em;">&nbsp;</td><td style="width: 10px"></td>
      </tr>
      <tr style="background-color: darkgray; border: 0px; padding: 0px; border-color: darkgrey;">
        <td style="width: 5em;" colspan="10"><span style="font-style: italic; font-weight: bold;">Loan Activity</span></td>
      </tr>
      <tr>
        <td style="width: 5em;">Payments:&nbsp; ${flash.paymentCount}</td><td style="width: 10px"></td>
        <td style="width: 5em;" colspan="2">Last Payment: ${flash.lastPayment.paymentdate}</td>
        <td style="width: 5em;">Last Paid &nbsp;$ ${flash.lastPayment.amtpaid}</td><td style="width: 10px"></td>
        <td style="width: 5em;" colspan="4">Principal Remain: &nbsp; $ ${flash.lastPayment.principalremain}</td>
    
      </tr>      
    </table>
  </body>
</html>
