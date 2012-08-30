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
  <g:form name="addAccontForm" url="[controller:'accounts',action:'handleAdd']" >
    <table style="width: 800px; border: 0px; padding: 0px;" />
    <tr>
      <td>
        <table style="width: 400px; border: 0px;">
          <tr><td colspan="5">&nbsp;</td></tr>
          <tr>
            <th colspan="5">Customer/Account Information</th>
          </tr>
          <tr>
            <td style="width: 80px;">
              *Account No.
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
            <td>
              Created
            </td>
            <td>
              &nbsp;
            </td>
            <td>
              &nbsp;
            </td>
            <td>
              *First Name:
            </td>
            <td>
              <g:textField name="p_borrower_first" size="5"/>
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
              *Last Name:
            </td>
            <td>
              <g:textField name="p_borrower_last" size="5"/>
            </td>
          </tr>
          <tr>
            <td>
              *Street/No.:
            </td>
            <td>
              <g:textField name="p_addr_street" size="8"/>
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
              <g:textField name="p_addr_second" size="5"/>
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
              <g:textField name="p_addr_city" size="8"/>
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
                <g:textField name="p_addr_state" size="5"/>
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
                  <g:textField name="p_addr_zip" size="5"/>
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
          <th colspan="5">Loan Information</th>
        </tr>
        <tr>
          <td style="width: 130px;">
            *Loan No.
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
          <td>
            Created
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            *First Name:
          </td>
          <td>
            &nbsp;
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
            *Last Name:
          </td>
          <td>
            &nbsp;
          </td>
        </tr>
        <tr>
          <td>
            *Street/No.:
          </td>
          <td>
            &nbsp;
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
            hi
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            First Name:
          </td>
        </tr>
        <tr>
          <td>
            *City:
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            Last Name:
          </td>
          <td>
            &nbsp;
          </td>
        </tr>
        <tr>
          <td>
            *State:
          </td>
          <td>
        <g:textField name="si_loanno" size="5"/>
      </td>
      <td>
        &nbsp;
      </td>
      <th colspan="2">
        Loan Details
      </th>          
      </tr>
      <tr>
        <td>
          *Zip:
        </td>
        <td>
          &nbsp;
        </td>
        <td>
          &nbsp;
        </td>
        <td>
          Interest Rate:
        </td>
        <td>
      <g:select name="si_rate" from="${0..45}" value="0"/>
        </td>
        </tr>
        <tr>
          <th colspan="2">
            Alternate Address:
          </th>
          <td>
            &nbsp;
          </td>
          <td>
            Principal:
          </td>
          <td>
        <g:textField name="si_principal" size="5"/>
        </td>
        </tr>
        <tr>
          <td>
            *Street/No.:
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
  </tr>
  </table>
</g:form>
</body>
</html>
