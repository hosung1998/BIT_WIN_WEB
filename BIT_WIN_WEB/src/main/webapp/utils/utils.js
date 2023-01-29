/**
 * Description : javaScript 공통함수 정의 
 * Date : 2023.01.29
 * 작성자 : 김호성 , 날짜 : 2023.01.29, 설명 : 최초작성
 */
 
function fn_getApiUrl(){
	var url = window.location.href;
	var api_url = "";
	
	//dev
	if(url.substr(0,21) == "http://localhost:8080"){
		api_url = "http://localhost:5000";
	//prod
	}else{
		api_url = "https://bit-win-api.herokuapp.com";
	}		

	return api_url;
}

function fn_getWebUrl(){
	var url = window.location.href;
	var web_url = "";
	
	//dev
	if(url.substr(0,21) == "http://localhost:8080"){
		web_url = "http://localhost:8080";
	//prod
	}else{
		web_url = "https://bit-win-web.herokuapp.com";
	}
	
	return web_url;		
}

/* Front > Server 통신  */
function fn_sendAjax(type, url, param, callback){
	  $.ajax({
	      url :  url,      
	  	  async: false,
		  contentType: false,
	      processData: false,
	      type : type,
		  data : param,
		  datatype : "json",
	      success : function(data, textStatus, xhr){ 
		  		 return callback(data,"ok");
	      },
	      error : function(xhr, status, error){
				 return callback(data,"err");
	      }
	  }); 	
}

/* 공통 메시지창 */
function fn_swalAlart(title,text,icon){
	Swal.fire({
		  title: title,         
		  text:  text,  
		  icon:  icon,                         
		});	    	
}