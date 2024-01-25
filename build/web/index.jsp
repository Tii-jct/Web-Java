<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="include/header.jsp"></jsp:include>
    <!-- Navbar End -->


    <!-- Carousel Start -->
     <div class="container-fluid mb-3">
        <div class="row px-sm-5">
            <div class="col-lg-12">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                  
               <div class="carousel-inner">
               <div class="carousel-item position-relative active" style="height: 430px;" style="object-fit: cover;">
                    <img class="mySlides position-absolute w-100 h-100" src="https://xedapthegioi.vn/wp-content/uploads/2022/05/banner-mtb-1400x431.jpg" style="object-fit: cover;">
                    <img class="mySlides position-absolute w-100 h-100" src="https://fgbike.vn/wp-content/uploads/2021/05/TOP-05-THUONG-HIEU-XE-DAP-DUA-NOI-TIENG-THE-GIOI.png" style="object-fit: cover;">
                  <img class="mySlides position-absolute w-100 h-100" src="https://giaxemaydienchinhhang.files.wordpress.com/2016/10/ronyama-img1-1_6308.jpg" style="object-fit: cover;">    
               </div>
                    </div>


                </div>

         </div>

                <script>
                var myIndex = 0;
                carousel();

                function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";  
                }
                myIndex++;
                if (myIndex > x.length) {myIndex = 1}    
                x[myIndex-1].style.display = "block";  
                setTimeout(carousel, 1000); // Change image every 2 seconds
                }
                </script>
                                
              <!--  slide kết thúc -->
            </div>
          </div>  

           


    <!-- Carousel End -->


    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Chất Lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Miễn Phí Vận Chuyển</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-trả hàng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Hỗ Trợ</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->



    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
        <div class="row px-xl-5">
            <c:forEach items="${listP}" var="o">
              <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="${o.image}" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href="detail?pid=${o.id}"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="detail?pid=${o.id}">${o.name}</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>${o.price}</h5><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
        
    </div>
    <!-- Products End -->


  


    <!-- Vendor End -->

      <jsp:include page="include/footer.jsp"></jsp:include>
    <!-- Footer Start -->
</body>

</html>