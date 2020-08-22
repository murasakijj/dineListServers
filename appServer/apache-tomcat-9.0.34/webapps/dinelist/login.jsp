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
      <p>Login ID<input type="text" name="login"></p>
      <p>Password<input type="password" name="password"></p>
      <p>
      <button name="transitionSrc" value="frmLogin.login">
	LOGIN
      </button>
      </p>
    </form>
  </body>
</html>
