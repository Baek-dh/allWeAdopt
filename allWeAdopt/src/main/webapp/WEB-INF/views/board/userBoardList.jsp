<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${contextPath}/resources/assets/올위어답터.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
        <!-- 폰트어썸 (폰트)-->
        <script src="https://kit.fontawesome.com/e4f51ae88c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gowun+Batang&family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

        <!-- main css -->
        <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">

        <link rel="stylesheet" href="${contextPath}/resources/css/board/userBoardList.css">
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- 헤더 -->
            <jsp:include page="/WEB-INF/views/common/header.jsp" />

            <!-- 검색 필터 -->
            <div class="filter-area">

                <!-- 날짜 필터 -->
                <span class="filter-menu">날짜 ▼
                    <div class="select">
                        <input type="date"> ~ <input type="date">
                    </div>
                </span>
                
                <!-- 종류 필터 -->
                <span class="filter-menu">종류 ▼
                    <div class="select"> 품종을 입력하세요
                        <input type="text">
                    </div>
                </span>

                <!-- 지역 필터 -->
                <span class="filter-menu">지역 ▼
                    <div class="select">
                        <span class="area-select">지역선택</span>
                        <span class="area-select">상세선택</span>
                    </div>
                </span>

                <!-- 상태여부 필터 -->
                <span class="filter-menu">상태여부 ▼
                    <div class="select">
                        <span class="neutering-select">중성화 완료</span>
                        <span class="neutering-select">중성화 미완료</span>
                    </div>
                </span>
            </div>
        
            <!-- Blog preview section-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img src="/images/cat-3113513_1920.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/images/cocker-spaniel-2785074_1920.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/images/pet-5054023_1920.jpg" class="d-block w-100" alt="...">
                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>

                       <!-- 게시글 작성 -->
                    <a href="user/boardRegist"><p class="addBoard">게시글 작성하기</p></a>

                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://dummyimage.com/600x350/ced4da/6c757d" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Blog post title</h5></a>
                                    <p class="card-text mb-0">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">Kelly Rowan</div>
                                                <div class="text-muted">March 12, 2022 &middot; 6 min read</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://dummyimage.com/600x350/adb5bd/495057" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Media</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Another blog post title</h5></a>
                                    <p class="card-text mb-0">This text is a bit longer to illustrate the adaptive height of each card. Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">Josiah Barclay</div>
                                                <div class="text-muted">March 23, 2022 &middot; 4 min read</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://dummyimage.com/600x350/6c757d/343a40" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">The last blog post title is a little bit longer than the others</h5></a>
                                    <p class="card-text mb-0">Some more quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">Evelyn Martinez</div>
                                                <div class="text-muted">April 2, 2022 &middot; 10 min read</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
            <!-- 푸터 -->
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
       <script src="${contextPath}/resources/js/scripts.js"></script>

        <script src="${contextPath}/resources/js/board/userBoardList.js"></script>
    </body>
</html>