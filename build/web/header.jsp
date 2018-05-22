<%-- 
    Document   : header
    Created on : Apr 30, 2018, 10:39:47 AM
    Author     : hp
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>
 <%!
	 String label=null;
	Connection connection=ConnectionProvider.getCon();
     %>	

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="last.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
     <div class="container-fluid top_bar ">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4  pull-left"><p>One of the emerging shopping sites...</p></div>
                    <div class="col-lg-8 text-right"><p>Download app <a href="#" class="fa fa-android"></a><a href="#" class="fa fa-apple"></a><a href="#" class="fa fa-windows"></a></p>
                    </div>
            </div>
        </div>
        </div>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header col-sm-3">
        <div><a class="navbar-left navbar-header" href="#"><img src="images/logo11.png" class="img-responsive" width="350" height="350" alt="#"/></a>
        </div></div>
    <div class="col-sm-5" id="myNavbar">
        <div class="navbar-form navbar-left">
            <input type="text" id="search1" class="col-sm-3 pull-left text-primary"   style="width: 610px"  placeholder=" Search Products & Brands">
            <button type="submit" id="search2" style="width: 150px"  class="btn btn-block">
                    <span class="fa fa-search"> </span>Search</button></div><div>   
                </div></div>
        <div class="col-sm-4">
            
         <ul class="nav navbar-nav navbar-right col-sm-6 ">
             <%
                     
                     label=(String)session.getAttribute("user2");
                     if(label==null)
                     {
                     %>
             <li class="dropdown-toggle center_content"> <a href="#" data-toggle="dropdown"><span style="color: #ffffff">Login & Signup</span></a>
                 <ul class="dropdown-menu" id="drop">
                     <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-user" style="color: #e6e6e6;  font-size: 1.7em"> &emsp;<b>Your account</b></span></a></li>
                     <li class="divider"></li>
               
      <li role="presentation" class="divider"></li>
                    
      <li></li>
      
                     <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-file-o" style="color: #e6e6e6; font-size: 1.7em">&emsp;<b>Your orders</b></span></a></li>
                     <li role="presentation" class="divider"></li><li role="presentation" class="divider"></li>
                     <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-heart-o" style="color:#e6e6e6; font-size: 1.7em">&emsp;<b>shortlist</b></span></a></li>
      <li class="divider"></li>
      <li role="presentation" class="divider"></li>
                    
      <li>&emsp;&emsp;&emsp;&emsp;<b>if you are a new user</b></li>
      <li> <a href="#" data-toggle="modal" data-target="#myModal" onClick="$('#loginbox').hide(); $('#signupbox').show(); $('#forpass').hide()"><span style="color: #e6e6e6; font-size: 1.7em"><b>&emsp;&emsp;&emsp;Register</b></span></a></li>  
      <li class="btn btn-success center-block" style="background-color: #DC143C" data-toggle="modal" data-target="#myModal" onClick="$('#loginbox').show(); $('#signupbox').hide();$('#forpass').hide()"><span style=" font-size: 1.7em"><b>Login</b></span></li>
                     </ul>
  </li>
  <li class="pull-left"><a href="validate.jsp;"><span style="color: #ffffff" class="fa fa-shopping-cart">(0)</span></a></li>
            
                    
             <% }else
                        {
                     %> 
                         
                     <li class="dropdown-toggle center_content"> <a href="#" data-toggle="dropdown"><span style="color: #ffffff"><b> Welcome <%=label%> !!</b></span></a>
              <ul class="dropdown-menu" id="drop">        
             <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-user" style="color: #e6e6e6;  font-size: 1.7em"> &emsp;<b>Your account</b></span></a></li>
                     <li class="divider"></li>
               
      <li role="presentation" class="divider"></li>
                    
      
      
                     <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-file-o" style="color: #e6e6e6; font-size: 1.7em">&emsp;<b>Change Password</b></span></a></li>
                     <li  class="divider"></li><li role="presentation" class="divider"></li>
                     <li><a href="#">&nbsp;&emsp;&emsp;<span class="fa fa-heart-o" style="color:#e6e6e6; font-size: 1.7em">&emsp;<b>Your Order</b></span></a></li>
      <li class="divider"></li>
      <li role="presentation" class="divider"></li>
                    
                     
  
      <li><a  id="logout" class="btn btn-success center-block " style="color: red; background-color: #DC143C" href="logout.jsp"><span style=" font-size: 1.7em;color: #FFF"><b>Logout</b></span></a></li>      
                            
                            
                            <%
                     
                    }
                     %> 
              </ul></li></ul>
              

            <!-- Trigger the modal with a link -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div id="loginbox" style="margin-top:50px; ">                    
            <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#" data-toggle="modal" data-target="#forpass" >Forgot password?</a></div>
                    </div> </div>  
               
        <div class="modal-body">
            <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" method="post" action="login.jsp">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user" style="color: #000"></i></span>
                                <span style="font-size: 1.7em"><input id="login-username" type="text" class="form-control col-lg-12"  name="username" placeholder="username" required style>                                        
                                </span></div>
                                
                            <div style="margin-bottom: 25px" class="input-group col-md-12">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control"   name="password" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" data-toggle="password" required>
                                                                    </div>
                            

                                        <script>
                             $("#login-password").password('toggle');               
                             
                              </script>   <br>
                              

                                    
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" checked="checked" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                        <button class="btn btn-success" type="submit">&nbsp;Login</button>
                                        <a href="admin/sk_admin.jsp" class="btn btn-primary">Login as Admin</a>
                                        
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show();$('#forpass').hide()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     
                        </div>                             
        </div>
            </div>
          <!--Signup modal -->
        <div id="signupbox" style="display:none; margin-top:50px">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show();$('#forpass').hide()">Sign In</a>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <form id="signupform" class="form-horizontal" role="form" method="post" action="validate.jsp">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="Username" class="col-md-3 control-label">Username</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="username" placeholder="Username" pattern=".{5}" required="required">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" data-toggle="password" required>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Mobile No.</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="number" placeholder="Mobile"  pattern="^[+91]+(?:-?)(?:9|8|7|6?)((?:\d\d\s?){1})((?:\d\d\d\s?){1})((?:\d\d\d\d\s?){1})$"  required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                        <span style="margin-left:8px;">or</span>  
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-fbsignup" type="submit" class="btn btn-primary"><i class="icon-facebook"></i>   Sign Up with Facebook</button>
                                    </div>                                           
                                        
                                </div>
                                
                                
                                
                            </form>
                        </div>
                         </div>
                    </div></div></div></div></div>
          
  
  <!-- Modal -->
  <div class="modal fade" id="forpass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div id="formpass" style="display:none; margin-top:50px">
                     </div>
                        
        <div class="modal-body">
            <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Password Recovery</div> </div> </div>
          <div class="panel-body">
                            <form id="formpass1" class="form-horizontal" role="form" method="post" >
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
                <link href="css/product.css" rel="stylesheet" type="text/css"/>
                </div>                     
            </div>         
            <button type="submit" class="btn btn-success btn-block btn-lg">
              <span class="glyphicon glyphicon-send"></span> SUBMIT
            </button></form></div></div>
        </div>
        
      </div>
      
  </div></div>
        
         <!--End of modal -->
       
        </div>
  </div>
    
    

  
    <div class="container-fluid menu_bar">       
        <div class="container-fluid">
          <div class="navbar-header">
             
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1" aria-expanded="false" aria-controls="navbar"> 
            </button>
          </div>
            <div class="container-fluid" id="navbar1">
            <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav home_menu">
                <li><a href="last.jsp" class="hm">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle hm" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="background-color:#671979">Products&nbsp;<span class="glyphicon glyphicon-chevron-down small" style="size: B5"></span></a>
                <ul class="dropdown-menu multi-column-dropdown columns-3" style="background-color:#FFF;font-weight: bolder">
                  <div class="row">
                       						<% 
                                                     PreparedStatement ps=connection.prepareStatement("select pcat_id,pcname from prod_cat");
                                                     ResultSet rs=ps.executeQuery();
                                                     
                                                     
                                                    
                                                    
                                                    
                                                    while (rs.next()) 
                                                        
                                                    {
                                                      int  s=rs.getInt("pcat_id");
                                                        PreparedStatement ps1=connection.prepareStatement("select * from p_subcat where pcat_id=? ");
                                                      ps1.setInt(1, s);
                                                     ResultSet rs1=ps1.executeQuery();
                                                       %>
									<div class="col-lg-2">
										<ul class="multi-column-dropdown">
                                                                                  
											<h6><%=rs.getString("pcname")%></h6>
                                                                                        <% 
                                                                                            while (rs1.next()) 
                                                                                        {
                                                                                           %>
											<li><a href="products.jsp?p=<%=rs1.getInt("psubcat_id")%>"><%=rs1.getString("psubcatname")%></a></li>
                                                                                        
											 <%
                                                                                            }
                                                                                            %>
										</ul>
									</div>
                                                                        <%
                                                                        }
                                                                        %>
                                                                        
									
									
									<div class="clearfix"></div>
								</div>
                </ul>
                </li>
                <li><a href="validate.jsp" class="hm">My Order</a></li>
                
              <li><a href="aboutus.jsp" class="hm">About Us</a></li>
              <li><a href="contact.jsp" class="hm">Contact Us</a></li>
              
              
              
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
        </div></div>
        <!--------------------end of menu bar-------------->
        </nav>
         </body>
</html>
