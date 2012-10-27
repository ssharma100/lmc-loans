<%@ page import="com.lmc.loan.domains.SimpleInterestLoan" %>
<html>
  <head>
    <title>Litespeed BHPH Loan Manager</title>
    <meta name="layout" content="main" />

    <script src="${resource(dir:'js',file:'SpryAssets/SpryTabbedPanels.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'js',file:'SpryAssets/SpryTabbedPanels.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'main.css')}" />

    <style type="text/css" media="screen">
      #nav {
        margin-top:20px;
        margin-left:30px;
        width:228px;
        float:left;

      }
      .homePagePanel * {
        margin:0px;
      }
      .homePagePanel .panelBody ul {
        list-style-type:none;
        margin-bottom:10px;
      }
      .homePagePanel .panelBody h1 {
        text-transform:uppercase;
        font-size:1.1em;
        margin-bottom:10px;
      }
      .homePagePanel .panelBody {
        background: url(images/leftnav_midstretch.png) repeat-y top;
        margin:0px;
        padding:15px;
      }
      .homePagePanel .panelBtm {
        background: url(images/leftnav_btm.png) no-repeat top;
        height:20px;
        margin:0px;
      }

      .homePagePanel .panelTop {
        background: url(images/leftnav_top.png) no-repeat top;
        height:11px;
        margin:0px;
      }
      h2 {
        margin-top:15px;
        margin-bottom:15px;
        font-size:1.2em;
      }
      #pageBody {
        margin-left:280px;
        margin-right:20px;
      }
    </style>
  </head>
  <body>
    <div id="nav">
      <div class="homePagePanel">
        <div class="panelTop"></div>
        <div class="panelBody">
          <h1>Application Status</h1>
          <ul>
            <li>App version: <g:meta name="app.version"></g:meta></li>
            <li>Grails version: <g:meta name="app.grails.version"></g:meta></li>
            <li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
            <li>JVM version: ${System.getProperty('java.version')}</li>
            <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
            <li>Domains: ${grailsApplication.domainClasses.size()}</li>
            <li>Services: ${grailsApplication.serviceClasses.size()}</li>
            <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
          </ul>
        </div>
        <div class="panelBtm"></div>
      </div>
    </div>
    <div id="pageBody">
      <p><h1>Loan Management &amp; Administration</h1></p>
    <br />
    <div id="MainNavigationTabbedPannel" class="TabbedPanels">
      <ul class="TabbedPanelsTabGroup">
        <li class="TabbedPanelsTab" tabindex="0">Account Mgr</li>
        <li class="TabbedPanelsTab" tabindex="0">Loans</li>
        <li class="TabbedPanelsTab" tabindex="0">Transactions</li>
      </ul>
      <div class="TabbedPanelsContentGroup">
        <div class="TabbedPanelsContent">
          <p class="menuButton">Account Management</p>
          <p>&nbsp;</p>
          <g:form name="acctSearchForm" url="[controller:'accounts',action:'handleSearch']" >
            <table width="175" border="0">
              <tr>
                <td>
                   Click To View And Manage Accounts:
                  <input type="submit" value="Submit" /> &nbsp;                  
                </td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p><g:link url="[controller:'accounts',action:'prepareAdd']" >&nbsp; Add Account</g:link></p>
          </g:form>
        </div>
        <div class="TabbedPanelsContent">Loan Information</div>
        <div class="TabbedPanelsContent">
          <p class="menuButton">Transaction Management</p>
          <p>Select Transaction Search Criteria And Click Search:</p>
          <g:form name="trxSearchForm" url="[controller:'transactions',action:'handleSearch']" >
            <table width="175" border="0">
              <tr>
                <td>Loan No:</td>
                <td>
                  <g:select name="loanno" from="${SimpleInterestLoan.list()}" optionKey="loanno" optionValue="loanno"></g:select>
                </td>
              </tr>
              <tr>
                <td>Last Name:</td>
                <td><input type="text" name="acctFirstLast" id="acctFirstName" maxlength="35" size="12"/></td>
              </tr>
              <tr>
                <td>City, Zip</td>
                <td><input type="text" name="acctCity" id="acctFirstName" maxlength="35" size="10" />, <input type="text" name="acctZip" id="acctFirstName" maxlength="5"  size="5"/></td>
              </tr>
              <tr>
                <td>Account No.</td>
                <td><input name="acctNo" type="text" id="acctFirstName" size="3" maxlength="3" /></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p>
              <input type="submit" value="Submit" /> &nbsp;
              <g:link url="[controller:'accounts',action:'prepareAdd']" >Add Account</g:link>
            </p>
          </g:form>
        </div>
      </div>
    </div>
    <p>&nbsp;</p>
    <script type="text/javascript">
      var TabbedPanels1 = new Spry.Widget.TabbedPanels("MainNavigationTabbedPannel");
    </script>
  </div>
</body>
</html>
