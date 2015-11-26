<%-- 
    Document   : answer
    Created on : Nov 18, 2015, 9:40:20 AM
    Author     : Gerry
--%>

<%@page import="java.util.List"%>
<%@page import="stackexchangews.Answer"%>
<%@page import="stackexchangews.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <a id="logo-container" href="#" class="brand-logo">Stack Exchange - Question</a>
        <ul class="right hide-on-med-and-down">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="register.jsp">Register</a></li>
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
    
    <div class="section white">
        <%
            Question q = (Question)request.getAttribute("question");
            //out.println("<div class='row center'>");
            out.println("<div class='container'>");
            out.println("<div class='card deep-purple darken-2'>");
            out.println("<div class='card-content white-text'>");
            out.println("<span class='card-title'>" + q.getTopic() + "</a></span>");
            out.println("<p>" + q.getContent() + "</p>");
            out.println("</div>");
            out.println("<div class='card-action'>");
            out.println("<a class='left' href='#'>Asked by " + q.getUserId() + "</a>");
            out.println("<a class='right' href='edit.jsp?qid=" + q.getId() + "'>Edit</a>");
            out.println("<a class='right' href='delete?qid=" + q.getId() + "'>Delete</a>");
            out.println("</div></div></div>");
        %>
        <div class="divider"></div>
        <h2 align="center">Answers</h2>
        <%
            List<Answer> answers = (List<Answer>)request.getAttribute("answers");
            for (Answer a : answers) {
                //out.println("<div class='row center'>");
                out.println("<div class='container'>");
                out.println("<div class='card deep-purple darken-2'>");
                out.println("<div class='card-content white-text'>");
                out.println("<p>" + a.getContent() + "</p>");
                out.println("</div>");
                out.println("<div class='card-action'>");
                out.println("<a class='left' href='#'>Answered by " + a.getUserId() + "</a>");
                out.println("</div></div></div>");
            }
        %>    
    </div>
    
    <div class="row container">
      <form class="col s12 m8" action="AnswerServlet">
        <div class="row">
          <div class="input-field">
            <input name="content" id="content" type="text" class="validate">
            <label for="content">Content</label>
            <%
                out.println("<input name='qid' type='hidden' value='" + request.getParameter("qid") + "'>");
            %>
          </div>
        </div>
        <div class="container center">
            <button class="btn waves-effect waves-light deep-purple darken-2">
                <input type="submit" name="action">
                <i class="material-icons right">send</i>
            </button>
        </div>
      </form>
    </div>
    
    
        
    <footer class="page-footer deep-purple darken-2">
      <div class="footer-copyright">
        <div class="container">
          Â© 2015 Created by 3xcelsi0r
        </div>
      </div>
    </footer>

    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/init.js"></script>
  </body>
</html>
