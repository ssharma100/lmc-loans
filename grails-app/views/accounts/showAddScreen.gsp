<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Account</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1>Add New Account</h1>
    Please complete all fields marked with an asterisk (<span>*</span>)
    </br>
    <g:form name="addAccontForm" url="[controller:'accounts',action:'handleAdd']" >
      <table style="width: 600px">
        <th style="width: 40px;">&nbsp;</th>
        <th style="width: 40px;">&nbsp;</th>
        <th style="width: 5px;">&nbsp;</th>
        <th style="width: 40px;">&nbsp;</th>
        <th style="width: 40px;">&nbsp;</th>
        <tr>
          <td colspan="5"></td>
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
    </g:form>
</body>
</html>
