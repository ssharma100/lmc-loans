<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Account Search Summary</h1>
    <table>
      <tr>
        <td><g:link action="showAddScreen">Add Account</g:link></td>
        <td><a href="<g:resource dir='/' file='' absolute="true" />">Home</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table style="width: 800px">
      <th style="width: 10px; text-align: center">Loan</th>
      <th style="width: 100px; text-align: center">First</th>
      <th style="width: 100px; text-align: center">Last</th>
      <th style="width: 250px; text-align: center">Address</th>
      <th style="width: 70px; text-align: center">City</th>
      <th style="width: 50px; text-align: center">State</th>
      <th style="width: 60px; text-align: center">Zip</th>
      <g:each var="a" in="${accts}">
        <tr>
          <td>${a.loanno}</td>
          <td>${a.customer.first}</td>
          <td>${a.customer.last}</td>
          <td>${a.stmtAddress1}</td>
          <td>${a.stmtCity}</td>
          <td>${a.stmtState}</td>
          <td>${a.stmtZip4}</td>
        </tr>
      </g:each>
    </table>
  </body>
</html>
