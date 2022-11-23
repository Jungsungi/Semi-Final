<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방내놓기 페이지</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de8216a186d7d520229ef078f7729aea&libraries=services"></script>
<script type="text/javascript">
	$(function(){
			 var geocoder = new kakao.maps.services.Geocoder();

			 $("#address").click(function(){
			     new daum.Postcode({
			         oncomplete: function(data) {
			             $("#address").val(data.address);
			             $("#address").prop("readonly",true);
			             $("input[name=place]").val(data.sido);
			             var juso =  $("#address").val();
			         	geocoder.addressSearch(juso, callback);  
			         }
			     }).open()
			 });
			//lat,lng 값
			 var callback = function(result, status) {
			 	if (status === kakao.maps.services.Status.OK) {
			 		var lat = $("input[name=lng]").val(result[0].x);
			 		var lng = $("input[name=lat]").val(result[0].y);
			 		
			 	}
			 };
		document.getElementById('house_regdate').valueAsDate = new Date();
		document.getElementById('input_date').valueAsDate = new Date();
		
		sessionStorage.setItem("id","후후");
		var id=sessionStorage.getItem("id");
		$("#id").val(id);
		
		$("#btnRegister").click(function(){
			var str = $('#insert_all').serializeArray();//모든 input값 
			console.log(str);
			$.ajax({
				url:"insertHouse",
				data:str,
				success:function(re){
					if(re=1){
						alert("house table 성공");
						//location.href="loadHouseAction.do?house_no="+house_no;
						//location.href="insertHouseOK.do?house_no="+house_no;
						//입력한 no out.print해서 값 나오는지 확인하고
					}
					else{
						alert("매물 등록(house table)실패");
					}
				}
			});
		});
	});	
</script>
<style type="text/css">
/*단추 1180 64*/
	 body{
	 	position: absolute;
	    /*top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    max-width: 100%;
	    height: auto;
		margin :0 auto;*/
	-webkit-box-flex: 1;
    flex-grow: 1;
    font-size: 14px;
    font-weight: 400;
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
*, html, body {
    font-family: NanumGothic, -apple-system, sans-serif;
}

	
	 #AllWrap{
		margin :0 auto;
		}
	
	#menu_bigtitle{
	    font-size: 2em;
	    font-weight: bold;
	    text-align: center;
	}
	/*내방관리 */
	#menu_btitle {
		display: flex;
	    width: 1180px;
	    height: 64px;
	    margin: 0 auto;
    
	 }
	ul{
		
		list-style: none;
	}
	#menu_btitle > li {
		
	    width: 80%;
	    height: 100%;
	}
	#menu_btitle > li > a{
		display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    justify-content: center;
	    height: 100%;
	    font-size: 16px;
	    line-height: 26px;
	    border: 1px solid rgb(237, 237, 237);
	}
	a{
		color:inherit;
	    text-decoration: none;
	    cursor: pointer;
	}
	#menu_btitle > li > a.active{
		color: rgb(255, 255, 255);
	    background-color: #000000;
	    border: 0px;
	}
	input[type="radio"]{
		display:none;
	}
	input[type="radio"]+span{
		display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
	}
	  input[type="radio"]:checked + span {
        background-color: #000000;
        color: #ffffff;
        
        }
	#btnRegister{
		margin-bottom: 50px;
	}
	
	#ul_room_info {
		width: 1180px;
	    margin-top: 30px;
	    margin-bottom: 30px;
	    padding: 21px 35px;
	    border-radius: 4px;
	    background-color: rgb(255, 255, 255);
	    border: 1px solid rgb(226, 226, 226);
	}
	#div_input_info{
		width: 100%;
	    margin-bottom: 50px;
	    border-radius: 4px;
	    box-shadow: rgb(0 0 0 / 5%) 0px 1px 5px 0px;
	    border: 1px solid rgb(226, 226, 226);
	    background-color: rgb(255, 255, 255);
	    overflow: hidden;
	}
	div {
    	display: block;
	}
	
