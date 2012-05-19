<!DOCTYPE html>
<html>
  <head>
    <title><g:layoutTitle default="Litespeed Motor Cars LLC" /></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
  <g:layoutHead />
  <g:javascript library="application" />
</head>
<body>
  <div id="spinner" class="spinner" style="display:none;">
    <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
  </div>
  <div id="topbar">
    <g:render template="/common/topbar" />
  </div>
  <g:layoutBody />
  <div id="footer">
    <g:render template="/common/footer"/>
  </div>
</body>
</html>