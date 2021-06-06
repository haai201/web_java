<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" crossorigin="anonymous">
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>Đổi mật khẩu</title>
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
    <%
        
        String password = (String) session.getAttribute("password");
    %>
    
    <body>
        
<div class="wrapper">
    <form class="form-signin" onsubmit="return check()" method="post" action="change-pass.jsp">       
      <h2 class="form-signin-heading" style="color: #6699FF; font-size: 25px;">Welcom to ND Pharmacity</h2>
                        <div class="form-group text-left">
                            <label for="user_signin" class="">Mật khẩu cũ:&emsp;&emsp;&nbsp;</label>
                        <input type="password" id="pas_Old" name="pas_Old" class="form-control" required="">
                        </div>
                        <br>  
                        <div class="form-group text-left">
                            <label for="user_signin" class="">Mật khẩu mới: &ensp;&emsp;</label>
                        <input type="password" id="pas_New" name="pas_New" class="form-control" required="">
                        </div>
                        <br>  
                        <div class="form-group text-left">
                            <label for="user_signin" class="">Nhập lại mật khẩu: </label>
                        <input type="password" id="re_pas_New" name="re_pas_New" class="form-control" required="">
                        </div>
                        <br>  
                        
      <button class="btn btn-lg btn-primary btn-block" type="submit">XÁC NHẬN</button>   
      <button class="btn btn-default come" type="button">
                            <a href="http://localhost:8080/qlbh1/faces/index.jsp">Quay lại</a>
                        </button>
    </form>
  </div>
    <script>
        function check(){
            var checkPass = "<%=password %>";
            var pas_Old = document.getElementById("pas_Old").value;
            var pas_New = document.getElementById("pas_New").value;
            var re_pas_New = document.getElementById("re_pas_New").value;
            
            if( pas_Old === "" || pas_New === "" || re_pas_New === ""){
                alert("Vui lòng nhập đầy đủ thông tin!");
                return false;
            }
            if ( checkPass !== pas_Old){
                alert("Mật khẩu cũ không đúng! Vui lòng nhập lại");
                return false;
            }
            if (pas_New !== re_pas_New){
                alert("Mật khẩu mới không khớp! Vui lòng nhập lại");
                return false;
            }
            if (pas_New === pas_Old ){
                alert("Mật khẩu mới trùng với mật khẩu cũ! Vui lòng nhập lại");
                return false;
            }    
            var ask = confirm("Bạn có chắc muốn thay đổi mật khẩu không?");
            if (ask){
                return true;
            }else{
                return false;
            }  
        }       
    </script>
    </body>
</html>