</style>
</head>
<body>
		<section id="big_menu">
			<h1 id="menu_bigtitle">방내놓기</h1>
				<ul id="menu_btitle">
				<li><a href="insertHouseTest.jsp" class="active">방내놓기</a></li>
				<li><a href="insertHouse2.jsp" aria-current="page" class="">내방관리</a></li>
			</ul>
		</section>
	
	<div id="AllWrap">
		<form id="insert_all" class="insert_all" method="post" enctype="multipart/form-data">
			
			<section id="myroom_info">
					<div id="myroom_info_div">
						<ul id="ul_room_info">
							<li>전/월세 매물만 등록할 수 있습니다.<br></li>
							<li>1개의 매물만 등록 가능하며, 다방에서 직거래로 표시됩니다.</li>
							<li>등록한 매물은 30일 간 노출됩니다.</li>
							<li>여기는 방내놓기 네번째칸입니다 내방관리 위한 설명</li>
						</ul>
					</div>
			</section>
			<section id="type">
				<div id="div_input_info">
				<h2>매물 종류</h2>
					<table>
						<tr>
							<label>종류 선택</label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="원룸" ><span>원룸</span></label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="투룸"><span>투룸</span></label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="오피스텔"><span>오피스텔</span></label>
						</tr>
						
						<tr>
							<td><label>건물 유형</label>
								<label class="input_chk_radio"><input type="radio" class='input_chk' id="dealType_1" name="deal_type" value="월세"><span>월세</span></label>
								<label class="input_chk_radio"><input type="radio" class='input_chk' id="dealType_2" name="deal_type" value="전세"><span>전세</span></label></td>
								
						</tr>
					</table>
				</div>
			</section>
			<section id="basic_info">
				<div id="div_input_info">
					<table>
						<h2>기본 정보</h2>
						<tr>
							<td><input type="number" name="deposit" class='input_chk' placeholder="보증금을 입력해주세요." value="" />&nbsp;&nbsp;만원 /</td>
							<td><input type="number" name="price" class='input_chk' placeholder="가격을 입력해주세요." value="" /></td>
							<td><label>면적&nbsp;</label><input type="number" class='input_chk' name="area" id="insert_area"><span>평</span></label></td>
							 <td>
							 	<select id="insert_floor" name="floor" class='input_chk'>
									<option>해당층수선택</option>
									<option value="1">1층</option>
									<option value="2">2층</option>
									<option value="3">3층</option>
									<option value="4">4층</option>
									<option value="5">5층</option>
									<option value="6">6층</option>
									<option value="7">7층</option>
									<option value="8">8층</option>
									<option value="9">9층</option>
									<option value="10">10층</option>
								</select>
							 </td>
							 <br>
							 <td><label>방향:</label><input type="text" id="insert_aspect" name="aspect" class='input_chk' value="" placeholder="동,서,남,북 등 방향 작성">
							 <td><label>입주가능일:</label><input type="date" id="input_date"  name="input_date" class='input_chk' value="" placeholder="">
							 </td>
						</tr>
					</table>
				</div>
			</section>
			  <section id="addtitional_info">
				<div id="div_input_info">
					<table>
						<h2>추가 정보</h2>
						<tr>
							<td>
								<label>관리비&nbsp;&nbsp;</label>
								<input type="number" id="insert_mgr" class='input_chk' name="mgr">만원&nbsp;&nbsp;&nbsp;
								협의 가능<input type="radio" name="" value="Y" class="">
								관리비 없음<input type="radio" name="" value="N" class=""><br><br>
								<hr>
								
								<div><label>관리비항목</label>
									<label>&nbsp;&nbsp;<input type="checkbox" id="mgr_elec"  name="mgr_elec" value="전기세" class="input_chk_mgr">전기세</label>
									<label>&nbsp;&nbsp;<input type="checkbox" id="mgr_water" name="mgr_water" value="수도세" class="input_chk_mgr">수도세</label>
									<label>&nbsp;&nbsp;<input type="checkbox" id="mgr_etc" name="mgr_internet" value="인터넷" class="input_chk_mgr">인터넷</label>		
									<label>&nbsp;&nbsp;<input type="checkbox" id="mgr_gas" name="mgr_gas" value="가스비" class="input_chk_mgr">가스비</label>
									<label>&nbsp;&nbsp;<input type="checkbox" id="mgr_park" name="mgr_park" value="주차비" class="input_chk_mgr">주차비</label>
								
								</div>				
							</td>
						<tr><br>
						
						<tr>
							<td>엘리베이터&nbsp;&nbsp;
							<label>가능&nbsp;<input type="radio" name="opt_elevator" value="Y"></label>
							<label>불가능&nbsp;<input type="radio" name="opt_elevator" value="N"></label>
							</td>
						</tr>
						<br>
						<tr>
							<td>발코니&nbsp;&nbsp;
							<label>가능&nbsp;<input type="radio" name="opt_valcony" value="Y"></label>
							<label>불가능&nbsp;<input type="radio" name="opt_valcony" value="N"></label>
							</td>
						</tr><br>
						<tr><td>주차여부&nbsp;&nbsp;
							<label>가능&nbsp;<input type="radio" name="opt_park" value="Y"></label>
							<label>불가능&nbsp;<input type="radio" name="opt_park" value="N"></label>
							</td>
						</tr><br>
						<tr><td>빌트인&nbsp;&nbsp;
							<label>있음&nbsp;<input type="radio" name="opt_builtin" value="Y"></label>
							<label>없음&nbsp;<input type="radio" name="opt_builtin" value="N"></label>
							</td>
						</tr>
						<tr><td>세탁기&nbsp;&nbsp;
							<label>있음&nbsp;<input type="radio" name="opt_washer" value="Y"></label>
							<label>없음&nbsp;<input type="radio" name="opt_washer" value="N"></label>
							</td>
						</tr>
						<tr><td>가스레인지&nbsp;&nbsp;
							<label>있음&nbsp;<input type="radio" name="opt_gas" value="Y"></label>
							<label>없음&nbsp;<input type="radio" name="opt_gas" value="N"></label>
							</td>
						</tr>
						<tr><td>전자레인지&nbsp;&nbsp;
							<label>있음&nbsp;<input type="radio" name="opt_micro" value="Y"></label>
							<label>없음&nbsp;<input type="radio" name="opt_micro" value="N"></label>
							</td>
						</tr>
						<tr><td>냉장고&nbsp;&nbsp;
							<label>있음&nbsp;<input type="radio" name="insert_refrige" value="Y"></label>
							<label>없음&nbsp;<input type="radio" name="insert_refrige" value="N"></label>
							</td>
						</tr>
						<tr>
							<td>
								<label>옵션항목&nbsp;&nbsp;</label>
								<input type="checkbox" name="opt_check" value="주차장"><label>주차장&nbsp;</label>
								<input type="checkbox" name="opt_check" value="에어컨"><label>에어컨&nbsp;</label>
								<input type="checkbox" name="opt_check" value="냉장고"><label>냉장고&nbsp;</label>
								<input type="checkbox" name="opt_check" value="세탁기"><label>세탁기&nbsp;</label>
								<input type="checkbox" name="opt_check" value="가스레인지"><label>가스레인지&nbsp;</label>
								<input type="checkbox" name="opt_check" value="전자레인지"><label>전자레인지&nbsp;</label>
								<input type="checkbox" name="opt_check" value="엘리베이터"><label>엘리베이터&nbsp;</label>
								<input type="checkbox" name="opt_check" value="빌트인"><label>빌트인&nbsp;</label><br>
							</td>
							
							
						</tr>
						<tr>
						<td><br>
								<label>보안시설&nbsp;&nbsp;</label>
								<input type="checkbox" name="cctv" value="Y"><label>CCTV&nbsp;</label>
								<input type="checkbox" name="videophone" value="Y"><label>비디오폰&nbsp;</label>
								<input type="checkbox" name="interphone" value="Y"><label>인터폰&nbsp;</label>
								<input type="checkbox" name="firealarm" value="Y"><label>화재경보&nbsp;</label>
								<input type="checkbox" name="frontdoor" value="Y"><label>프론트도어&nbsp;</label>
							</td>
						</tr>
					</table>	
				</div>
			</section>-->
			
			<section id="loc">
			<div id="div_input_info">
				<table>
					<h2>위치 정보</h2>
					<tr>
						<th>주소</th>
						<td>
							<input type="hidden" name="place">
							<input type="text" size="40" name="loc" id="address" class="essential" value=""><br>
							LAT:<input type="hidden" name='lat' class="input_chk" value="" id="lat"><br>
							LNG:<input type="hidden" name='lng' class="input_chk" value="" id="lng"><br>
											
						</td>
					</tr>
				</table>
				</div>
			</section>
			<section id="detail">
			<div id="div_input_info">
			<table>
				<h2>상세 정보</h2>
				<tr>
					<th>제목</th>
					<td><textarea class='input_chk'rows="1" cols="100" name="house_name" value="input_Title"></textarea> </td>
				</tr><br>
				<tr>
					<th>상세 설명</th>
					<td><textarea  class='input_chk' rows="5" cols="100" name="detail" value="input_detail"></textarea> </td>
				</tr>
			</table>
				</div>
			</section>
			
			<section id="insert_img">
				<div id="div_input_info">
				이미지번호 : <input type ="number" id="img" name="img_no" value="" class='input_chk'>
				이미지사진 : <input type ="file" id="" name="img_fname" value="" class='input_chk'>
				</div>
			</section>
			<div id="div_input_info">
			위에 추가안한 요소:<br>
			13ID:<input type="hidden" id="id" name='id' class="input_chk" value=""><br>
			등록일:<input type="date" id="house_regdate" name='house_regdate' class="input_chk" value=""/><br>
			</div>
			<button id="btnRegister">등록하기</button><br>
		</form>
		
	</div>

</body> 
</html>