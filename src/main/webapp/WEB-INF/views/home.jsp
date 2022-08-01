<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/main.css">

<!-- Content-->

<div id="content">
	<div class="main_spot">
	    <h2>어떤 숙소 찾으세요?</h2>
	    <div class="main_link">
	        <ul>
	            <li class="selected ml"><a href="${cpath }/detail"><span class="ico_01"></span><p>모텔</p></a></li> 
	            <li class="ml"><a href="#"><span class="ico_02"></span><p>호텔·리조트</p></a></li>
	            <li class="ml"><a href="#"><span class="ico_03"></span><p>펜션</p></a></li>
	        </ul>
	    </div>
	</div>
	
	<!-- //Link -->
	<!-- Recommend -->
	<div class="recommend">
	    <h2>요기오때 소식</h2>
	    <ul>
	        <li>
	            <a href="#" target="_black"><img src="https://image.goodchoice.kr/images/web_v3/b2b_banner.png"><strong>요기어때 비즈니스</strong>출장부터 복지까지<br>요기어때 비즈니스로 스마트하게</a>
	        </li>
	        <li>
	            <a href="#" target="_blank"><img src="https://image.goodchoice.kr/images/web_v3/re_jalnan.png"><strong>요기어때 서체 출시</strong>젊고 당당한 요기어때 잘난체<br>지금 다운로드 받으세요!</a>
	        </li>
	    </ul>
	</div>
	<!-- App down -->
	<!-- <div class="appdown">
	    <p>앱 다운 받고 <b>더 많은 혜택</b> 받으세요</p>
	    <div>
	        <a href="#" class="down_and" target="_blank" title="구글플레이 새창"><img src="https://image.goodchoice.kr/images/web_v3/banner_and.png" alt="GET IT ON Google Play" /></a>
	        <a href="#" class="down_ios" target="_blank" title="앱스토어 새창"><img src="https://image.goodchoice.kr/images/web_v3/banner_ios.png" alt="Download on the App Store" /></a>
	    </div>
	</div> -->
	<!-- //App Down -->
	<!-- EVENT -->
	<div class="event_main">
	    <h2>이벤트</h2>
	     <section class="swiper-container">
         <ul class="swiper-wrapper" data-num="0">
             <li class="swiper-slide"><a href="#"><img src="https://image.goodchoice.kr/images/cms/home_img/3c13f7bf4ea5ef67729fa285aca7896f.jpg" alt="페이백 50﹪ 쿠폰 이벤트"></a></li>
             <li class="swiper-slide"><a href="#"><img src="https://image.goodchoice.kr/images/cms/home_img/fbaabc9a7da7a4f20e1b43c44da60b34.jpg" alt="올여름 100만원 쿠폰어때"></a></li>
             <li class="swiper-slide"><a href="#"><img src="https://image.goodchoice.kr/images/cms/home_img/67223336700c3b16456fe8279cac2bcc.png" alt="총 2천만원 경품 싹-다 드림!"></a></li>
             <li class="swiper-slide"><a href="#"><img src="https://image.goodchoice.kr/images/cms/home_img/2a2a2b5abd30e342833c3dfd92ad0e9d.jpg" alt="야구장 주변 추천숙소 할인"></a></li>
         </ul>
     </section>
	</div>
	<!-- //EVENT -->
	<!-- Ad-->
	<div class="ad_ask">
	    <ul class="pc">
	        <li>
	            <a href="#" onclick="alert('요기어때 프로젝트');">
                	<img src="https://image.goodchoice.kr/images/web_v3/ad_01_171013.png" alt="요기어때 광고 신청하기">
                </a>
            </li>
            <li>
                <a href="#"><img src="https://image.goodchoice.kr/images/web_v3/ad_02_171013.png" alt="게스트 하우스 숙소 등록하기"></a>
            </li>
	        </ul>
	    </div>
	</div>
	
    <script>
    	const liarray = Array.from(document.querySelectorAll('.main_link > ul > li'))
    	
    	liarray.forEach(li => li.addEventListener('click', mainLiHandler))
    	setInterval(slide, 3000)
    </script>

<%@ include file="footer.jsp" %>

</body>
</html>