<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ND Pharmacity</title>

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.10/slicknav.min.css">
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.10/jquery.slicknav.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mixitup/3.3.1/mixitup.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
    /*////////////////////////////[ CÁC THẺ CHUNG ]////////////////////////////*/

html,
body {
    height: 100%;
/*    font-family: "Cairo", sans-serif;*/
    -webkit-font-smoothing: antialiased;
    font-smoothing: antialiased;
}
footer{
    color: white;
}
h5,
h6 {
    margin: 0;
    color: #111111;
    font-weight: 400;
/*    font-family: "Cairo", sans-serif;*/
}



h5 {
    font-size: 18px;
    color: orangered;
}

h6 {
    font-size: 16px;
}

p {
    font-size: 16px;
/*    font-family: "Cairo", sans-serif;*/
    color: #6f6f6f;
    font-weight: 400;
    line-height: 26px;
    margin: 0 0 15px 0;
}

img {
    max-width: 100%;
}

input:focus,
select:focus,
button:focus,
textarea:focus {
    outline: none;
}

a:hover,
a:focus {
    text-decoration: none;
    outline: none;
    color: #ffffff;
}

ul,
ol {
    padding: 0;
    margin: 0;
}

/*////////////////////////////[ CÁC HỘP TEXT ]////////////////////////////*/

.section-title {
    margin-bottom: 50px;
    text-align: center;
}

.section-title h2 {
    color: #1c1c1c;
    font-weight: 700;
    position: relative;
}

.section-title h2:after {
    position: absolute;
    left: 0;
    bottom: -15px;
    right: 0;
    height: 4px;
    width: 80px;
    background: #7fad39;
    content: "";
    margin: 0 auto;
}

.set-bg {
    background-repeat: no-repeat;
    background-size: cover;
    background-position: top center;
}

.spad {
    padding-top: 100px;
    padding-bottom: 100px;
}

.text-white h5,
.text-white h6,
.text-white p,
.text-white span,
.text-white li,
.text-white a {
    color: #fff;
}

/*////////////////////////////[ CÁC NÚT ]////////////////////////////*/

.primary-btn {
    display: inline-block;
    font-size: 14px;
    padding: 10px 28px 10px;
    color: #ffffff;
    text-transform: uppercase;
    font-weight: 700;
    background: #7fad39;
    letter-spacing: 2px;
}

.site-btn {
    font-size: 14px;
    color: #ffffff;
    font-weight: 800;
    text-transform: uppercase;
    display: inline-block;
    padding: 13px 30px 12px;
    background: #7fad39;
    border: none;
}

/*////////////////////////////[ HEADER ]////////////////////////////*/

.header__top {
    background: #f5f5f5;
}

.header__top__left {
    padding: 10px 0 13px;
}

.header__top__left ul li {
    font-size: 17px;
    color: #1c1c1c;
    display: inline-block;
    margin-right: 45px;
    position: relative;
}

.header__top__left ul li:after {
    position: absolute;
    right: -25px;
    top: 1px;
    height: 20px;
    width: 1px;
    background: #000000;
    opacity: 0.1;
    content: "";
}

.header__top__left ul li:last-child {
    margin-right: 0;
}

.header__top__left ul li:last-child:after {
    display: none;
}

.header__top__left ul li i {
    color: #252525;
    margin-right: 5px;
}

.header__top__right {
    text-align: right;
    padding: 10px 0 13px;
}
.header__top__right__language ul {
    background: #222222;
    width: 100px;
    text-align: left;
    padding: 5px 0;
    position: absolute;
    left: 0;
    top: 43px;
    z-index: 9;
    opacity: 0;
    visibility: hidden;
    -webkit-transition: all, 0.3s;
    -moz-transition: all, 0.3s;
    -ms-transition: all, 0.3s;
    -o-transition: all, 0.3s;
    transition: all, 0.3s;
}

.header__top__right__auth {
    display: inline-block;
}

.header__top__right__auth a {
    display: block;
    font-size: 18px;
    color: #1c1c1c;
}

.header__top__right__auth a i {
    margin-right: 6px;
}

.header__logo {
    padding: 15px 0;
}

.header__logo a {
    display: inline-block;
}

.header__menu {
    padding: 24px 0;
}

.header__menu ul li {
    list-style: none;
    display: inline-block;
    margin-right: 50px;
    position: relative;
}

.header__menu ul li .header__menu__dropdown {
    position: absolute;
    left: 0;
    top: 50px;
    background: #222222;
    width: 180px;
    z-index: 9;
    padding: 5px 0;
    -webkit-transition: all, 0.3s;
    -moz-transition: all, 0.3s;
    -ms-transition: all, 0.3s;
    -o-transition: all, 0.3s;
    transition: all, 0.3s;
    opacity: 0;
    visibility: hidden;
}

.header__menu ul li .header__menu__dropdown li {
    margin-right: 0;
    display: block;
}

.header__menu ul li .header__menu__dropdown li:hover>a {
    color: #7fad39;
}

.header__menu ul li .header__menu__dropdown li a {
    text-transform: capitalize;
    color: #ffffff;
    font-weight: 400;
    padding: 5px 15px;
}

