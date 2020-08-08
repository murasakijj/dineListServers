<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <!-- frmLogin -->
    <title>Login to DINELIST</title>
  </head>
  <body>
    <%@page contentType="text/html; charset=UTF-8" %>
    <h1> Login </h1>
    <form action="view/controller" method="post">
      <input type="hidden" name="frm" value="frmLogin">
      <p>Login ID<input type="text" name="login"></p>
      <p>Password<input type="password" name="password"></p>
<!--
      <p><input type="submit" name="button" value="login"></p>
-->
      <p>
      <button name="btn" value="frmLogin.login">
	LOGIN
      </button>
      <button name="btn" value="frmLogin.login2">
	LOGIN2
      </button>
      </p>
    </form>
  </body>
</html>
