<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Welcom to ND Pharmacity</title>
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
          height:200px;">

    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="height: 10%;width: 100%;">
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
                        C??c lo???i thu???c s???p h???t h???n
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
        
           
    <div class="container" style="margin-top:30px">
      <div class="row">
      
        <div class="col-sm-5">    
          <h2>Chu???i Nh?? Thu???c Ti???n L???i S??? 1 Pharmacity Chinh Ph???c Th??? Tr?????ng H?? N???i</h2>
          <img class="fakeimg" src="https://image.pharmacity.vn/live/uploads/2019/05/IMG_9198.jpg">
          <div class="chu1">Hi???n nay, chu???i nh?? thu???c Pharmacity ???? c?? m???t t???i c??c th??nh ph??? l???n tr??n c??? n?????c nh?? H??? Ch?? Minh, H?? N???i, B??nh D????ng, V??ng T??u, C???n Th?? v???i ?????i ng?? h??n 1.000 D?????c s?? chuy??n m??n cao, s???n s??ng t?? v???n v?? ????a ra l???i khuy??n t???n t??m nh???t ?????n kh??ch h??ng.</div>
          <br>
          <h2>Tin t???c</h2>
          <p><a href="https://www.pharmacity.vn/coupon-khong-gioi-han-mung-sinh-nhat-thang-5/">D??nh ri??ng cho th??nh vi??n Extracare: Nh???n ngay coupon 25K cho ????n h??ng b???t k???</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/covid-19-thong-tin-tu-pharmacity/">COVID-19: Th??ng tin t??? Pharmacity / Pharmacity Announcement</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/vien-nang-giai-phong-cham-dot-pha-moi-trong-cham-soc-suc-khoe/">Vi??n nang gi???i ph??ng ch???m: ?????t ph?? m???i trong ch??m s??c s???c kh???e</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/tim-hieu-ve-tac-dung-cua-nhau-thai-cuu-trong-lam-dep/">T??m hi???u v??? t??c d???ng c???a nhau thai c???u trong l??m ?????p</a></p>
          <hr class="d-sm-none">
        </div>
        <div class="col-sm-6">
          
              <h2>?????i di???n Pharmacity: Th???t b???i su???t n??m qua l?? thi???u h??ng, ph???i x??y kho b??i 10.000m2 ????? ????p ???ng m???c ti??u m??? m???i 1 c???a h??ng/ng??y</h2>
            <img class="fakeimg" src="https://cafefcdn.com/thumb_w/650/2020/3/19/pharmar-cris-15846043262571843790618-crop-158460433743081490969.jpg">
              <div class="chu">Th???t b???i 1 n??m tr??? l???i ????y c???a Pharmacity l?? s??? l?????ng h??ng ho?? cung c???p ra th??? tr?????ng kh??ng ?????, kh??ch h??ng ph??n n??n nhi???u. M???t trong nh???ng nguy??n nh??n ch??nh l?? kho d??? tr??? qu?? nh???, v?? lu??n qu?? t???i, nh?? s??ng l???p ki??m T???ng Gi??m ?????c Chris Blank ph??n tr???n.</div>
          <h2>Pharmacity ho??n t???t 3 ?????t huy ?????ng tr??i phi???u, t???ng gi?? tr??? 150 t??? ?????ng</h2>
          <img class="fakeimg" src="https://cafefcdn.com/thumb_w/650/2019/11/6/phar-avar-15730336514841327131673-crop-1577110420940263972988.jpg">
              <p class="chu">CTCP D?????c ph???m Pharmacity ???? ho??n t???t ph??t h??nh tr??i phi???u ?????t 3 v???i t???ng gi?? tr??? h??n 29 t??? ?????ng v??o ng??y 18/12/2019, theo th??ng tin t??? HNX. K??? h???n d??? ki???n 2 n??m, l??i su???t l??n ?????n 13%/n??m v?? ?????nh k??? thanh to??n l??i 6 th??ng/l???n. M???c ????ch s??? d???ng v???n nh???m ?????u t?? m??? c???a h??ng m???i v?? b??? sung v???n l??u ?????ng cho c???a h??ng m???i. K???t qu???, nh?? ?????u t?? trong n?????c mua 91,4%, nh?? ?????u t?? n?????c ngo??i mua 8,6% t???ng l?????ng ch??o b??n.</p>
              </br>
        </div>
      </div>
    </div>

        <br>
        </br>
        <div class="container text-md-left">
            <div  class="row ">    
                <div class="col-md-4">
                    <img width="15%" src="https://image.pharmacity.vn/live/uploads/2019/04/u138.png" data-lazy-type="image" data-src="https://image.pharmacity.vn/live/uploads/2019/04/u138.png" class="attachment-medium size-medium lazy-loaded" alt="">
                    <h3> Mi???n ph?? v???n chuy???n  </h3>
                </div>
                <div class="col-md-4">  
                    <img width="15%" src="https://image.pharmacity.vn/live/uploads/2019/04/u137.png" data-lazy-type="image" data-src="https://image.pharmacity.vn/live/uploads/2019/04/u137.png" class="attachment-medium size-medium lazy-loaded" alt="">
                    <h3> T???n t??m ph???c v??? </h3>
                </div>
                <div class="col-md-4">
                    <img width="15%" src="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png" data-lazy-type="image" data-src="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png" class="attachment-medium size-medium lazy-loaded" alt="" srcset="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png 400w, https://image.pharmacity.vn/live/uploads/2019/04/u139-280x280.png 280w, https://image.pharmacity.vn/live/uploads/2019/04/u139-300x300.png 300w, https://image.pharmacity.vn/live/uploads/2019/04/u139-100x100.png 100w, https://image.pharmacity.vn/live/uploads/2019/04/u139.png 512w" data-srcset="" sizes="(max-width: 400px) 100vw, 400px">
                    <h3> C???a h??ng g???n b???n </h3>
                </div>
            </div>
          </div>
      <br>
      <!-- Footer -->
      <footer class="page-footer font-small mdb-color pt-4" style="background-color: #524e4e; color: #ffffff">

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Footer links -->
    <div class="row text-center text-md-left mt-3 pb-3">

      <!-- Grid column -->
        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
            <h6 class="text-uppercase mb-4 font-weight-bold">C???a h??ng</h6>
            <p>?????a ch???: D????ng N???i- H?? ????ng - H?? N???i</p>
            <p>Hotline: 19001008</p>
            <p>Email: NDPharmacity@gmail.com</p>
            <p>STK: 0528559102
        </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Li??n h???</h6>
        <p>
          <i class="fas fa-home mr-3"></i>106 D????ng N???i-H?? ????ng-H?? N???i</p>
        <p>
          <i class="fas fa-envelope mr-3"></i>nhaduongvan5@@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i>0528 559 102</p>
        <p>
          <i class="fas fa-print mr-3"></i>0981 124 297</p>
      </div>
      <!-- Grid column -->
      

      <!-- Grid column -->
      <hr class="w-100 clearfix d-md-none">
    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Th??ng tin h???u ??ch</h6>
        <p>
          <a href="#!">Qu???n l?? ch???t l?????ng</a>
        </p>
        <p>
          <a href="#!">??i???u kho???n v?? ??i???u ki???n giao d???ch</a>
        </p>
        <p>
          <a href="#!">Ch??nh s??ch b???o m???t</a>
        </p>
       
      </div>
      <!-- Grid column -->
      
      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Ch??m s??c kh??ch h??ng</h6>
        <p>Ph???n h???i t??? kh??ch h??ng</p>
        <p>Tr??? gi??p</p>
        <p></p>
        <p></p>
      </div>
    </div>
  </div>
  <!-- Footer Links -->

</footer>
<!-- Footer -->
</body>
      <script>
        function confirmLogout(){
            var ask = confirm("B???n c?? ch???c ch???n mu???n tho??t?");
            if(ask){
                window.location.href = "logout.jsp";
            }
            else{
                return false;
            }
        }
        </script>
</html>
