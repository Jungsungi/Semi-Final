<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이방어때</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, menu, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, main, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0px;
    padding: 0px;
    border: 0px;
    font: inherit;
    vertical-align: baseline;
}
* {
    box-sizing: border-box;
}
*, html, body {
    font-family: NanumGothic, -apple-system, sans-serif;
}
div {
    display: block;
}

body {
    display: block;
    margin: 8px;
}

body {
    -webkit-box-flex: 1;
    flex-grow: 1;
    font-size: 14px;
    font-weight: 400;
}

body {
    line-height: 1;
}


html, body {
    display: flex;
    flex-direction: column;
    margin: 0px;
    padding: 0px;
    width: 100%;
    height: 100%;
    overscroll-behavior-y: contain;
}

body::-webkit-scrollbar {
    width: 0px;
    height: 0px;
    background: transparent;
}

body::-webkit-scrollbar-thumb {
    background: transparent;
    opacity: 0;
}
header {
    display: block;
}

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section {
    display: block;
}

h1, h2, h3, h4, h5, h6, strong, b {
    font-weight: 700;
}

h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

menu, ol, ul {
    list-style: none;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}


select, input, textarea, a {
    outline: none;
    
}

a {
    color: inherit;
    text-decoration: none;
    cursor: pointer;
    list-style:none

    
}


a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    list-style:none
   
}
#root {
    width: 100%;
    height: 100%;
}

#content {
    -webkit-box-flex: 1;
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: justify;
    justify-content: space-between;
    min-width: 1200px;
    min-height: 100%;
    position: relative;
}



.gTKzxs {
    width: 100%;
    -webkit-box-flex: 1;
    flex-grow: 1;
}

.GKbby {
    width: 100%;
    flex: 0 0 auto;
}
.GKbby > div {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    flex-direction: column;
    height: 278px;
    position: relative;
}

.GKbby > div {
    width: 1200px;
    height: 100%;
    margin: 0px auto;
    padding: 0px 10px;
}

.gcERMH {
    margin: 80px 0px 64px;
    font-size: 46px;
    line-height: 70px;
    letter-spacing: -1px;
    font-weight: 700;
}

.bVcIUf {
    flex: 0 0 auto;
    display: flex;
    width: 1180px;
    height: 64px;
    margin: 0px auto;
}

.bVcIUf > li {
    -webkit-box-flex: 1;
    flex-grow: 1;
    width: 100%;
    height: 100%;
}	
li {
    display: list-item;
    text-align: -webkit-match-parent;
    list-style:none
}

.bVcIUf > li > a.active {
    color: rgb(255, 255, 255);
    background-color: rgb(34, 34, 34);
    border: 0px;
}

.bVcIUf > li > a {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    height: 100%;
    font-size: 16px;
    line-height: 26px;
    border: 1px solid rgb(237, 237, 237);
    text-decoration: none;
    
}

.fTwhuj {
    width: 100%;
    -webkit-box-flex: 1;
    flex-grow: 1;
}

.bVcIUf > li + li > a {
    border-left: 0px;
}
.fTwhuj > div {
    width: 1200px;
    height: 100%;
    margin: 0px auto;
    padding: 0px 10px;
}

.location{

	color: inherit;
    text-decoration: none;
    cursor: pointer;
    display: block;


}


.gTKzxs > div {
    width: 1200px;
    height: 100%;
    margin: 0px auto;
    padding: 0px 10px;
}

.hSQrIK {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin-top: 50px;
}



.kOcEUK {
    width: 100%;
    margin: 50px 0px 150px;
    border-top: 1px solid rgb(34, 34, 34);
}

.jJQFeJ {
    display: flex;
    height: 59px;
    border-bottom: 1px solid rgb(204, 204, 204);
}

.jJQFeJ > div:first-child {
    width: calc(100% - 135px);
}



.jJQFeJ > div {
    display: flex;
    color: rgb(34, 34, 34);
    font-weight: 500;
    font-size: 15px;
    text-align: center;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
}

.fBxRvq {
    border-bottom: 1px solid rgb(238, 238, 238);
}

.dwzXPe {
    display: flex;
    height: 59px;
    padding-left: 30px;
    font-size: 16px;
    -webkit-box-align: center;
    align-items: center;
    cursor: pointer;
}

.dwzXPe > div:first-child {
    width: calc(100% - 135px);
}



</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">



$(function(){
	
	
	sessionStorage.setItem("id","lee");
	
	
	var id = sessionStorage.getItem("id");
	//var obj = JSON.parse(al_no);
	//console.log(obj);
	
	
	
	$.ajax({
		url:"alarm_all",
		data:{id:id},
		success:function(arr){
			console.log(arr)
	 	$.each(arr, function(){
			 	var li = $("<li></li>");
			 	var a = $("<a></a>").attr("house_no", this.house_no).addClass("location");
				var p = $("<p></p>").html(this.al_content);
				
				$(a).append(p);
				$(li).append(a);
				$(ul).append(li);
				
	 	});	
				
			 	/* $(li).append(div);
				$(div).append(Heart);
				$(Heart).append(button);
				$(div).append(a);
				$(a).append(room_img);
				$(room_img).append(room_img2);
				$(room_img2).append(img);
				$(room_img2).append(room_end);
				$(a).append(room_title);
				$(room_title).append(room_title2);
				$(room_title).append(room_end2);
				$(".kgYtxa").append(li); 
					
				}); */
				
	
			
			
		}
	})
	
	
	 $(function(){
	 
	 sessionStorage.setItem("house_no",1);
		
		
	var house_no = sessionStorage.getItem("house_no");
	 
	 $(document).on("click",".location",function(){
			var house_no = $(this).attr("house_no");
			console.log(house_no);
		//	location.href="detailHouse.do?house_no="+house_no;
					
		
		}); 
	
	 })	
	
	
});






</script>
</head>
<body>
	<div id ="root">
		<div id="content">
			<div class ="gTKzxs">
				<header class ="GKbby">
					<div>
						<h1 class= "gcERMH">알림</h1>
						<ul class ="bVcIUf">
							<li>
								<a  aria-cuttent="page" class="active" href="alram.jsp">전체 알림</a>
			
							</li>
							<li>
								<a  href="alram2.jsp">댓글 알림</a>
								
							</li>
							<li>
								<a  href="alram3.jsp">찜한 방 알림</a>
								
							</li>	
						</ul>
					</div>
				
				</header>
				<div class="fTwhuj">
					<div>
	
							<div class ="kOcEUK">
								<div class= "jJQFeJ">
									<div>제목</div>
								</div>
								<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														자신의 매물이 찜한 방에 등록되었습니다.	
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
								<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														jung님이 매물에 댓글을 달았습니다.	
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
								<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														koo님이 매물에 댓글을 달았습니다.	
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
								<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														lee님이 매물에 댓글을 달았습니다.	
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
								<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														choi님이 매물에 댓글을 달았습니다.
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
							<div class="fBxRvq">
									<div>
											<div>
												<div class="dwzXPe">
													<div>
														lim님이 매물에 댓글을 달았습니다.	
													</div>
											</div>
										
										</div>
									
									</div>
								
								</div>
								
									
							</div>
						
						
					</div>
				
				</div>
			</div>
		</div>
	</div>
		
	
</body>
</html>