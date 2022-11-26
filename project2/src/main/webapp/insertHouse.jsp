<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방내놓기 페이지</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
		//이미지 파일이름 불러오기
		$('#btn_upload').click(function(){
            
            var files=$('input:file[name="img_fname"]')[0].files;
            
            for(var i= 0; i<files.length; i++){
                alert('img_fname :'+files[i].name);
            }
            
        });
		
		//var str = $("#insert_all").serializeArray();
		$("#btnRegister").click(function(){
			var form = new FormData(document.getElementById('insert_all'));
			$.ajax({
			url : "insertHouse",
			type : "post",
			processData: false,
			contentType: false,
			data : form,
			dataType : "json",
			success : function(data) {
				if(data>=1){
					console.log(form);
					alert("house table 성공");
					//location.href="loadHouseAction.do?house_no="+house_no;
					//location.href="insertHouseOK.do?house_no="+house_no;
					//입력한 no out.print해서 값 나오는지 확인하고
				}
				else{
					alert("매물 등록(house table)실패");}}});
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
	input[type="checkbox"]{
		display:none;
	}
	input[type="radio"]+span{
		display: inline-block;
        padding: 10px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
	}
	
	input[type="checkbox"]+span{
		display: inline-block;
        padding: 10px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
	}
	  input[type="radio"]:checked + span {
        background-color: #000000;
        color: #ffffff;
        
        }
        input[type="checkbox"]:checked + span {
        background-color: #cccccc;
        color: #333333;
        
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
		<form  id="insert_all" class="insert_all" method="post" enctype="multipart/form-data">
			
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
							<td><label>종류 선택</label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="원룸" ><span>원룸</span></label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="투룸"><span>투룸</span></label>
							<label class="input_chk_radio"><input type="radio" id="input_radio_type" name="type" class='input_chk' value="오피스텔"><span>오피스텔</span></label>
							</td>
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
							<td><input type="number" name="price" class='input_chk' placeholder="가격을 입력해주세요." value="" />&nbsp;&nbsp;만원  /   </td>
							<td><label>면적&nbsp;</label><input type="number" class='input_chk' name="area" id="insert_area"><span>&nbsp;평   /</span></label></td>
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
								
								<hr>
								
								<div><label>관리비항목</label>
									<label><input type="checkbox" id="mgr_elec"  name="mgr_elec" value="전기세" class="input_chk_mgr"><span>전기세</span></label>
									<label><input type="checkbox" id="mgr_water" name="mgr_water" value="수도세" class="input_chk_mgr"><span>수도세</span></label>
									<label><input type="checkbox" id="mgr_etc" name="mgr_internet" value="인터넷" class="input_chk_mgr"><span>인터넷</span></label>		
									<label><input type="checkbox" id="mgr_gas" name="mgr_gas" value="가스비" class="input_chk_mgr"><span>가스비</span></label>
									<label><input type="checkbox" id="mgr_park" name="mgr_park" value="주차비" class="input_chk_mgr"><span>주차비</span></label>
								
								</div>				
							</td>
						<tr>
						
						<tr>
							<td>엘리베이터&nbsp;&nbsp;
							<label class="input_chk_radio"><input type="radio" name="opt_elevator" value="Y"><span>가능&nbsp;</span></label>
							<label class="input_chk_radio"><input type="radio" name="opt_elevator" value="N"><span>불가능&nbsp;</span></label>
							</td>
						</tr>
						
						<tr>
							<td>발코니&nbsp;&nbsp;
							<label><input type="radio" name="opt_valcony" value="Y"><span>가능</span></label>
							<label><input type="radio" name="opt_valcony" value="N"><span>불가능</span></label>
							</td>
						</tr>
						<tr><td>주차여부&nbsp;&nbsp;
							<label><input type="radio" name="opt_park" value="Y"><span>가능</span></label>
							<label><input type="radio" name="opt_park" value="N"><span>불가능</span></label>
							</td>
						</tr>
						<tr><td>빌트인&nbsp;&nbsp;
							<label><input type="radio" name="opt_builtin" value="Y"><span>있음</span></label>
							<label><input type="radio" name="opt_builtin" value="N"><span>없음</span></label>
							</td>
						</tr>
						<tr><td>세탁기&nbsp;&nbsp;
							<label><input type="radio" name="opt_washer" value="Y"><span>있음</span></label>
							<label><input type="radio" name="opt_washer" value="N"><span>없음</span></label>
							</td>
						</tr>
						<tr><td>가스레인지&nbsp;&nbsp;
							<label><input type="radio" name="opt_gas" value="Y"><span>있음</span></label>
							<label><input type="radio" name="opt_gas" value="N"><span>없음</span></label>
							</td>
						</tr>
						<tr><td>전자레인지&nbsp;&nbsp;
							<label><input type="radio" name="opt_micro" value="Y"><span>있음</span></label>
							<label><input type="radio" name="opt_micro" value="N"><span>없음</span></label>
							</td>
						</tr>
						<tr><td>냉장고&nbsp;&nbsp;
							<label><input type="radio" name="insert_refrige" value="Y"><span>있음</span></label>
							<label><input type="radio" name="insert_refrige" value="N"><span>없음</span></label>
							</td>
						</tr>
						<tr>
							<td>
								<label>옵션항목&nbsp;&nbsp;</label>
								<label><input type="checkbox" name="opt_check" value="주차장"><span>주차장</span></label>
								<label><input type="checkbox" name="opt_check" value="에어컨"><span>에어컨</span></label>
								<label><input type="checkbox" name="opt_check" value="냉장고"><span>냉장고</span></label>
								<label><input type="checkbox" name="opt_check" value="세탁기"><span>세탁기</span></label>
								<label><input type="checkbox" name="opt_check" value="가스레인지"><span>가스레인지</span></label>
								<label><input type="checkbox" name="opt_check" value="전자레인지"><span>전자레인지</span></label>
								<label><input type="checkbox" name="opt_check" value="엘리베이터"><span>엘리베이터</span></label>
								<label><input type="checkbox" name="opt_check" value="빌트인"><span>빌트인</span></label><br>
							</td>
							
							
						</tr>
						<tr>
						<td>
								<label>보안시설&nbsp;&nbsp;</label>
								<label><input type="checkbox" name="cctv" value="Y"><span>CCTV</span></label>
								<label><input type="checkbox" name="videophone" value="Y"><span>비디오폰</span></label>
								<label><input type="checkbox" name="interphone" value="Y"><span>인터폰</span></label>
								<label><input type="checkbox" name="firealarm" value="Y"><span>화재경보</span></label>
								<label><input type="checkbox" name="frontdoor" value="Y"><span>프론트도어</span></label>
							</td>
						</tr>
					</table>	
				</div>
			</section>
			<section id="loc">
			<div id="div_input_info">
				<table>
					<h2>위치 정보</h2>
					<tr>
						<th>주소</th>
						<td>
							<input type="hidden" name="place">
							<input type="text" size="40" name="loc" id="address" class="essential" value="">
							<input type="hidden" name='lat' class="input_chk" value="" id="lat">
							<input type="hidden" name='lng' class="input_chk" value="" id="lng">			
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
				</tr>
				<tr>
					<th>상세 설명</th>
					<td><textarea  class='input_chk' rows="5" cols="100" name="detail" value="input_detail"></textarea> </td>
				</tr>
			</table>
				</div>
			</section>
			
			<section id="insert_img">
				<div id="div_input_info">
				<h2>이미지</h2>
				이미지번호 : <input type ="number" id="img" name="img_no" value="" class='input_chk'>
				이미지사진 : <input type ="file" id="" name="img_fname" value="" class='input_chk' multiple/>
			
				<input type="hidden" id="btn_upload" value="show" />
				</div>
			</section>
			<div id="div_input_info">
			<h2>등록일</h2>
			<input type="hidden" id="id" name='id' class="input_chk" value=""><br>
			등록일:<input type="date" id="house_regdate" name='house_regdate' class="input_chk" value=""/>
			</div>
		</form>
			<button id="btnRegister">등록하기</button><br>
		
	</div>

</body> 
</html>