<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이방어때</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- css 파일 -->
<link rel="stylesheet" href="style.css">
<!-- css 파일 -->
<!-- 화살표, 검색 버튼 아이콘 제공 태그 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 이미지 슬라이더 플러그인 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<!-- 이미지 슬라이더 플러그인 -->
<script type="text/javascript">
	$(function(){
		$("#all").addClass("btn_active").css({"color":"#F6323E","font-weight":"700"});
		
		/* 스크롤, 헤더 변경 */
		$(window).scroll(function(){
			var scroll = $(window).scrollTop();
			if(scroll > 1){
				$("#forMain_header").css("background","white");
				$("#main_link").css("color","#F6323E");
				$(".menu_link").css("color","#F6323E");
			}else{
				$("#forMain_header").css("background","#F6323E");
				$("#main_link").css("color","white");
				$(".menu_link").css("color","white");
			}
		});
		
		/* 검색컬럼 클릭 함수 */
		$(".searchCol").click(function(){
			$(".searchCol").removeClass("btn_active").css({"color":"white","font-weight":"400"});
			$(this).addClass("btn_active").css({"color":"#F6323E","font-weight":"700"});
			
			var name = $(this).attr("name");
			$("#searchCol").val(name);
		});
		
		/* 슬라이더 Ajax */
		$.ajax({
			url:"RecommendHouse",
			success:function(arr){
				$.each(arr,function(){
					var postDiv = $("<div></div>").addClass("post");
					var img = $("<img>").addClass("slider-image").attr("src","images/"+this.img_fname);
					var infoDiv = $("<div></div>").addClass("post-info");
					var type = $("<span></span>").html(this.type);
					var h4 = $("<h4></h4>").html(this.deal_type+" "+this.deposit+"/"+this.price);
					$(infoDiv).append(type,h4);
					$(postDiv).append(img,infoDiv).attr("house_no",this.house_no);
					$(".post-wrapper").append(postDiv);
					console.log(this.img_fname);
				});	
				
				$('.post-wrapper').slick({
					 slidesToShow: 3,
					  slidesToScroll: 1,
					  autoplay: true,
					  autoplaySpeed: 2000,
					  nextArrow:$('.next'),
					  prevArrow:$('.prev')
				});
				
				
			}
		});
		
		$(document).on("click",".post",function(){
			$(this).css("cursor","pointer");
			var house_no = $(this).attr("house_no");
			console.log($(this).attr("house_no"));
			location.href = "detailHouse.jsp?"+ house_no;
		});
	});
</script>
</head>
<body>
<div id="wrap">
	<div id="forMain_header_wrap">
		<header id="forMain_header">
			<h1><a id="main_link" href="main.jsp">이방어때</a></h1>
			<nav id="topMenu">
				<ul>
					<li><a class="menu_link" href="loadHouse.do">지도</a></li>
					<li><a class="menu_link" href="#">관심목록</a></li>
					<li><a class="menu_link" href="#">방내놓기</a></li>
					<li><a class="menu_link" href="#">알림</a></li>
					<li><a class="menu_link" href="#">로그인/회원가입</a></li>
				</ul>
			</nav>
		</header>
	</div>
	
	<main>
		<div class="searchDiv">
			<form action="search.do" method="post" class="searchWrapper">
				<div class="searchMenu">
					<span class="searchCol" id="all">전체</span><!--  
					--><span class="searchCol" id="oneRoom" name="원룸">원룸</span><!--
					--><span class="searchCol" id="twoRoom" name="투룸">투룸</span><!--
					--><span class="searchCol" id="officetel" name="오피스텔">오피스텔</span>
				</div>
				<input type="hidden" name="searchCol" id="searchCol">
				<fieldset id="searchBox">
					<input type="search" name="searchWord" id="searchWord" placeholder="원하는 지역을 입력해 주세요">
					<button type="submit" id="searchBtn"><i class="fa fa-search"></i></button>
				</fieldset>
			</form>
		</div>

		<!-- 추천 매물 -->
		<div class="page-wrapper" style="position:relative;">
	      <!--page slider -->
	      <div class="post-slider">
	        <h3 class="silder-title">홍대입구역 근처 추천 매물</h3>
	        <!-- <i class="fas fa-chevron-left prev" aria-hidden="true"></i> 
	        <i class="fas fa-chevron-right next" aria-hidden="true"></i>  -->
	        <i class="fa-solid fa-chevron-left prev"></i>      
	        <i class="fa-solid fa-chevron-right next"></i>
	        <div class="post-wrapper">
	        </div>
	      </div>
	      <!--post slider-->
    	</div>
	</main>
	<footer>
	 	<p id="footer_p">
	 		<span id="footer_h4"> 이방어때 </span><br>
	 		<span> Semi-final Team </span><br>
	 		<span> 주소 : 서울시 마포구 서교동 </span><br>
			<span> 고객센터 : 02-0808-0808 </span><br>
		</p>
	</footer>
</body>
</html>