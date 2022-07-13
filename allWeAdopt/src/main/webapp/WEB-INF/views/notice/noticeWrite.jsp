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
        <title>관리자 - 공지사항 작성</title>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${contextPath}/resources/assets/올위어답터.ico" />
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />

        <!-- main css -->
        <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">

        <!-- include libraries(jQuery, bootstrap) -->
        <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>      
        
        <!-- summer note -->
        <%-- <script src="${contextPath}/resources/summernote/summernote-lite.min.js"></script>
        <script src="${contextPath}/resources/summernote/lang/summernote-ko-KR.min.js"></script>
        <link rel="stylesheet" href="${contextPath}/resources/summernote/summernote-lite.min.css">

        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script> --%>

        <%-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> --%>
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

        
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">

            <!-- 헤더 -->
            <jsp:include page="/WEB-INF/views/common/admin-header.jsp" />

            <!-- Header-->
            <header class="py-3">
                <div class="container px-3">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-left mt-5">
                                <h2 class="fw-bolder mb-3">공지사항 글작성</h2>
                                <p class="lead fw-normal text-muted mb-2" style="font-size: 14px;">공지사항을 작성해주세요. </p>
                            </div>
                        </div>
                </div>
            </header>
           
            <!-- About section two-->
            <section class="py-0">
                <div class="container px-3 my-1">
                    <div class="row gx-5 align-items-center">
                        <form action="${contextPath}/admin/notice/write" method="post" onsubmit="return writeValidate()">

                            <div class="col-md-5 col-sm-6">
                                <label for="exampleFormControlInput3" class="form-label"></label>
                                <input type="text" name="boardTitle" class="form-control" id="exampleFormControlInput3" placeholder="제목을 입력하세요" value="${detail.boardTitle}" >
                            </div>

                            <div class="md-10"></div>

                            <div class="mb-5 pb-3">
                                
                                    <label for="exampleFormControlTextarea1" class="form-label"></label>
                                    <textarea id="summernote" name="boardContent">${detail.boardContent}</textarea>    


                                    <!-- 숨겨진 값(hidden) : mode, boardNo, cp-->
                                    <input type="hidden" name="mode" value="${param.mode}">
                                    <input type="hidden" name="boardNo" value="${empty param.no ? 0 : param.no}">
                                    <input type="hidden" name="cp" value="${param.cp}">

                                    <button class="btn btn-primary mt-3 mx-1 button-pink">등록</button>

                                    <!-- insert 모드 -->
                                    <c:if test="${param.mode == 'insert'}">
                                        <button class="btn btn-primary mt-3 mx-1 button-pink" type="button" id="goToListBtn">목록으로</button>
                                    </c:if>
                                    
                                    <!-- update 모드 -->
                                    <c:if test="${param.mode == 'update'}">
                                        <button class="btn btn-primary mt-3 mx-1 button-pink" type="button" onclick="location.href='${header.referer}'">이전으로</button>                           
                                    </c:if>
                                
                            </div>
                        </form>
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
        <script>

            const contextPath = "${contextPath}";

            <c:if test="${loginMember.memberType == 'A'}">
                const url = "${contextPath}/admin/notice/list?";
            </c:if>
            <c:if test="${loginMember.memberType =='M' || loginMember.memberType == 'K'}">
                const url = "${contextPath}/member/myPage/notice/list?";
            </c:if>
            

        </script>
        <!-- 썸머노트 -->
        <script>
            $(document).ready(function() {
                $('#summernote').summernote({
                    placeholder: '내용을 입력하세요',
                    tabsize: 2,
                    height: 500,
                    toolbar: [
                        // [groupName, [list of button]]
                        ['fontname', ['fontname']],
                        ['fontsize', ['fontsize']],
                        ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                        ['color', ['forecolor','color']],
                        ['table', ['table']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['height', ['height']],
                        ['insert',['picture','link']],
                        // ['view', ['fullscreen', 'help']]
                    ],
                    callbacks:{
                        onImageUpload: function(files, editor) {
                            // 업로드된 이미지를 ajax를 이용하여 서버에 저장
                            console.log("이미지 업로드됨");
                            console.log(files);
                            sendFile(files[0], this);
                        }
                    }
                });
            });
        </script>

        <script src="${contextPath}/resources/js/board/summerNote.js"></script>

        <script src="${contextPath}/resources/js/board/notice.js"></script>

    </body>
</html>
