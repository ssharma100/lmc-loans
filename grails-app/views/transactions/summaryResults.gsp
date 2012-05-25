<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Summary Results Page For Transactions -->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Transaction Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Transaction Search Summary</h1>
    <table>
      <tr>
        <td><g:link action="showAddScreen">Add Transaction</g:link></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table style="width: 800px">
      <th style="width: 10px; text-align: center">Trx ID</th>
      <th style="width: 60px; text-align: center">Date</th>
      <th style="width: 30px; text-align: center">No.</th>
      <th style="width: 30px; text-align: center">Paid</th>
      <th style="width: 50px; text-align: center">Due</th>
      <th style="width: 30px; text-align: center">Int Days</th>
      <th style="width: 50px; text-align: center">Int Due</th>
      <g:each var="trx" in="${trxs}">
        <tr>
          <td>${trx.trxid}</td>
          <td>${trx.paymentdate}</td>
          <td>${trx.seqno}</td>
          <td>${trx.amtpaid}</td>
          <td>${trx.amtdue}</td>
          <td>${trx.interestdays}</td>
          <td>${trx.interestdue}</td>
        </tr>
      </g:each>
    </table>
  </body>
</html>
