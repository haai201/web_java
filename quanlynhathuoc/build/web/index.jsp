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
                        Các loại thuốc sắp hết hạn
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
        
           
    <div class="container" style="margin-top:30px">
      <div class="row">
      
        <div class="col-sm-5">    
          <h2>Chuỗi Nhà Thuốc Tiện Lợi Số 1 Pharmacity Chinh Phục Thị Trường Hà Nội</h2>
          <img class="fakeimg" src="https://image.pharmacity.vn/live/uploads/2019/05/IMG_9198.jpg">
          <div class="chu1">Hiện nay, chuỗi nhà thuốc Pharmacity đã có mặt tại các thành phố lớn trên cả nước như Hồ Chí Minh, Hà Nội, Bình Dương, Vũng Tàu, Cần Thơ với đội ngũ hơn 1.000 Dược sĩ chuyên môn cao, sẵn sàng tư vấn và đưa ra lời khuyên tận tâm nhất đến khách hàng.</div>
          <br>
          <h2>Tin tức</h2>
          <p><a href="https://www.pharmacity.vn/coupon-khong-gioi-han-mung-sinh-nhat-thang-5/">Dành riêng cho thành viên Extracare: Nhận ngay coupon 25K cho đơn hàng bất kỳ</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/covid-19-thong-tin-tu-pharmacity/">COVID-19: Thông tin từ Pharmacity / Pharmacity Announcement</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/vien-nang-giai-phong-cham-dot-pha-moi-trong-cham-soc-suc-khoe/">Viên nang giải phóng chậm: Đột phá mới trong chăm sóc sức khỏe</a></p>
          <p></p>
          <p><a href="https://www.pharmacity.vn/tim-hieu-ve-tac-dung-cua-nhau-thai-cuu-trong-lam-dep/">Tìm hiểu về tác dụng của nhau thai cừu trong làm đẹp</a></p>
          <hr class="d-sm-none">
        </div>
        <div class="col-sm-6">
          
              <h2>Đại diện Pharmacity: Thất bại suốt năm qua là thiếu hàng, phải xây kho bãi 10.000m2 để đáp ứng mục tiêu mở mới 1 cửa hàng/ngày</h2>
            <img class="fakeimg" src="https://cafefcdn.com/thumb_w/650/2020/3/19/pharmar-cris-15846043262571843790618-crop-158460433743081490969.jpg">
              <div class="chu">Thất bại 1 năm trở lại đây của Pharmacity là số lượng hàng hoá cung cấp ra thị trường không đủ, khách hàng phàn nàn nhiều. Một trong những nguyên nhân chính là kho dự trữ quá nhỏ, và luôn quá tải, nhà sáng lập kiêm Tổng Giám đốc Chris Blank phân trần.</div>
          <h2>Pharmacity hoàn tất 3 đợt huy động trái phiếu, tổng giá trị 150 tỷ đồng</h2>
          <img class="fakeimg" src="https://cafefcdn.com/thumb_w/650/2019/11/6/phar-avar-15730336514841327131673-crop-1577110420940263972988.jpg">
              <p class="chu">CTCP Dược phẩm Pharmacity đã hoàn tất phát hành trái phiếu đợt 3 với tổng giá trị hơn 29 tỷ đồng vào ngày 18/12/2019, theo thông tin từ HNX. Kỳ hạn dự kiến 2 năm, lãi suất lên đến 13%/năm và định kỳ thanh toán lãi 6 tháng/lần. Mục đích sử dụng vốn nhằm đầu tư mở cửa hàng mới và bổ sung vốn lưu động cho cửa hàng mới. Kết quả, nhà đầu tư trong nước mua 91,4%, nhà đầu tư nước ngoài mua 8,6% tổng lượng chào bán.</p>
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
                    <h3> Miễn phí vận chuyển  </h3>
                </div>
                <div class="col-md-4">  
                    <img width="15%" src="https://image.pharmacity.vn/live/uploads/2019/04/u137.png" data-lazy-type="image" data-src="https://image.pharmacity.vn/live/uploads/2019/04/u137.png" class="attachment-medium size-medium lazy-loaded" alt="">
                    <h3> Tận tâm phục vụ </h3>
                </div>
                <div class="col-md-4">
                    <img width="15%" src="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png" data-lazy-type="image" data-src="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png" class="attachment-medium size-medium lazy-loaded" alt="" srcset="https://image.pharmacity.vn/live/uploads/2019/04/u139-400x400.png 400w, https://image.pharmacity.vn/live/uploads/2019/04/u139-280x280.png 280w, https://image.pharmacity.vn/live/uploads/2019/04/u139-300x300.png 300w, https://image.pharmacity.vn/live/uploads/2019/04/u139-100x100.png 100w, https://image.pharmacity.vn/live/uploads/2019/04/u139.png 512w" data-srcset="" sizes="(max-width: 400px) 100vw, 400px">
                    <h3> Của hàng gần bạn </h3>
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
            <h6 class="text-uppercase mb-4 font-weight-bold">Cửa hàng</h6>
            <p>Địa chỉ: Dương Nội- Hà Đông - Hà Nội</p>
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
        <h6 class="text-uppercase mb-4 font-weight-bold">Liên hệ</h6>
        <p>
          <i class="fas fa-home mr-3"></i>106 Dương Nội-Hà Đông-Hà Nội</p>
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
        <h6 class="text-uppercase mb-4 font-weight-bold">Thông tin hữu ích</h6>
        <p>
          <a href="#!">Quản lý chất lượng</a>
        </p>
        <p>
          <a href="#!">Điều khoản và điều kiện giao dịch</a>
        </p>
        <p>
          <a href="#!">Chính sách bảo mật</a>
        </p>
       
      </div>
      <!-- Grid column -->
      
      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Chăm sóc khách hàng</h6>
        <p>Phản hồi từ khách hàng</p>
        <p>Trợ giúp</p>
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
            var ask = confirm("Bạn có chắc chắn muốn thoát?");
            if(ask){
                window.location.href = "logout.jsp";
            }
            else{
                return false;
            }
        }
        </script>
</html>
