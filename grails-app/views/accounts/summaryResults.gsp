<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Summary Results Page Listing For Accounts -->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Account Search Results</h1>
    <table>
      <tr>
        <td><g:link url="[controller:'accounts',action:'prepareAdd']" >Add Account</g:link></td>
        <td><a href="<g:resource dir='/' file='' absolute='true' />">Home</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table style="width: 800px">
      <th style="width: 10px; text-align: center">Cust No.</th>
      <th style="width: 10px; text-align: center">Loan</th>
      <th style="width: 100px; text-align: center">First</th>
      <th style="width: 100px; text-align: center">Last</th>
      <th style="width: 250px; text-align: center">Address</th>
      <th style="width: 70px; text-align: center">City</th>
      <th style="width: 50px; text-align: center">State</th>
      <th style="width: 60px; text-align: center">Zip</th>
      <g:each var="account" in="${accountList}">
        <tr>
          <td><g:link controller="Accounts" action="handleDetail"params="[id: account.id]">${account.customer.id}</g:link></td>
          <td><g:link controller="SimpleInterestLoan" action="handleDetail" params="[loanno: account.loanno]">${account.loanno}</g:link></td>
          <td>${account.customer.first}</td>
          <td>${account.customer.last}</td>
          <td>${account.stmtAddress1}</td>
          <td>${account.stmtCity}</td>
          <td>${account.stmtState}</td>
          <td>${account.stmtZip4}</td>
        </tr>
      </g:each>
    </table>
  </body>
</html>
