<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--menu-->

        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">TiShop</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                                                           
                                        <c:if test="${sessionScope.ss.isAdmin == 1}">
                                  <li class="nav-item">
                                      <a class="nav-link" href="#">Manager Account</a>
                                  </li>
                              </c:if>
                              <c:if test="${sessionScope.ss.isSell == 1}">
                                  <li class="nav-item">
                                      <a class="nav-link" href="manager">Manager Product</a>
                                  </li>
                              </c:if>
                                      <c:if test="${sessionScope.ss !=null}">
                                           <li class="nav-item">
                                               <a class="nav-link" href="#">Xin Chào ${sessionScope.ss.user}</a>
                                      </li>
                                      <li class="nav-item">
                                          <a class="nav-link" href="logout">đăng xuất</a>
                                      </li>
                                      </c:if>

                                         <c:if test="${sessionScope.ss == null}">
                                      <li class="nav-item">
                                          <a class="nav-link" href="Login.jsp">Đăng nhập</a>
                                      </li>
                                        </c:if>
                        
                    </ul>

                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="show">
                            <i class="fa fa-shopping-cart"></i> Cart
                            <span class="badge badge-light">3</span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>
        <section class="jumbotron text-center">
            <div class="carousel-inner">
               
                  <img class="mySlides position-absolute w-100 h-100" src="img/xedap1.jpg" style="object-fit: none;">
                    <img class="mySlides position-absolute w-100 h-100" src="img/xedap1.jpg" style="object-fit: container;">
                    <img class="mySlides position-absolute w-100 h-100" src="img/xedap1.jpg" style="object-fit: none;">
                    </div>
                 </section>

            