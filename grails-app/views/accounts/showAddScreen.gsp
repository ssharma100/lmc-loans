<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Account</title>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href=<g:resource dir="css" file="main.css"/> />
  </head>
  <body>
    <h1>Add New Account</h1>
    Please complete all fields marked with an asterisk (<span>*</span>)
    </br>
  <g:form name="addAccountForm" >
    <table style="width: 800px; border: 0px; padding: 0px;" >
    <tr>
      <td>
        <table style="width: 400px; border: 0px;">
          <tr><td colspan="5">&nbsp;</td></tr>
          <tr>
            <th colspan="5">Customer/Account Information</th>
          </tr>
          <tr>
            <td style="width: 80px;">
              Open Account
            </td>
            <td>
              &nbsp;
            </td>
            <td style="width: 3px;">
              &nbsp;
            </td>
            <th style="width: 70px;" colspan="2">
              Borrower
            </th>
          </tr>
          <tr>
            <td colspan="2">
              <strong>Account ID Auto-Assigned</strong>
            </td>
            <td>
              &nbsp;
            </td>
            <td>
              *First Name:
            </td>
            <td>
              <g:textField name="first" size="5"/>
            </td>
          </tr>
          <tr>
            <th colspan="2">
              Statement/Billing Address
            </th>
            <td>
              &nbsp;
            </td>
            <td>
              *Last Name:
            </td>
            <td>
              <g:textField name="last" size="5"/>
            </td>
          </tr>
          <tr>
            <td>
              *Street/No.:
            </td>
            <td>
              <g:textField name="stmtAddress1" size="8"/>
            </td>
            <td>
              &nbsp;
            </td>
            <th colspan="2">
              Co-Borrower
            </th>
          </tr>
          <tr>
            <td>
              Unit No.:
            </td>
            <td>
              <g:textField name="stmtAddress2" size="5"/>
            </td>
            <td>
              &nbsp;
            </td>
            <td>
              First Name:
            </td>
            <td>
              <g:textField name="co_cust_first" size="5"/>
            </td>
          </tr>
          <tr>
            <td>
              *City:
            </td>
            <td>
              <g:textField name="stmtCity" size="8"/>
            </td>
              <td>
                &nbsp;
              </td>
              <td>
                Last Name:
              </td>
              <td>
                <g:textField name="co_cust_last" size="5"/>
              </td>              
            </tr>
            <tr>
              <td>
                *State:
              </td>
              <td>
                <g:textField name="stmtState" size="5"/>
              </td>
              <td>
                &nbsp;
              </td>
              <td>
                &nbsp;
              </td>
              <td>
                &nbsp;
              </td>          
              </tr>
              <tr>
                <td>
                  *Zip
                </td>
                <td>
                  <g:textField name="stmtZip4" size="5"/>
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
              </tr>
              <tr>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
              </tr>
              <tr>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
                <td>
                  &nbsp;
                </td>
              </tr>        
            </table>
          </td>
          <td>

      <!-- Side By Side Tables - Right Hand Slide... -->

      <table style="width: 400px; border: 0px;">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
          <th colspan="5">New Loan</th>
        </tr>
        <tr>
          <td style="width: 130px;">
            *Loan No.
          </td>
          <td>
              <g:textField name="loanno" size="5"/>
          </td>
          <td style="width: 3px;">
            &nbsp;
          </td>
          <th style="width: 70px;" colspan="2">
            Loan Information
          </th>
        </tr>
        <tr>
          <td colspan="2">
            Loan Originated On: &nbsp; 
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *I Rate:
          </td>
          <td>
            <g:textField name="percentagerate" size="4"/>
          </td>
        </tr>
        <tr>
          <td colspan="3">
            <g:datePicker name="origDate" value="${new Date()}" precision="day"/>
          </td>
          <td>
            Due Day:
          </td>
          <td>
            <g:select name="dueday" from="${1..31}" />
          </td>
        </tr>
        <tr>
          <th colspan="2">
            Permanent Address
          </th>
          <td>
            &nbsp;
          </td>
          <td>
            *I Days/Yr:
          </td>
          <td>
            <g:textField name="annualdays" value="365" size="5"/>
          </td>
        </tr>
        <tr>
          <td>
            *Street/No.:
          </td>
          <td>
            <g:textField name="address1" size="5"/>
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *Term:
          </td>
          <td>
            <g:textField name="loanterm" size="5" />
          </td>
        </tr>
        <tr>
          <td>
            Unit No.:
          </td>
          <td>
            <g:textField name="address2" size="5"/>
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *Payments:
          </td>
          <td>
            <g:select name="payperiod" from="${['WEEKLY', 'MONTHLY']}" />
          </td>
        </tr>
        <tr>
          <td>
            *City:
          </td>
          <td>
            <g:textField name="city" size="5"/>
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *Amt Due:
          </td>
          <td>
            <g:textField name="amountdue" size="5"/>
          </td>
        </tr>
        <tr>
          <td>
            *State:
          </td>
          <td>
            <g:textField name="state" size="5"/>
      </td>
      <td>
        &nbsp;
      </td>
      <td>
        *Grace:
      </td>
      <td>
        <g:select name="gracedays" from="${1..31}" />
      </td>
      </tr>
      <tr>
        <td>
          *Zip:
        </td>
        <td>
          <g:textField name="zip4" size="5"/>
        </td>
        <td>
          &nbsp;
        </td>
        <td>
          *Late Fee:
        </td>
        <td>
      <g:select name="latepenalty" from="${0..45}" value="0"/> %
        </td>
        </tr>
        <tr>
          <td>
           *Tel:
          </td>
          <td>
            <g:textField name="maintel" size="5"/>
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *Principal:
          </td>
          <td>
            <g:textField name="origAmount" size="5"/>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            &nbsp;
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            Prepay Fee:
          </td>
          <td>
            <g:textField name="prePaymentPenalty" size="5"/>
          </td>
        </tr>        
    </table>
    </td>
  </tr>
  </table>
  <table style="width: 800px; border: 0px; padding: 0px;" >
    <tr>
      <td>
        <g:actionSubmit value="Submit" action="handleAdd" onclick="return confirm('Create/Commit Account?')"/>
      </td>
      <td>
        <g:actionSubmit value="Reset" onclick="return confirm('All Fields Will Be Reset! Are You Sure?');" />
      </td>
    </tr>
  </table>
</g:form>
</body>
</html>
