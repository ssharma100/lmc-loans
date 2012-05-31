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
                <option value="2030">2030</option>
                <option value="2031">2031</option>
                <option value="2032">2032</option>
                <option value="2033">2033</option>
                <option value="2034">2034</option>
                <option value="2035">2035</option>
                <option value="2036">2036</option>
                <option value="2037">2037</option>
                <option value="2038">2038</option>
                <option value="2039">2039</option>
                <option value="2040">2040</option>
                <option value="2041">2041</option>
                <option value="2042">2042</option>
                <option value="2043">2043</option>
                <option value="2044">2044</option>
                <option value="2045">2045</option>
                <option value="2046">2046</option>
                <option value="2047">2047</option>
                <option value="2048">2048</option>
                <option value="2049">2049</option>
                <option value="2050">2050</option>
                <option value="2051">2051</option>
                <option value="2052">2052</option>
                <option value="2053">2053</option>
                <option value="2054">2054</option>
                <option value="2055">2055</option>
                <option value="2056">2056</option>
                <option value="2057">2057</option>
                <option value="2058">2058</option>
                <option value="2059">2059</option>
                <option value="2060">2060</option>
                <option value="2061">2061</option>
                <option value="2062">2062</option>
                <option value="2063">2063</option>
                <option value="2064">2064</option>
                <option value="2065">2065</option>
                <option value="2066">2066</option>
                <option value="2067">2067</option>
                <option value="2068">2068</option>
                <option value="2069">2069</option>
                <option value="2070">2070</option>
                <option value="2071">2071</option>
                <option value="2072">2072</option>
                <option value="2073">2073</option>
                <option value="2074">2074</option>
                <option value="2075">2075</option>
                <option value="2076">2076</option>
                <option value="2077">2077</option>
                <option value="2078">2078</option>
                <option value="2079">2079</option>
                <option value="2080">2080</option>
                <option value="2081">2081</option>
                <option value="2082">2082</option>
                <option value="2083">2083</option>
                <option value="2084">2084</option>
                <option value="2085">2085</option>
                <option value="2086">2086</option>
                <option value="2087">2087</option>
                <option value="2088">2088</option>
                <option value="2089">2089</option>
                <option value="2090">2090</option>
                <option value="2091">2091</option>
                <option value="2092">2092</option>
                <option value="2093">2093</option>
                <option value="2094">2094</option>
                <option value="2095">2095</option>
                <option value="2096">2096</option>
                <option value="2097">2097</option>
                <option value="2098">2098</option>
                <option value="2099">2099</option>
                <option value="2100">2100</option>
                <option value="2101">2101</option>
                <option value="2102">2102</option>
                <option value="2103">2103</option>
                <option value="2104">2104</option>
                <option value="2105">2105</option>
                <option value="2106">2106</option>
                <option value="2107">2107</option>
                <option value="2108">2108</option>
                <option value="2109">2109</option>
                <option value="2110">2110</option>
                <option value="2111">2111</option>
                <option value="2112">2112</option>
              </select>
            </td>
          </tr>
          <tr><td>Payment</td><td>&#36; <g:textField name="amtpaid" value="" maxlength="7" size="7" onchange="javascript:updateAllWithPaidAmount(${lasttrx.principalremain}, ${simpleinterestloan.percentagerate}, ${simpleinterestloan.annualdays});" /></td></tr>

      <tr><td>Additional Fees</td><td>&#36; <g:textField name="feespaid" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Late Fee</td><td>&#36; <g:textField name="latepaid" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Interest Paid</td><td>&#36; <g:textField name="interestdue" value="" maxlength="7" size="7" /></td></tr>
      <tr><td>Interest Days</td><td>&nbsp; &nbsp;<g:textField name="interestdays" value="0" readonly="readonly" maxlength="7" size="7" /></td></tr>

      <tr><td>Principal Remain</td><td>&#36; ${lasttrx.principalremain}</td></tr>
      <tr><td>Principal Change</td><td>&#36; <g:textField name="principalchange" value="0.00" readonly="readonly" maxlength="7" size="7" /></td></tr>
      <tr><td><input type="submit" value="Add" /></td><td>&nbsp;</td></tr>
      <!-- Hidden Fields For Handling Of The -->
      <input type="hidden" name="lastTrxDate" value="${lasttrx.paymentdate}" />
      <input type="hidden" id="allowance" name="allowance" value="${simpleinterestloan.gracedays}" />
      <input type="hidden" id="latepercentage" name="latepercentage" value="${simpleinterestloan.latepenalty}" />
      <input type="hidden" id="amtdue" name="amtdue" value="${simpleinterestloan.amountdue}" />
  </table>
</td>
</g:form>
</tr>
</table>
</body>
</html>
