<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GamsungCamp</title>
    <jsp:include page="/resources/commonLib.jsp"></jsp:include>
    <style>
        .campImg {
            display: block;
            margin: auto;
            width: 100%;
            height: 250px;
        }
        #findIdModal {
            z-index: 1041;
            position: fixed;
            width: 100%;
            height: 100vh;
        }
        .find {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateY(-50%) translateX(-50%);
        }
        .shop-item-title {
            text-decoration: none;
            color: #333;
            text-overflow: ellipsis;
        }
    </style>
</head>

<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        
        <div class="main showcase-page">
            <section class="module-medium" id="demos">
                <div class="container">
                    <div class="row">
                        <div style="padding-left: 30px;">
                            <h2 class="module-title font-alt font-jua main-color" style="text-align: left;font-size: 34px; margin: 0;">추천 캠핑장</h2>
                            <p class="">감성캠핑의 잘나가는 캠핑장을 소개합니다.</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-4">
                        <div class="post">
                            <div class="post-thumbnail"><img class="campImg" campNo="${topView.campNo}" style="cursor: pointer;" src="/uploadfiles/campimg/campbusiness/camp/${topView.campImg1}" alt="Blog-post Thumbnail"></div>
                            <div class="post-header font-alt">
                                <h2 class="post-title">조회수 TOP</a></h2>
                            </div>
                            <div class="post-more">${topView.user.campName} <span style="color: rgb(230, 173, 17);">(${topView.campViewCountCurrentMonth}건)</span></div>
                            <div class="post-entry">
                                <p>${topView.user.addr}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-4">
                        <div class="post">
                            <div class="post-thumbnail"><img class="campImg" campNo="${topRating.campNo}" style="cursor: pointer;" src="/uploadfiles/campimg/campbusiness/camp/${topRating.campImg1}" alt="Blog-post Thumbnail"></div>
                            <div class="post-header font-alt">
                                <h2 class="post-title">평점 TOP</a></h2>
                            </div>
                            <div class="post-more">${topRating.user.campName} <span style="color: rgb(230, 173, 17);">(${topRating.campRate}점)</span></div>
                            <div class="post-entry">
                                <p>${topRating.user.addr}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-4">
                        <div class="post">
                            <div class="post-thumbnail"><img class="campImg" campNo="${topReservation.campNo}" style="cursor: pointer;" src="/uploadfiles/campimg/campbusiness/camp/${topReservation.campImg1}" alt="Blog-post Thumbnail"></div>
                            <div class="post-header font-alt">
                                <h2 class="post-title">예약자수 TOP</a></h2>
                            </div>
                            <div class="post-more">${topReservation.user.campName} <span style="color: rgb(230, 173, 17);">(${topReservation.campReservationCount}건)</span></div>
                            <div class="post-entry">
                                <p>${topReservation.user.addr}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
           
            
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        </main>
        <script src="/resources/lib/modals/examples.modals.js"></script>
        <script src="/resources/js/campSearch.js"></script>
        <script type="text/javascript">
            $(function() {
                $('.shop-item-title').on('click', function() {
                    window.location = '/auction/getAuctionProduct?auctionProductNo=' + $(this).prev().val();
                });
                $('.campImg').on('click', function() {
                    window.location = '/campGeneral/getCamp?campNo=' + $(this).attr('campNo');
                });
                $('.shop-item-img').on('click', function() {
                    window.location = '/auction/getAuctionProduct?auctionProductNo=' + $(this).parent().next().val();
                });
            });
        </script>
    </body>
</html>
