<%-- 
    Document   : last
    Created on : Mar 13, 2018, 4:14:59 AM
    Author     : hp
--%>
<!DOCTYPE html>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connect.ConnectionProvider"%>

 <%!
	 String label= null;
	Connection connection=ConnectionProvider.getCon();
     %>	
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    
        <link href="css/last.css" rel="stylesheet" type="text/css"/>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="images/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
    
  <script src="images/assets/bootstrap/js/wowslider.js" type="text/javascript"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
  

    
    <body>
        <jsp:include page="header.jsp"/>
  
       <%
    String msg1=request.getParameter("log1");
    if(msg1!=null)
     out.print("<script>alert('success registration')</script>");
  
    %>
    <%
    String msg=request.getParameter("log");
    if(msg!=null)
     out.print("<script>alert('Invalid uname or pass..@Login Fail@')</script>");
  
    %>
    <%
    String msg2=request.getParameter("log2");
    if(msg2!=null)
     out.print("<script>alert('@For View Cart Details Please SignIn If You Exist..Otherwise @Please SignUp ')</script>");
  
    %>
                       
    
  
            <div class="container-fluid" style="padding:0px 0px 0px 0px">
                
                <div class="row"><div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
<li data-target="#myCarousel" data-slide-to="6"></li>
    <li data-target="#myCarousel" data-slide-to="7"></li>
        
  </ol>

  <!-- Wrapper for slides -->
          <div class="carousel-inner " style="height:300px">
               
              <div class="item active img-responsive">
              <img class=" img-responsive " src="images/slider/IMG03.jpg" style="width:100%;height:300px">
            </div>  
              <div class="item  img-responsive">
              <img class=" img-responsive " src="images/slider/IMG05.jpg" style="width:100%;height:300px">
            </div>  
            <div class="item  img-responsive">
              <img class=" img-responsive " src="images/s0.jpeg" style="width:100%;height:300px">
            </div>             
            <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s2.jpg" style="width:100%;height:300px">
            </div>
             <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s3.jpg" style="width:100%;height:300px">
            </div>
              <div class="item img-responsive">
              <img  class=" img-responsive " src="images/s4.jpg" style="width:100%;height:300px"/>
            </div>
              
          </div>


  <!-- Left and right controls -->
  <a class="left carousel-control noHover" href="#myCarousel" data-slide="prev">
   <!-- <span class="glyphicon glyphicon-chevron-left"></span>-->
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control noHover" href="#myCarousel" data-slide="next">
     <!-- <span class="glyphicon glyphicon-chevron-right"></span>-->
    <span class="sr-only">Next</span>
  </a>
                </div></div>
            <br>
            
 	
   
  
 
 
 
 
   
         

        
       
            </div>
        
  
        
        <%--End of carousel --%>
        <!--------start banner-bottom  table list menu------>
 <div class="container-fluid" style="border: 2px solid #671979;border-top:2px solid #671979; background-color: #ffffff;margin-top:-50px;">
		<div class="container-fluid" >
			
			<div class="row jumbotron" style="background-color: #ffffff" >
                            
				<div role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs " role="tablist">
                                            <% 
                                                     PreparedStatement ps=connection.prepareStatement("select pcat_id,pcname from prod_cat");
                                                     ResultSet rs=ps.executeQuery();
                                                     
                                                     
                                                    
                                             int a=0;
                                             
                                                    
                                                    while (rs.next()) 
                                                        
                                                    {
                                                       // k++;
                                                      a=rs.getInt("pcat_id");
                                                      
                                                      System.out.println("id:"+a);
                                                       if(a==1)
                                                       {
                                                       %>                               
						<li role="presentation" class="active"><a href="#<%=a%>" id="home-tab" role="tab" data-toggle="tab" aria-controls="home"><%=rs.getString("pcname")%></a></li>
						
                                                <%}else 
                                                       {
                                                %>
                                                <li role="presentation" ><a href="#<%=a%>" id="home-tab" role="tab" data-toggle="tab" aria-controls="home"><%=rs.getString("pcname")%></a></li>
                                                 <%  }

                                                                        }

                                                
                                                                        %>
					</ul>
                                        
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="1" aria-labelledby="home-tab">
						
                                                    <div style="margin-top: 20px">
                                                       
								
                                                                     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps1=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps1.setInt(1,1);
                                                   
                                                     ResultSet rs1=ps1.executeQuery();
                                    while (rs1.next()) {        
        
                                  
                       
                                                %>
                                                
                                                
                                                   <div class="col-lg-3 col-md-4 col-sm-6 text-center " style="margin-top: 50px;">
									
                                                       <a href="moreinfo.jsp?pid=<%=rs1.getInt("pid")%>"><img src="<%=rs1.getString("pimageurl")%>" alt=" "  style="width: 130px;height:250px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs1.getInt("pid")%>"><%=rs1.getString("pmodel")%></a><br>Rs.<%=rs1.getInt("price")%></h5>
									
                                                                      <a href="AddCart?pid=<%=rs1.getInt("pid")%>">  <button class="btn btn-danger"  style="margin-top:10px;" >&nbsp Add To Cart  </button> </a>  
										
								</div>
                                                                      
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>      
                                                    
                                                           
                             
								<div class="clearfix"> </div>
							</div>
                                                  
                                                    
                                                   
                                                    
                                                    <div class="footer-copy1" style="padding-left:100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
						</div>
                                                <div role="tabpanel" class="tab-pane fade" id="2" aria-labelledby="video-tab" >
							<div class="text-center" style="margin-top: 20px">
								     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps2=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps2.setInt(1,2);
                                                   
                                                     ResultSet rs2=ps2.executeQuery();
                                    while (rs2.next()) {        
        
                                    
                       
                                                %>
                                                
                                                
                                                    
                                               
                                                <div class="col-lg-3 col-md-4 col-sm-6 text-center " style="margin-top: 50px;">
									
						 	<a href="moreinfo.jsp?pid=<%=rs2.getInt("pid")%>"> <img src="<%=rs2.getString("pimageurl")%>" alt=" " style="width: 180px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs2.getInt("pid")%>"><%=rs2.getString("pmodel")%></a><br>Rs.<%=rs2.getInt("price")%></h5>
									
                                                                        <a href="AddCart?pid=<%=rs2.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
										
                                                                       
                                                                 
                                                                        </div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>      
							
								<div class="clearfix"> </div>
							</div>
                                                    <div class="footer-copy1" style="padding-left: 100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
				</div>                              
                        
                                                
			<div role="tabpanel" class="tab-pane fade" id="3" aria-labelledby="audio-tab">
							<div style="margin-top: 20px">
                                                  
                                                            
                                                            
                                                            	     <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                              
                                                
                                                    PreparedStatement ps3=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps3.setInt(1,3);
                                                   
                                                     ResultSet rs3=ps3.executeQuery();
                                    while (rs3.next()) {        
        
                                   
                       
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs3.getInt("pid")%>">	<img class="text-center" src="<%=rs3.getString("pimageurl")%>" alt=" " style="width: 190px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs3.getInt("pid")%>"><%=rs3.getString("pmodel")%></a><br>Rs.<%=rs3.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs3.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                            	
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                              
								<div class="clearfix"> </div>
							</div>
                                                    <div class="footer-copy1" style="padding-left: 100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
			</div>

		<div role="tabpanel" class="tab-pane fade" id="4" aria-labelledby="tv-tab">
							<div style="margin-top: 20px">
								
                                                             <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps4=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps4.setInt(1,4);
                                                   
                                                     ResultSet rs4=ps4.executeQuery();
                                    while (rs4.next()) {        
        
                                   
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs4.getInt("pid")%>"><img class="text-center" src="<%=rs4.getString("pimageurl")%>" alt=" " style="width: 180px;height:150px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs4.getInt("pid")%>"><%=rs4.getString("pmodel")%></a><br>Rs.<%=rs4.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs4.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                           
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                                            
						
								<div class="clearfix"> </div>
							</div>
                                                    <div class="footer-copy1" style="padding-left: 100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="5" aria-labelledby="kitchen-tab">
							<div style="margin-top: 20px">
								
                                                              <%
                                               // String s=request.getParameter("var");
                                               // out.println("s:"+s);
                                              
                                               
                                                
                                                    PreparedStatement ps5=connection.prepareStatement("select * from product where pcat_id=? ");
                                                    ps5.setInt(1,5);
                                                   
                                                     ResultSet rs5=ps5.executeQuery();
                                    while (rs5.next()) {        
        
                                   
                                                %>
                                                
                                                 
                                                    <div class="col-lg-3 col-md-4 col-sm-6 text-center" style="margin-top: 50px;">
                                                        <a href="moreinfo.jsp?pid=<%=rs5.getInt("pid")%>"><img class="text-center" src="<%=rs5.getString("pimageurl")%>" alt=" " style="width: 180px;height:180px"/></a>
										
									
									<h5 ><a href="moreinfo.jsp?pid=<%=rs5.getInt("pid")%>"><%=rs5.getString("pmodel")%></a><br>Rs.<%=rs5.getInt("price")%></h5>
									
                                                                        
										<a href="AddCart?pid=<%=rs5.getInt("pid")%>"> <button class="btn btn-danger"  style="margin-top:10px;">&nbsp Add To Cart  </button> </a>
                                                           
								</div>
                                                                                 
			
                                              
                                                <%
                                                   
                                                }
                                                %>  
                                                            
                                                            
								<div class="clearfix"> </div>
							</div>
                                                    <div class="footer-copy1" style="padding-left: 100px">
                                       <nav class="pages">
						<ul class="pagination">
							<li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
							<li class="page-item active"><a href="postpage1" class="page-link">1</a></li>
							<li class="page-item"><a href="postpage2" class="page-link">2</a></li>
							<li class="page-item"><a href="postpage3" class="page-link">3</a></li>
							<li class="page-item"><a href="postpage4" class="page-link">Next</a></li>
						</ul>
					</nav>
                                                    </div>
						</div>
					</div>
				</div> 
			</div>
			
		</div>
     
	</div>
     
             
                                              
        
  
             
        
      
 

 
         
    
        
       
          </body>
</html>