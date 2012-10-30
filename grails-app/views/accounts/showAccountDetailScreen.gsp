<!--
  Shows The Details Of The Account, Customer, and Loan Information
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account Details</title>
    <meta name="layout" content="main" />
    <link rel="stylesheet" type="text/css" href=<g:resource dir="css" file="main.css"/> />
  </head>
  <body>
    <h1>Account Details</h1>
    <table>
      <tr>
        <td><g:link url="[controller:'accounts',action:'prepareAdd']" >Add Account</g:link></td>
        <td><a href="<g:resource dir='/' file='' absolute='true' />">Home</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>Help</td>
      </tr>
    </table>
  </body>
</html>
