<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Summary Results Page For Empty/No Transactions -->
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
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
    <!-- Iteration Of The Search Summary -->
    <p></p>
    <table>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>
          <center><span class="message">No Payments Or Transactions Found For This Loan!</span></center>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
  </body>
</html>