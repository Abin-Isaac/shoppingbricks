<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <div class="modal-header" style="background-color:lightblue;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="color:#3300FF">Sign Up here....</h4>
      </div>

      <div class="modal-body" style="background-color:white;">
          <form class="form" action="signUp.jsp" method="post">
              <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-user"></i></span>
    <input type="text" class="form-control" name="name" placeholder="Enter your name..." required>
  </div><br>
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-user"></i></span>
    <input id="email" type="email" class="form-control" name="email" placeholder=" Enter your Email..." required>
  </div><br>
              
              
  
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-lock"></i></span>
    <input  type="password" id="signup" class="form-control" name="password" placeholder="Create own password" required >
  </div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" onclick="SignUp()"><span style="color:#6633CC">Show Password </span>
                        
                                <script>
                           function SignUp() {
                           var x = document.getElementById("signup");
                           if (x.type === "password") {
                           x.type = "text";
                           } else {
                            x.type = "password";
                              }
                             }
                              </script>   <br>
                              
                            
  
  <div class="input-group">
    <span class="input-group-addon" style="background-color:#5cb85c; border:#4cae4c; color:#FFFFFF"><i class="glyphicon glyphicon-user"></i></span>
    <input id="email" type="text" class="form-control" name="dob" placeholder=" Enter your DOB (eg. 02/04/1994 )" required>
  </div><br>
  
  <br/>
 
  <div class="btn-group btn-group-justified">
     <div class="btn-group">
     <button type="submit" class="btn btn-primary">SignUp</button>
     </div>
      <div class="btn-group" >
    <button type="reset" class="btn btn-danger">Clear</button>
    </div>
</div>

  
</form>
      </div>
      <div class="modal-footer" style="background-color:lightblue">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    

  </div>
</div>