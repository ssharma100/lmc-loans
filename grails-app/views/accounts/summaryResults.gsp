<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account Search Summary</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Account Search Summary</h1>
    <!-- Iteration Of The Search Summary -->
    <table width="150px">
      <th width="5px">Loan</th>
      <th>First</th>
      <th>Last</th>
      <th>Address</th>
      <th>City</th>
      <th>State</th>
      <th>Zip</th>
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
