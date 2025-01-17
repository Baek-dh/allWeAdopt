<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="shelter" items="${list}">
    <c:if test="${desertionNo == shelter.desertionNo}">
        <c:set var="careNm" value="${shelter.careNm}"/>
        <c:set var="careTel" value="${shelter.careTel}"/>
        <c:set var="noticeSdt" value="${shelter.noticeSdt}"/>
        <c:set var="noticeEdt" value="${shelter.noticeEdt}"/>
        <c:set var="popfile" value="${shelter.popfile}"/>
        <c:set var="happenDt" value="${shelter.happenDt}"/>
        <c:set var="happenPlace" value="${shelter.happenPlace}"/>
        <c:set var="colorCd" value="${shelter.colorCd}"/>
        <c:set var="age" value="${shelter.age}"/>
        <c:set var="weight" value="${shelter.weight}"/>
        <c:set var="processState" value="${shelter.processState}"/>
        <c:set var="specialMark" value="${shelter.specialMark}"/>
        <c:set var="careAddr" value="${shelter.careAddr}"/>
        <c:set var="kindCd" value="${shelter.kindCd}"/>
        <c:set var="sexCd" value="${shelter.sexCd}"/>
    </c:if>    
</c:forEach>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ALL WE ADOPT</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${contextPath}/resources/assets/올위어답터.ico" />

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

        <link href="${contextPath}/resources/css/shelter/shelter-main.css" rel="stylesheet" />


        <%-- 지도 --%>
        <%-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69933a089a5ecd291058167064475d66"></script>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69933a089a5ecd291058167064475d66&libraries=services"></script> --%>

                <!-- jQuery 추가 -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>


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



            <img src="${contextPath}/resources/images/adopt-mainLogo.png" class="img-fluid" alt="shelter-logo" styles="width: 100%;">

            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-3">
                            <div class="d-flex align-items-center mt-lg-5 mb-4">

                                <img src="${contextPath}/resources/images/user.png" id="member-profile" style="width : 35px; height : 35px; ">	
                                <div class="ms-3">
                                    <div class="fw-bold">${careNm}</div>
                                    <div class="text-muted">${careTel}</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <!-- Post content-->
                            <article>
                                <!-- Post header-->
                                <header class="mb-4">
                                    <!-- Post title-->
                                    <h1 class="fw-bolder mb-1">${careNm}</h1>
                                    <!-- Post meta content-->
                                    <div class="text-muted fst-italic mb-2">공고 시작일: ${noticeSdt} | 공고 종료일: ${noticeEdt}</div>


                                    <div class="md-10" style="margin:10px;"></div>

                                    <div>                                
                                        <a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();"><img src="${contextPath}\resources\images\icon-twitter.png"></a>
                                        <a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();"><img src="${contextPath}\resources\images\icon-facebook.png"></a>    
                                        <a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();"><img src="${contextPath}\resources\images\icon-kakao.png"></a>    
                                    </div>

                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                        <button type="button" class="btn btn-outline-secondary btn-sm allButton"  data-bs-toggle="modal" data-bs-target="#makePam">전단지 만들기</button>
                                    </div>

                                </header>
                                <!-- 유기동물 사진 -->
                                <figure class="mb-4"><img class="img-fluid rounded" style="width: 700px; height: 650px; object-fit:cover;" src="${popfile}" alt="..." /></figure>
                                <!-- Post content-->

                                <section class="mb-5">


                                    <ol class="list-group list-group-numbered" style="width: 700px;">
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">접수일</div>
                                            ${happenDt}
                                          </div>                                       
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">발견 장소</div>
                                            ${happenPlace}
                                          </div>                                        
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">종류</div>
                                            ${kindCd}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">성별</div>
                                            ${sexCd}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">색깔</div>
                                            ${colorCd}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">나이</div>
                                            ${age}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">무게</div>
                                            ${weight}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">상태</div>
                                            ${processState}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">특징</div>
                                            ${specialMark}
                                          </div>                                         
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                          <div class="ms-2 me-auto">
                                            <div class="fw-bold">보호소 주소</div>
                                            ${careAddr}
                                          </div>                                         
                                        </li>
                                    </ol>

                                    <div class="md-10" style="margin:30px;"></div>

                                    <%-- 보호소 지도 첨부 --%>

                                    <i class="bi bi-geo-alt" style="font-size:30px; color:#FB836B;"></i>
                                    <div id="map" style="width:700px;height:400px;"></div>



                                    <script>
                                        const careAddr = "${careAddr}";
                                    </script>


                                   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69933a089a5ecd291058167064475d66&libraries=services"></script>
                                   <script>
                                   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                                        mapOption = {
                                            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                            level: 3 // 지도의 확대 레벨
                                        };  

                                    // 지도를 생성합니다    
                                    var map = new kakao.maps.Map(mapContainer, mapOption); 

                                    // 주소-좌표 변환 객체를 생성합니다
                                    var geocoder = new kakao.maps.services.Geocoder();

                                    // 주소로 좌표를 검색합니다
                                    geocoder.addressSearch(careAddr, function(result, status) {

                                        // 정상적으로 검색이 완료됐으면 
                                        if (status === kakao.maps.services.Status.OK) {

                                            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                                            // 결과값으로 받은 위치를 마커로 표시합니다
                                            var marker = new kakao.maps.Marker({
                                                map: map,
                                                position: coords
                                            });

                                            // 인포윈도우로 장소에 대한 설명을 표시합니다
                                            var infowindow = new kakao.maps.InfoWindow({
                                                content: '<div style="width:150px;text-align:center;padding:6px 0;">'+careAddr+'</div>'
                                            });
                                            infowindow.open(map, marker);

                                            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                            map.setCenter(coords);
                                        } 
                                    });    
                                    </script>


                                    <div class="modal fade" id="makePam" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">전단지</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <%-- <img src="${detail.thumbnail}" style="width: 450px; height: 400px;"/> --%>


                                    <div>

                                        <div class="mainContainer" id='mainContainer'>


                                            <%-- 이미지 --%>
                                            <img id="myimage" style="width: 100px; height: 100px; display: none;" src="${popfile}" alt="myPet" >
                                            <img id="myimage2" style="width: 20px; height: 20px; display: none;" src="${contextPath}\resources\images\shelter.png"alt="backgroundImage">

                                            <canvas id="myCanvas" width="1000" height="1000" ></canvas>


                                        </div>
                                    </div>



                                    <script>

                                    
                                    const happenPlace = "${happenPlace}"
                                    const sexCd = "${sexCd}"
                                    const age = "${age}"
                                    const careNm = "${careNm}"
                                    const careTel = "${careTel}"
                                    const colorCd = "${colorCd}"
                                    const kindCd = "${kindCd}"
                                    const specialMark = "${specialMark}"
                                    

                                    var c = document.getElementById("myCanvas");
                                    var ctx = c.getContext("2d");
                                    var img = document.getElementById("myimage");
                                    var img2 = document.getElementById("myimage2");
    


                                    window.onload = function() {
                                        
                                        ctx.drawImage(img2, 0, 0, 1000, 1000);
                                        ctx.drawImage(img, 20, 120, 600, 550);



                                        ctx.font = "25px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText(careNm, 210, 840);

                                        ctx.font = "35px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText(careTel, 560, 840);


                                        ctx.font = "40px Helvetica";
                                        ctx.fillStyle  = "black";
                                        printAtWordWrap(ctx, '특징 : ' + specialMark, 630, 400, 55, 350);



                                        ctx.font = "40px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText(age, 630, 220);

                                        ctx.font = "40px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText('성별 : ' + sexCd, 630, 280);

                                        ctx.font = "40px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText('색깔 : ' + colorCd, 630, 340);

                                        ctx.font = "40px Helvetica";
                                        ctx.fillStyle  = "black";
                                        ctx.fillText(kindCd, 630, 160);


                                        // 전단지 줄바꿈
                                        function printAtWordWrap( context , text, x, y, lineHeight, fitWidth){

                                            fitWidth = fitWidth || 0;
                                            
                                            if (fitWidth <= 0)
                                            {
                                                context.fillText( text, x, y );
                                                return;
                                            }

                                            var words = text.split(' ');
                                            var currentLine = 0;
                                            var idx = 1;
                                            
                                            while (words.length > 0 && idx <= words.length)
                                            {
                                                var str = words.slice(0,idx).join(' ');
                                                var w = context.measureText(str).width;
                                                if ( w > fitWidth )
                                                {
                                                    if (idx==1)
                                                    {
                                                        idx=2;
                                                    }
                                                    context.fillText( words.slice(0,idx-1).join(' '), x, y + (lineHeight*currentLine) );
                                                    currentLine++;
                                                    words = words.splice(idx-1);
                                                    idx = 1;
                                                }
                                                else
                                                {idx++;}
                                            }
                                            if  (idx > 0)
                                                context.fillText( words.join(' '), x, y + (lineHeight*currentLine) );
                                        }

                                    }
                                    
                                    

                                    </script>


                                </div>
                                    <div class="modal-footer">
                                        <a id = "download" download="image.png">
                                            <button type="button" onclick="download()" class="btn btn-primary" style="background-color:#FB836B; border:0;">전단지 저장</button>                             
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                                                                                                   
                                </section>


                                <button onclick="topFunction()" id="myBtn" title="Go to top"><h3><i class="bi bi-arrow-up-circle bt_top" style="color: #FB836B;"></i></h3></button>    
                                
                            </article>
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
        <%-- <script src="js/scripts.js"></script> --%>


        <!-- jQuery 추가 -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
 





    <script>

        // 최상위 주소
        const contextPath = "${contextPath}";
        
        // 게시글 번호
        const boardNo = "${desertionNo}"; // "500"



    </script>


        <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
        <script src="${contextPath}/resources/js/shelter.js"></script>
        



        
    </body>
    
</html>