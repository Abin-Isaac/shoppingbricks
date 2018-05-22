<%-- 
    Document   : test3
    Created on : Mar 29, 2018, 8:28:52 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="test3.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="dropdownWrapper hard-hidden">
			      			<div class="dropdownAccount hidden">
			      				<div class="accountList">
										<ul>
										<li><a href="h"><i class="order-icon footerIconsImg"></i>Orders</a></li>
										<li><a href="https://www.snapdeal.com/mywishlist"><i class="shortlist-icon footerIconsImg"></i>Shortlist</a></li>
										<li><a href="https://www.snapdeal.com/mysdcash" class="sd-information"><i class="sd-cash-icon footerIconsImg"></i><span class="sd-cash">SD Cash</span><div class="sd-balance"></div></a></li>
										<li><a href="https://www.snapdeal.com/myEGiftVoucher"><i class="gift-icon footerIconsImg"></i>E-Gift Voucher</a></li>
										<li class="accountInfoNonLoggedIn logoutNew">
											<a href="https://www.snapdeal.com/logout" class="accountBtn rippleWhite sign logout-account">Logout</a>
										</li>
										</ul>
									</div>

							</div>
							<div class="dropdownAccountNonLoggedIn hidden">
								<div class="accountList">
									<ul>
										<li><a href="https://www.snapdeal.com/myorders"><i class="account-icon footerIconsImg"></i>Your Account</a></li>
										<li><a href="https://www.snapdeal.com/myorders"><i class="order-icon footerIconsImg"></i>Your Orders</a></li>
										<li><a href="https://www.snapdeal.com/mywishlist"><i class="shortlist-icon footerIconsImg"></i>Shortlist</a></li>
										<li><a href="https://www.snapdeal.com/mysdcash"  class="sd-information"><i class="sd-cash-icon footerIconsImg"></i>SD Cash</a></li>
									</ul>
								</div>
								<div class="accountInfoNonLoggedIn">
						 			<p class="newUser"><span>If you are a new user</span></p>
						 			<span class="newUserRegister">Register</span>
						 			<span class="accountBtn btn rippleWhite"><a href="https://www.snapdeal.com/login">login</a></span>
						 		</div>

							</div>
					</div>
			   
			

    </body>
</html>
