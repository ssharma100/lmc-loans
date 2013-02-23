<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Summary Results Page For Transactions -->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Transaction Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Transaction Search Results</h1>
    <table>
      <tr>
        <td>
          <g:link url="[controller:'accounts',action:'handleSearch']">
            List All Accounts
          </g:link>
        </td>        
        <td><g:link action="prepareAdd" params="[loanno: flash.loanno]">
            Add Transaction
            </g:link>
        </td>
        <td>
          <g:link action="prepareAdd" params="[loanno: flash.loanno]">
            Refresh
          </g:link>
        </td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table style="width: 800px">
      <th style="width: 10px; text-align: center">Trx ID</th>
      <th style="width: 60px; text-align: center">Date</th>
      <th style="width: 5px; text-align: center">No.</th>
      <th style="width: 20px; text-align: center">Paid</th>
      <th style="width: 20px; text-align: center">Due</th>
      <th style="width: 5px; text-align: center">Days</th>
      <th style="width: 50px; text-align: center">Interest</th>
      <th style="width: 50px; text-align: center">Principal</th>
      <g:each var="trx" in="${trxs}">
        <tr>
          <td>${trx.trxid}</td>
          <td>${trx.paymentdate}</td>
          <td>${trx.seqno}</td>
          <td>&#36;${trx.amtpaid}</td>
          <td>&#36;${trx.amtdue}</td>
          <td>${trx.interestdays}</td>
          <td>&#36;${trx.interestdue}</td>
          <td>&#36;${trx.principalchange}</td>
        </tr>
      </g:each>
    </table>
  </body>
</html>
