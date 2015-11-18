<%-- 
    Document   : register
    Created on : Nov 18, 2015, 9:40:20 AM
    Author     : Gerry
--%>
<html lang="en">
  <head>
    <title>Stack Exchange</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/register-login.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  </head>
  
  <body>
    <nav class="deep-purple darken-2" role="navigation">
      <div class="nav-wrapper container">
        <a id="logo-container" href="#" class="brand-logo">Stack Exchange - Register</a>
        <ul class="right hide-on-med-and-down">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">Login</a></li>
        </ul>
      </div>
    </nav>
    <br><br><br>
    <div class="container">
      <nav class="deep-purple darken-2" role="navigation">
        <div class="nav-wrapper">
          <form>
            <div class="input-field">
              <input id="search" type="search" required>
              <label for="search"><i class="material-icons">search</i></label>
              <i class="material-icons">close</i>
            </div>
          </form>
        </div>
      </nav>
    </div>
    <br><br>

    <div class="row container">
      <form class="col s12 m8" action="Register">
        <div class="row">
          <div class="input-field">
            <input id="name" type="text" class="validate">
            <label for="name">Name</label>
          </div>
          <div class="input-field">
            <input id="email" type="text" class="validate">
            <label for="email">Email</label>
          </div>
          <div class="input-field">
            <input id="password" type="password" class="validate">
            <label for="password">Password</label>
          </div>
          <div class="input-field">
            <input id="confirm-password" type="password" class="validate">
            <label for="confirm-password">Confirm Password</label>
          </div>
        </div>
      </form>
    </div>
    
    <div class="container center">
      <button class="btn waves-effect waves-light deep-purple darken-2" type="submit" name="action" value="Register">Submit
        <i class="material-icons right">send</i>
      </button>
    </div>
        
    
    <footer class="page-footer deep-purple darken-2">
      <div class="footer-copyright">
        <div class="container">
          © 2015 Created by 3xcelsi
        </div>
      </div>
    </footer>

    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/init.js"></script>
  </body>
</html>