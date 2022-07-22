<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>펀딩목록 : ALL WE ADOPT</title>
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
        <link href="${contextPath}/resources/css/funding/funding-detail.css" rel="stylesheet" />

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
            
            
            
            
            
            
            
            
            
            
            .lineBtn-gr{
            	color: #999;
            	border: 1px solid #999;
            }
            .btn-pk{
                color: #fff;
            	border: 1px solid #fff;
            	background: #FB836B;
            }
            .selected{
                color: #fff;
            	border: 1px solid #fff;
            	background: #FB836B;
            }
            
            
            .mapCon{
            	position:relative;
            }
            .mapBtn{
            position:absolute;
            top:0px;
            right:0px;
            z-index:3;
            }
            .mapBtn div{
			    font-weight: 400;
			    line-height: 1.5;
			    text-align: center;
			    vertical-align: middle;
			    cursor: pointer;
			    padding: 0.375rem 0.75rem;
			    font-size: 1rem;
			    border-radius: 0.25rem;
            }
            #map{
            margin-right:10px;
            }

        </style>
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">

	        <jsp:include page="/WEB-INF/views/common/header.jsp" />

            <section class="py-4">
                <div class="container px-5">

					<div class="text-center py-5">
						<h1 class="fw-bolder">병원찾기</h1>
						<p class="lead fw-normal text-muted mb-0">가까운 병원을 확인해보세요</p>
					</div>
                    
					<div class="d-flex mx-5 justify-content-center mapCon" >
						
						<div id="map" style="width:82%;height:500px; "></div>
						
						<div class="mapBtn">
							<div class="mb-2 lineBtn-gr">반경 1km</div>
							<div class="mb-2 lineBtn-gr selected">반경 2km</div>
							<div class="lineBtn-gr">반경 5km</div>
						</div>
						
					</div>
						<div style="height:100px;"></div>

                        <div id="data"></div>
  
				</div>
				</section>

        </main>
        
        
            
            

        <!-- 푸터 -->
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${contextPath}/resources/js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        
		<%-- <script src="${contextPath}/resources/Json/hospital.json" type="text/javascript"></script> --%>

        <!-- 카카오맵 -->
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f77a10ecba4b0e9035d161f9f7eec76&libraries=services,clusterer,drawing"></script>
        <script src="${contextPath}/resources/js/hospital.js"></script>
		<script>
		
		//const contextPath = '${contextPath}';
		</script>
        
    </body>
    
</html>