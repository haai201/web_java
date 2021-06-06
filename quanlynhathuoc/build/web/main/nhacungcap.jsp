<%-- 
    Document   : nhacungcap
    Created on : May 29, 2021, 8:48:50 AM
    Author     : nhadu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="xuly.xuly"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nhà cung cấp </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css" type="text/css"/>

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <%
        String lv = "";
        String lvl1 = "1";
        String lvl2 = "2";
        String lvl3 = "3";
        if ((String) session.getAttribute("role") != null) {
            lv = (String) session.getAttribute("role");
        }

    %>
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
                  Trang chủ
                </a>
            </li>
            <% if ( lv.equals(lvl1) ) { %>
          
            
                 

<!--            <li class="nav-item">
                  <a class="nav-link" style="color: white;" href="http://localhost:8080/qlbh1/main/Account.xhtml">
                    Tài khoản</a>  
            </li>-->
          
            <li class="nav-item ">
                  <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/nhacungcap.jsp">
                    Nhà cung cấp
                  </a>
<!--<a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/nhacungcap.jsp">
                    Nhà cung cấp
                  </a>-->
            </li>
            
            <% } if (lv.equals(lvl1) || lv.equals(lvl2)) { %>
          
             <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="color: white;font-size: 21px" href="#" id="navbardrop" data-toggle="dropdown">
                    Hóa đơn
                </a>
                <div class="dropdown-menu bg-dark navbar-dark " >
                    <a class="dropdown-item" style="color: white;" href="http://localhost:8080/quanlynhathuoc/main/donnhap.jsp">
                        Đơn nhập
                    </a>    
                    <a class="dropdown-item" style="color: white;" href="http://localhost:8080/quanlynhathuoc/main/donban.jsp">
                        Đơn bán
                    </a>
                </div>
            </li>
                        <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="color: white;font-size: 21px" href="#" id="navbardrop" data-toggle="dropdown">
                    Thống kê
                </a>
                <div class="dropdown-menu bg-dark navbar-dark " >
                    <a class="dropdown-item" style="color: white;" href="#">
                        Doanh thu nhân viên theo tháng
                    </a>    
                    <a class="dropdown-item" style="color: white;" href="#">
                        Các mặt hàng sắp hết hạn
                    </a>
                      <a class="dropdown-item" style="color: white;" href="#">
                        Hàng nhập theo tháng
                    </a>
                </div>
            </li>
            <li class="nav-item">
            <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/nhanvien.jsp">
                    Nhân viên
                  </a>
            </li>
            <li class="nav-item">
                  <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/khachhang.jsp">
                    Khách hàng
                  </a>
            </li> 
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/sanpham.jsp">Hàng hóa</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/hoadon.jsp">Giỏ hàng</a>
            </li>
            
            <% } %>
            <li class="nav-item active">
                <a class="nav-link" style="color: white;font-size: 21px" href="http://localhost:8080/quanlynhathuoc/main/SanPham.jsp">Sản phẩm</a>
            </li>

            
          </ul>
            
            <% if ( (String) session.getAttribute("user") == null ){ %>
          <ul class="navbar-nav active ml-auto">
              <li class="nav-item"> 
                  <a class="nav-link" style="color: white;font-size: 21px"
                    href="http://localhost:8080/quanlynhathuoc/faces/login.jsp"> Đăng nhập
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
                      Đổi mật khẩu
                  </a>
<!--                    <div class="dropdown-divider"></div>-->
                  <a class="dropdown-item" style="color: white;font-size: 15px"
                     onclick="confirmLogout()"> Thoát
                  </a>
              </div>
              </li>
          </ul>
              <% } %>
        </ul>
      </div>  
    </nav>
        <div class="col-lg-12">
            <h1>Nhà Cung Cấp</h1>
        <table class="table table-sm">
            <thead>
              <tr>
                <th scope="col">STT</th>
                <th scope="col">Mã Nhà Cung Cấp</th>
                <th scope="col">Tên Nhà Cung Cấp</th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
                <% 
                    int stt = 0;
                    xuly tbl = new xuly();
                    ResultSet rs = tbl.cont();
                    
                    while (rs.next()){
                    stt++;
                
                %>
              <tr>
                <th scope="row"><%=stt%></th>
                <td><%=rs.getString("MaNhaCC")%></td>
                <td><%=rs.getString("TenNhaCC")%></td>
                
              </tr>
              <% } %>
            </tbody>
       </table>
        </div>
            <button class="thoat">
                <a href="http://localhost:8080/quanlynhathuoc/faces/index.jsp">Quay lại</a>
            </button>
            <script>
        function confirmLogout(){
            var ask = confirm("Bạn có chắc chắn muốn thoát?");
            if(ask){
                window.location.href = "logout.jsp";
            }
            else{
                return false;
            }
        }
        </script>
    </body>
</html>