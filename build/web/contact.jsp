<%-- 
    Document   : contactus
    Created on : May 1, 2018, 1:46:27 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    
        
        <link href="css/last.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="images/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
    
  <script src="images/assets/bootstrap/js/wowslider.js" type="text/javascript"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
    <title>JSP Page</title>
    </head>
    <body>
        <style>
            /*---------prod_box_big----------*/
</style>
         <%@include file="header.jsp"%>
 
 
 <div class="row" >
     <div class="col-lg-3 "></div>
     <div class="col-lg-7 text-center" style="border: 10px solid goldenrod ;margin-top:5%;margin-bottom:2%;">
         <div id="main_container">
 
    <!-- end of left content -->
    
    <div class="center_content" >
        
       
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="contact_form text-center" >
              <div class="center_title_bar text-center"><h3><strong>Contact Us</strong></h3></div>
     
          <form action="ContactUs" method="get"   name="contactus" onsubmit="return check()">
            
              <div class="form_row" >
                  <br>
                  <label class="contact"><strong>Name:</strong></label>
                <input type="text" class="contact_input"  name="name" style="width: 50%;border: 2px solid gold ;" onchange="return check()"/>
            </div>
            <div class="form_row">
                <br>
              <label class="contact"><strong>Email:</strong></label>
              <input type="text" class="contact_input" name="email" style="width: 50%;border: 2px solid gold ;" onchange="return check()" />
            </div>
            <div class="form_row">
                <br>
              <label class="contact"><strong>Phone:</strong></label>
              <input type="text" class="contact_input" name="phone" style="width: 50%;border: 2px solid gold ;" onchange="return check()"/>
            </div>
            <div class="form_row">
                <br>
                <label class="contact"><strong>Company:</strong></label>
              <input type="text" class="contact_input" name="company" style="width: 49%;border: 2px solid gold ;"  onchange="return check()">
            </div>
            <div class="form_row" >
                <br>
              <label class="contact"><strong>Message:</strong></label>
             <div style="margin-left: 78px;"> <textarea   class="contact_textarea" name="message" onchange="return check()" style="width: 60%;border: 2px solid gold ;" ></textarea></div>
            </div>
            <div class="form_row"><br> <input type="submit" value="send details" /> </div>
            
          </form>
          </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
    </div>
    <!-- end of center content -->
   
</div>
             </div>
      <div class="col-lg-3"></div>
</div>
<!-- end of main_container -->
 <%@include file="footer.jsp" %>
</body>
</html>
