/**
 * Description : com0001 로그인화면 js
 * Date : 2023.01.29
 * 작성자 : 김호성 , 날짜 : 2023.01.29, 설명 : 최초작성
 */

document.write('<script src="../../../utils/utils.js"></script>');

//login action
function fn_login(){
	var tagid = $('#floatingInput').val();
	var tagpw = $('#floatingPassword').val();
	var api_url = fn_getApiUrl();
	var web_url = fn_getWebUrl();
	var sendURL = api_url + "/login.do"
	var formdata = new FormData();
	
		
	//login check
	if(tagid == "" && tagpw == ""){
		return false;
	}
	
	formdata.append("id"    ,tagid);
	formdata.append("passwd",tagpw); 

	fn_sendAjax('POST', sendURL, formdata, function(data,errchk) {
		if (errchk == "err") return false;

        if (data.code == '200') {
			fn_swalAlart('로그인 성공','로그인에 성공하였습니다.','success');
        } else if(data.code == '400') {
        	fn_swalAlart('로그인 실패','아이디와 패스워드를 확인해주세요','error');
        }
	});    
}


