<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



                        <div class="col-lg-9">
                            <!-- Post content-->
                            <article class="content-box">
                            	<!-- 타이틀 이미지 넣기~ -->
                                <div class="funding-img">
                                    <img src="${contextPath}${detail.fundingThumbnail}">
                                </div>

								<!-- 요약박스 -->
                                <div class="funding-summary">
                                	${detail.fundingMiniTitle}<br>
	                                목표 금액 ${detail.targetDonation}<br>
									펀딩 기간 ${detail.startDate} ~ ${detail.endDate}<br>
									리워드 배송비 <fmt:formatNumber value="${detail.deliveryFee}"/>원<br>
									<p>목표 금액의 80% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 80% 모이지 않으면 결제한 수단으로 환불이 진행됩니다.</p>
	                            </div>
								
								<div class="content">
								${detail.fundingContent}
								</div>


                            </article>


                        </div>

                        