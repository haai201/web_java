<%-- 
    Document   : insert
    Created on : Jun 5, 2021, 4:51:41 PM
    Author     : nhadu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css" type="text/css"/>

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Insert Product</title>
        <%
        String lv = "";
        String lvl1 = "1";
        String lvl2 = "2";
        String lvl3 = "3";
        if ((String) session.getAttribute("role") != null) {
            lv = (String) session.getAttribute("role");
        }

    %>
    </head>
    
    <body>
         <style>
       .bg-dark{
            background-color: #1b74e7!important;
        }
    </style>
    </head>
    <body>
        <div 
        class="jumbotron text-center" 
        style="margin-bottom:0; background-image: url(https://ecommerce-website-pmc.s3.amazonaws.com/live/uploads/2019/05/IMG_9085.jpg); 
          height:300px;">

    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="height: 45px">
      <!--Brand-->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!--Toggler/collasibe Button-->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!--Links-->
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            
            <li class="nav-item active">
                <a class="nav-link" style="color: white; font-size: 21px;" href="http://localhost:8080/quanlynhathuoc/faces/index.jsp">
                  Trang ch???
                </a>
            </li>
            <% if ( lv.equals(lvl1) ) { %>
          
            
                 

<!--            <li class="nav-item">
                  <a class="nav-link" style="color: white;" href="http://localhost:8080/qlbh1/main/Account.xhtml">
                    T??i kho???n</a>  
            </li>-->
          
            <li class="nav-item ">
                  <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/nhacungcap.jsp">
                    Nh?? cung c???p
                  </a>
            </li>
            
            <% } if (lv.equals(lvl1) || lv.equals(lvl2)) { %>
          
             <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="color: white;font-size: 21px" href="#" id="navbardrop" data-toggle="dropdown">
                    H??a ????n
                </a>
                <div class="dropdown-menu bg-dark navbar-dark " >
                    <a class="dropdown-item" style="color: white;" href="http://localhost:8080/quanlynhathuoc/main/donnhap.jsp">
                        ????n nh???p
                    </a>    
                    <a class="dropdown-item" style="color: white;" href="http://localhost:8080/quanlynhathuoc/main/donban.jsp">
                        ????n b??n
                    </a>
                </div>
            </li>
                        <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="color: white;font-size: 21px" href="#" id="navbardrop" data-toggle="dropdown">
                    Th???ng k??
                </a>
                <div class="dropdown-menu bg-dark navbar-dark " >
                    <a class="dropdown-item" style="color: white;" href="#">
                        Doanh thu nh??n vi??n theo th??ng
                    </a>    
                    <a class="dropdown-item" style="color: white;" href="#">
                        C??c m???t h??ng s???p h???t h???n
                    </a>
                      <a class="dropdown-item" style="color: white;" href="#">
                        H??ng nh???p theo th??ng
                    </a>
                </div>
            </li>
            <li class="nav-item">
            <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/nhanvien.jsp">
                    Nh??n vi??n
                  </a>
            </li>
            <li class="nav-item">
                  <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/khachhang.jsp">
                    Kh??ch h??ng
                  </a>
            </li> 
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/sanpham.jsp">H??ng h??a</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/hoadon.jsp">Gi??? h??ng</a>
            </li>
            
            <% } %>
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/SanPham.jsp">S???n ph???m</a>
            </li>

            
          </ul>
            
            <% if ( (String) session.getAttribute("user") == null ){ %>
          <ul class="navbar-nav active ml-auto">
              <li class="nav-item"> 
                  <a class="nav-link" style="color: white;font-size: 21px"
                    href="http://localhost:8080/quanlynhathuoc/faces/login.jsp"> ????ng nh???p
                  </a>
                 
              </li>
          </ul>
        
          <% } else {%>
          <ul class="navbar-nav dropdown active ml-auto">
              <li class="nav-item dropdown dropdown-menu-right"> 
                  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"
                     style="color: greenyellow;font-size: 25px">
                     <%= session.getAttribute("user") %>
                  </a>
              
              <div class="dropdown-menu bg-dark navbar-dark">
                  <a class="dropdown-item" href="http://localhost:8080/quanlynhathuoc/change-pass-from.jsp" style="color: white;font-size: 15px">
                      ?????i m???t kh???u
                  </a>
<!--                    <div class="dropdown-divider"></div>-->
                  <a class="dropdown-item" style="color: white;font-size: 15px"
                     onclick="confirmLogout()"> Tho??t
                  </a>
              </div>
              </li>
          </ul>
              <% } %>
        </ul>
      </div>  
    </nav>
        <div class="wrapper">
        <form action="processInsert.jsp" method="POST">
            <h1>Th??m s???n ph???m m???i</h1>
            <div class="form-group text-left">
            <table>
                <tr>
                    <td>M?? thu???c:</td>
                    <td><input type="text" id="id" name="id"></td>
                </tr>
                <tr>
                    <td>T??n Thu???c</td>
                    <td><input type="text" id="name" name="name"></td>
                </tr>
                <tr>
                    <td>M?? Nh?? Cung C???p</td>
                    <td><input type="text" id="company" name="company"></td>
                </tr>
                <tr>
                    <td>M?? t???</td>
                    <td><input type="text" id="info" name="info"></td>
                </tr>
                <tr>
                    <td>Gi?? B??n</td>
                    <td><input type="text" id="price" name="price"></td>
                </tr>
                <tr>

                    <td colspan="2" align="right">
                        <button type="submit" name="insert">X??c nh???n</button>
                        <button type="reset" name="reset">Reset</button>
                    </td>
                </tr>
        </form>
            </div>
            </div>
</body>
</html>