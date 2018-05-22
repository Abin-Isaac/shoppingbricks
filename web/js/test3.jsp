<%-- 
    Document   : test3
    Created on : Apr 1, 2018, 6:04:52 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-default nav-margin-bottom" role="navigation">
    <div class="row">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header col-sm-1 col-md-1 col-lg-1">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#" style="font-weight:500%; font-family:Roboto; margin-left:18px;">Test</a> 
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse">
      <div class="col-sm-6 col-md-7 col-lg-8">
        <form class="navbar-form" role="search">
            <input type="text" class="form-control" placeholder="Search" >
        </form>
        <%--ggggg 
        <%@include file=""  %>
        <%@page  %>
        <%@taglib  prefix=""  %>
        <jsp:attribute name=""></jsp:>
        <% %>--%>
      </div>
      <div class="col-sm-5 col-md-4 col-lg-3 navbar-right">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><b>Abcd</b></a></li>
          <li><a href="#"><b>Efgh</b></a></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Ijkl</b><b class="caret"></b></a>
            <!-- Link or button to toggle dropdown -->
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><b>Mno</b></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><b>Pqrs</b></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><b>Settings</b></a></li>
              <li role="presentation" class="divider"></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><b>Log out</b></a></li>
            </ul>
          </li>
        </ul>
      </div>
      </div><!-- /.navbar-collapse -->
    </div> <!-- /.row -->
  </nav>    
    </body>
</html>

