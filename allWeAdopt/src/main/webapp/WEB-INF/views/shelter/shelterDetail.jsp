<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ALL WE ADOPT</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/올위어답터.ico" />

        <!-- main css -->
        <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">

        <!-- 폰트어썸 (폰트)-->
        <script src="https://kit.fontawesome.com/e4f51ae88c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gowun+Batang&family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${contextPath}/resources/css/main-style.css" rel="stylesheet" />
        <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />

        <style>
            .nav-text-color{
                /* color: rgb(251, 131, 107); */
                color: black;
            }
           
            .secession-button{
                border: 1px solid rgba(255, 255, 255, 0.3);
                border-radius: 5px;
            }
            .nav-text-color:hover {
                color: rgb(251, 131, 107);
            }
            .bg-pink {
            —bs-bg-opacity: 1;
            background-color: rgb(251, 131, 107);
            }


            .st0{fill:#373737;}
            .st1{fill:#FB836B;}
            .st2{fill:none;stroke:#373737;stroke-width:7.3;stroke-miterlimit:10;}

        </style>
    </head>

    <body class="d-flex flex-column">
        <main class="flex-shrink-0">

            <jsp:include page="/WEB-INF/views/common/header.jsp" />
            <!-- Navigation-->

            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5">
                    <div class="card border-0 shadow rounded-3 overflow-hidden">
                        <div class="card-body p-0">
                            <div class="row gx-0">
                                <!-- 분양소 메인 로고 (클릭 시 최상위 주소) -->
                                <a href="#"><div class="col-lg-6 col-xl-7"><div class="bg-featured-blog" style="background-image: url('https://dummyimage.com/700x350/343a40/6c757d')"><img src="${contextPath}/resources/images/adopt-mainLogo.png" alt="main"></div></div></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-3">
                            <div class="d-flex align-items-center mt-lg-5 mb-4">
                                <img class="img-fluid rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
                                <div class="ms-3">
                                    <div class="fw-bold">${list.get(1).careNm}</div>
                                    <div class="text-muted">${list.get(1).careTel}</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <!-- Post content-->
                            <article>
                                <!-- Post header-->
                                <header class="mb-4">
                                    <!-- Post title-->
                                    <h1 class="fw-bolder mb-1">${list.get(1).careNm}</h1>
                                    <!-- Post meta content-->
                                    <div class="text-muted fst-italic mb-2">공고 시작일: ${list.get(1).noticeSdt}</div>
                                    <div class="text-muted fst-italic mb-2">공고 종료일: ${list.get(1).noticeEdt}</div>
                                    <!-- Post categories-->
                                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">관심동물</a>
                                </header>
                                <!-- 유기동물 사진 -->
                                <figure class="mb-4"><img class="img-fluid rounded" src="${list.get(1).popfile}" alt="..." /></figure>
                                <!-- Post content-->
                                <!-- 나중에 폰트 적용 해보기! -->
                                <section class="mb-5">
                                    <li class="fs-5 mb-4" style="list-style-type:none">접수일 : ${list.get(1).happenDt}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">발견 장소 : ${list.get(1).happenPlace}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">종류 : ${list.get(1).kindCd}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">성별 : ${list.get(1).sexCd}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">색깔 : ${list.get(1).colorCd}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">나이 : ${list.get(1).age}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">무게 : ${list.get(1).weight}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">상태 : ${list.get(1).processState}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">특징 : ${list.get(1).specialMark}</li>
                                    <li class="fs-5 mb-4" style="list-style-type:none">보호소 주소 : ${list.get(1).careAddr}</li>

                                    <%-- 보호소 지도 첨부 --%>
                                    
                                </section>
                            </article>
                            <!-- 댓글 쓸지 말지 고민.. -->
                            <section>
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <!-- Comment form-->
                                        <form class="mb-4"><textarea class="form-control" rows="3" placeholder="댓글 입력" style="resize:none"></textarea></form>
                                        <!-- Comment with nested comments-->
                                        <div class="d-flex mb-4">
                                            <!-- Parent comment-->
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">댓쓴이1</div>
                                                고양이
                                                <!-- Child comment 1-->
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                    <div class="ms-3">
                                                        <div class="fw-bold">대댓쓴이1</div>
                                                        고양이고양이
                                                    </div>
                                                </div>
                                                <!-- Child comment 2-->
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                    <div class="ms-3">
                                                        <div class="fw-bold">대댓쓴이2</div>
                                                        고양이고양이고양이
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single comment-->
                                        <div class="d-flex">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">댓쓴이2</div>
                                                강아지
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Footer-->
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
    
</html>