<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.lmc.loan.domains.SimpleInterestLoan" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Payment</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Add Loan Payment</h1>
    <table style="width: 500px; padding: 0px;">
      <tr>
        <td style="text-align: left; font-weight: bold;">Loan Summary</td>
        <td style="text-align: center; font-weight: bold;">Payment Entry</td>
      </tr>
      <tr>
        <g:form name="addTransaction" url="[action:'handleAdd',controller:'transactions']">
        <td>
          <table style="width: 180px;">
            <tr><td>Loan No.</td><td>${simpleinterestloan.loanno}</td></tr>
            <tr><td>Due Day</td><td>${simpleinterestloan.dueday}</td></tr>
            <tr><td>Amount Due Day</td><td>&#36; ${simpleinterestloan.amountdue}</td></tr>
            <tr><td>Percentage</td><td>${simpleinterestloan.percentagerate}%</td></tr>
          </table>
        </td>
        <td>
          
          <table style="width: 450px;">
            <tr><td>Date</td><td><g:datePicker name="paymentdate" value="${new Date()}" precision="day" noSelection="['':'-']"/></td></tr>
            <tr><td>Payment</td><td>&#36; <g:textField name="amtpaid" value="" maxlength="7" size="7" /></td></tr>

            <tr><td>Additional Fees</td><td>&#36; <g:textField name="feespaid" value="" maxlength="7" size="7" /></td></tr>
            <tr><td>Late Fee</td><td>&#36; <g:textField name="latepaid" value="" maxlength="7" size="7" /></td></tr>
            <tr><td>Interest Paid</td><td>&#36; <g:textField name="interestdue" value="" maxlength="7" size="7" /></td></tr>
            <tr><td>Total Payment</td><td>&#36; <g:textField name="total" value="0.00" readonly="readonly" maxlength="7" size="7" /></td></tr>
            <tr><td>Principal Remain</td><td>&#36; ${lasttrx.principalremain}</td></tr>
            <tr><td>Principal Change</td><td>&#36; 0.00</td></tr>
            <tr><td><input type="submit" value="Add" /></td><td>&nbsp;</td></tr>
          </table>
        </td>
        </g:form>
      </tr>
    </table>
  </body>
</html>
