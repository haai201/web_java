<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>Đăng nhập</title>
        <style>
            @import "bourbon";
body {
	background: #6699FF !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}

        </style>
    </head>
    <body>
  <div class="wrapper">
    <form class="form-signin" method="post" action="processLogin.jsp">       
      <h2 class="form-signin-heading" style="color: #6699FF; font-size: 25px;">Welcom to ND Pharmacity</h2>
      <label for="email" class="">Tài khoản:</label>
    <input type="text" id="name" name="name" class="form-control" required="">
 
  <br>
                        <div class="form-group text-left">
                            <label for="password" class="">Mật khẩu:&nbsp;</label>
                            <input type="password" id="password" name="password" class="form-control" required=""></br>
                            <input type="checkbox" onclick="myFunction()">Hiển thị mật khẩu 
                        </div>
                        <br>     
      <button class="btn btn-lg btn-primary btn-block" type="submit">ĐĂNG NHẬP</button>   
    </form>
  </div>
        <script>function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}</script>
    </body>
</html>