.header__menu ul li.active a {
    color: #7fad39;
}

.header__menu ul li:hover .header__menu__dropdown {
    top: 30px;
    opacity: 1;
    visibility: visible;
}

.header__menu ul li:hover>a {
    color: #7fad39;
}

.header__menu ul li:last-child {
    margin-right: 0;
}

.header__menu ul li a {
    font-size: 18px;
    color: #252525;
    text-transform: uppercase;
    font-weight: 700;
    letter-spacing: 2px;
    -webkit-transition: all, 0.3s;
    -moz-transition: all, 0.3s;
    -ms-transition: all, 0.3s;
    -o-transition: all, 0.3s;
    transition: all, 0.3s;
    padding: 5px 0;
    display: block;
}

.menu__wrapper {
    display: none;
}

.open {
    display: none;
}

/*////////////////////////////[ BACKGROUND ]////////////////////////////*/
.background{
    width: 100%;
    height: 540px;
    overflow: hidden;
    position: relative;
    background-image: url(https://trantuansang.com/wp-content/uploads/2019/05/kinh-doanh-cua-hang-tien-loi-e1557280633661.jpg)
}

/*////////////////////////////[ FEATURED ]////////////////////////////*/

.featured {
    padding-top: 80px;
    padding-bottom: 40px;
}

.featured__controls {
    text-align: center;
    margin-bottom: 50px;
}

.featured__controls ul li {
    list-style: none;
    font-size: 25px;
    color: #1c1c1c;
    display: inline-block;
    margin-right: 25px;
    position: relative;
    cursor: pointer;
}

.featured__controls ul li.active:after {
    opacity: 1;
}

.featured__controls ul li:after {
    position: absolute;
    left: 0;
    bottom: -2px;
    width: 100%;
    height: 2px;
    background: #7fad39;
    content: "";
    opacity: 0;
}

.featured__controls ul li:last-child {
    margin-right: 0;
}

.featured__item {
    margin-bottom: 50px;
}


.featured__item__pic {
    height: 270px;
    position: relative;
    overflow: hidden;
    background-position: center center;
}

.featured__item__text {
    text-align: center;
    padding-top: 15px;
}

.featured__item__text h6 {
    margin-bottom: 10px;
}

.featured__item__text h6 a {
    color: #252525;
}

.featured__item__text h5 {
    color: #252525;
    font-weight: 700;
}
.bg-dark{
            background-color: #1b74e7!important;
        }


</style>
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
                    <a class="dropdown-item" style="color: white;" href="http://localhost:8080/quanlynhathuoc/main/donban'jsp">
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
      
      
      
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="featured__controls" style="font-size: 18px">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".set">Thực phẩm chức năng</li>
                            <li data-filter=".sit">Chăm sóc cá nhân</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00779_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Fugacar Mebendazole (500mg)</a></h6>
                            <h5 style="color: orangered;">18.500đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/05/P10766_1-600x600.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Nước muối sinh lý Vĩnh Phúc Natriclorid 0.9% (500ml)</a></h6>
                            <h5 style="color: orangered;">8.500đ </h5>
                        </div>
                    </div>
                </div>
             
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00024_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dầu gió Trường Sơn (6ml)</a></h6>
                            <h5 style="color: orangered;">11.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00596_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dầu gội sạch gàu, hết ngứa da đầu Selsun (100ml)</a></h6>
                            <h5 style="color: orangered;">89.000đ </h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P01392_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Panadol Extra (180 viên/hộp)</a></h6>
                            <h5 style="color: orangered;">214.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00252_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Eugica (Hộp 10 vỉ x 10 viên nang mềm)</a></h6>
                            <h5 style="color: orangered;">63.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00641_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Hoạt huyết Nhất Nhất (3 vỉ x 10 viên/hộp)</a></h6>
                            <h5 style="color: orangered;">99.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00296_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Prospan (100ml)</a></h6>
                            <h5 style="color: orangered;">68.000đ</h5>
                        </div>
                    </div>
                </div>
                   <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/05/P01292_1-600x600.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Cao hổ đỏ giảm đau nhức cơ Tiger Balm Red (19.4g)</a></h6>
                            <h5 style="color: orangered;">36.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00121_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Thuốc tránh thai Rigevidon (3 vỉ 21+7 viên nén/hộp)</a></h6>
                            <h5 style="color: orangered;">49.000đ</h5>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P03048_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dung dịch súc miệng Orafar (90ml)</a></h6>
                            <h5 style="color: orangered;">8.000đ</h5>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/05/P00222_1-600x600.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Phosphalugel (Hộp 26 gói)</a></h6>
                            <h5 style="color: orangered;">104.000đ</h5>
                        </div>
                    </div>
                </div>



                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2020/04/P17302_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Khẩu trang vải kháng khuẩn 3 lớp Face Mask (2 cái/gói)</a></h6>
                            <h5 style="color: orangered;">29.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/05/P04409_1-600x600.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Miếng dán bỏng bô và trợt da Urgo Burns & Grazes</a></h6>
                            <h5 style="color: orangered;">25.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P12808_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Viên sủi tăng đề kháng, hỗ trợ da tóc Swiss Energy (Tuýp 20 viên)</a></h6>
                            <h5 style="color: orangered;">110.000đ/bó</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2021/01/P18392_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Cồn 70 độ Pharmacity (500ml)</a></h6>
                            <h5 style="color: orangered;">29.000đ/kg</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/05/P01292_1-600x600.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Cao hổ đỏ giảm đau nhức cơ Tiger Balm Red (19.4g)</a></h6>
                            <h5 style="color: orangered;">36.000đ</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00641_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Hoạt huyết Nhất Nhất (3 vỉ x 10 viên/hộp)</a></h6>
                            <h5 style="color: orangered;">99.000đ</h5>
                        </div>
                    </div>
                </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix set">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00596_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dầu gội sạch gàu, hết ngứa da đầu Selsun (100ml)</a></h6>
                            <h5 style="color: orangered;">89.000đ </h5>
                        </div>
                    </div>
                </div> 
                <div class="col-lg-3 col-md-4 col-sm-6 mix sit">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="https://image.pharmacity.vn/live/uploads/2019/04/P00024_1_l.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dầu gió Trường Sơn (6ml)</a></h6>
                            <h5 style="color: orangered;">11.000đ</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
              <!-- Footer -->
    <footer class="page-footer font-small mdb-color pt-4" style="background-color: #524e4e; color: #ffffff">

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Footer links -->
    <div class="row text-center text-md-left mt-3 pb-3">

      <!-- Grid column -->
        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold" style="color: white">Cửa hàng</h6>
            <p style="color: white">Địa chỉ: Dương Nội - Hà Đông - Hà Nội</p>
            <p style="color: white">Hotline: 19001008</p>
            <p style="color: white">Email: NDPharmacity@gmail.com</p>
            <p style="color: white">STK: 0528559102
        </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold" style="color: white">Liên hệ</h6>
        <p style="color: white">
          <i class="fas fa-home mr-3"></i>106 Dương Nội-Hà Đông-Hà Nội</p>
        <p style="color: white">
          <i class="fas fa-envelope mr-3"></i>nhaduongvan5@@gmail.com</p>
        <p style="color: white">
          <i class="fas fa-phone mr-3"></i>0528 559 102</p>
        <p style="color: white">
          <i class="fas fa-print mr-3"></i>0981 124 297</p>
      </div>
      <!-- Grid column -->
      

      <!-- Grid column -->
      <hr class="w-100 clearfix d-md-none">
    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold" style="color: white">Thông tin hữu ích</h6>
        <p>
          <a href="#!" style="color: white">Quản lý chất lượng</a>
        </p>
        <p>
          <a href="#!" style="color: white">Điều khoản và điều kiện giao dịch</a>
        </p>
        <p>
          <a href="#!" style="color: white">Chính sách bảo mật</a>
        </p>
       
      </div>
      <!-- Grid column -->
      
      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold" style="color: white">Chăm sóc khách hàng</h6>
        <p style="color: white">Phản hồi từ khách hàng</p>
        <p style="color: white">Trợ giúp</p>
   
      </div>
    </div>
  </div>
  <!-- Footer Links -->

</footer>
<!-- Footer -->
    </section>
    <!-- Featured Section End -->

    <!-- Js Plugins -->
    
    <script type="text/javascript">
        
        'use strict';

        (function ($) {

            /*------------------
                Preloader
            --------------------*/
            $(window).on('load', function () {
                $(".loader").fadeOut();
                $("#preloder").delay(200).fadeOut("slow");

                /*------------------
                    Gallery filter
                --------------------*/
                $('.featured__controls li').on('click', function () {
                    $('.featured__controls li').removeClass('active');
                    $(this).addClass('active');
                });
                if ($('.featured__filter').length > 0) {
                    var containerEl = document.querySelector('.featured__filter');
                    var mixer = mixitup(containerEl);
                }
            });

            /*------------------
                Background Set
            --------------------*/
            $('.set-bg').each(function () {
                var bg = $(this).data('setbg');
                $(this).css('background-image', 'url(' + bg + ')');
            });

            /*------------------
                Navigation
            --------------------*/
            $(".mobile-menu").slicknav({
                prependTo: '#mobile-menu-wrap',
                allowParentLinks: true
            });

            /*--------------------------
                Select
            ----------------------------*/
            $("select").niceSelect();

            /*------------------
                Single Product
            --------------------*/
            $('.product__details__pic__slider img').on('click', function () {

                var imgurl = $(this).data('imgbigurl');
                var bigImg = $('.product__details__pic__item--large').attr('src');
                if (imgurl != bigImg) {
                    $('.product__details__pic__item--large').attr({
                        src: imgurl
                    });
                }
            });

        })(jQuery);
        
                function confirmLogout(){
            var ask = confirm("Ban co chac chan muon thoat?");
            if(ask){
                window.location.href = "http://localhost:8080/quanlynhathuoc/faces/logout.jsp";
            }
            else{
                return false;
            }
        }
    </script>

</body>

</html>