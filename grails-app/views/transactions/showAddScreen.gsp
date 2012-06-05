<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.lmc.loan.domains.SimpleInterestLoan" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Payment</title>
    <meta name="layout" content="main" />
  <g:javascript src="ComputationUtils.js"/>
  <g:javascript src="TransactionAddPageUtils.js"/>
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
          <tr><td>Grace Day</td><td>${simpleinterestloan.gracedays}</td></tr>
          <tr><td>Late Fee</td><td>${simpleinterestloan.latepenalty}</td></tr>
          <tr><td>Amount Due</td><td>&#36; ${simpleinterestloan.amountdue}</td></tr>
          <tr><td>Percentage</td><td>${simpleinterestloan.percentagerate}%</td></tr>
        </table>
      </td>
      <td>

        <table style="width: 450px;">
          <tr>
            <td>Payment Date</td>
            <td>
              <select name="paymentdate_day" id="paymentdate_day" onchange="javascript:updateInterestDays()">
                <option value="" selected="selected">-</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <select name="paymentdate_month" id="paymentdate_month"  onchange="javascript:updateInterestDays()">
                <option value="" selected="selected">-</option>
                <option value="0">January</option>
                <option value="1">February</option>
                <option value="2">March</option>
                <option value="3">April</option>
                <option value="4">May</option>
                <option value="5">June</option>
                <option value="6">July</option>
                <option value="7">August</option>
                <option value="8">September</option>
                <option value="9">October</option>
                <option value="10">November</option>
                <option value="11">December</option>
              </select>
              <select name="paymentdate_year" id="paymentdate_year"  onchange="javascript:updateInterestDays()">
                <option value="2012" selected="selected">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2029">2029</option>
              </select>
            </td>
          </tr>
          <tr><td>Payment</td><td>&#36; <g:textField name="amtpaid" value="" maxlength="7" size="7" onchange="javascript:updateAllWithPaidAmount(${lasttrx.principalremain}, ${simpleinterestloan.percentagerate}, ${simpleinterestloan.annualdays});" /></td></tr>

      <tr><td>Additional Fees</td><td>&#36; <g:textField name="feespaid" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Late Fee</td><td>&#36; <g:textField name="latepaid" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Interest Paid</td><td>&#36; <g:textField name="interestdue" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Interest Days</td><td>&nbsp; &nbsp;<g:textField name="interestdays" value="0" readonly="readonly" maxlength="7" size="7" /></td></tr>

      <tr><td>Principal Current</td><td>&#36; ${lasttrx.principalremain}</td></tr>
      <tr><td>Principal Change</td><td>&#36; <g:textField name="principalchange" value="0.00" readonly="readonly" maxlength="7" size="7" /></td></tr>
      <tr><td>Principal Remain</td><td>&#36; <g:textField name="principalreamain" value="${lasttrx.principalremain}" maxlength="7" size="7" /></td></tr>
      
      <tr><td><input type="submit" value="Add" /></td><td>&nbsp;</td></tr>
      <!-- Hidden Fields For Handling Of The -->
      <input type="hidden" id="lastTrxDate" name="lastTrxDate" value="${lasttrx.paymentdate}" />
      <input type="hidden" id="lastTrxSeq" name="lastTrxSeq" value="${lasttrx.seqno}" />
      <input type="hidden" id="dueDay" name="dueDay" value="${simpleinterestloan.dueday}" />      
      <input type="hidden" id="allowance" name="allowance" value="${simpleinterestloan.gracedays}" />
      <input type="hidden" id="latepercentage" name="latepercentage" value="${simpleinterestloan.latepenalty}" />
      <input type="hidden" id="amtdue" name="amtdue" value="${simpleinterestloan.amountdue}" />
      <input type="hidden" id="loanno" name="loanno" value="${simpleinterestloan.loanno}" />
      
  </table>
</td>
</g:form>
</tr>
</table>
</body>
</html>
