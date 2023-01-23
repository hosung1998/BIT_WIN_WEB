<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>BIT COIN</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

    

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
		.rollingbanner{
		    position: relative;
		    width: 300px;
		    height: 32px;
		    font-size: .875rem;
		    letter-spacing: -1px;
		    padding: 7px 15px;
		    box-sizing: border-box;
		    background-color: #f0f0f0;
		    border-radius: 16px;
		}
		/* 타이틀 */
		.rollingbanner > .title{
		    font-weight: bold;
		    float: left;
		    padding-right: 10px;
		}
		/* 롤링 배너 */
		.rollingbanner > .wrap{
		    position: relative;
		    width: auto;
		    height: 100%;
		    box-sizing: border-box;
		    overflow: hidden;
		}        
		.rolling ul{
		    list-style: none;
		}
		.rollingbanner li{
		    position: absolute;
		    top: -36px;
		    left: 0;
		}
		/* 이전, 현재, 다음 롤링 배너 표시 */
		.rollingbanner li.prev{
		    top: 36px;
		    transition: top 0.5s ease;
		}
		.rollingbanner li.current{
		    top: 0;
		    transition: top 0.5s ease;
		}
		.rollingbanner li.next{
		    top: -36px;
		}
		.rollingbanner a{
		    display: block;
		    display: -webkit-box;
		    text-decoration: none;
		    -webkit-line-clamp: 1;
		    -webkit-box-orient:vertical;
		    overflow: hidden;
		    color: #000;
		}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#"  style="text-align: center;">Bit Coin</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="form-control form-control-dark w-100 rounded-0 border-0" >
	<div class="rollingbanner ">
	    <div class="title">속보 > </div>
	    <div class="wrap">
	        <ul>
	            <li class="current"><a href="#">노바백스 백신 2월중순부터 접종</a></li>
	            <li class="next"><a href="#">얼어붙은 투심에…현대엔지니어링 상장 철회</a></li>
	            <li><a href="#">"일본 정부, 사도광산 세계유산 추천 방침 굳혀, 일본과 갈등 첨예화 예상"</a></li>
	            <li><a href="#">"공법변경 구조검토 요구, 현산 측이 묵살했다"</a></li>
	            <li class="prev"><a href="#">12월 주담대 금리 연 3.63%…7년7개월 만에 최고</a></li>
	        </ul>
	    </div>
	</div>	

  </div	>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="../Loginpage/index.html">SIGN OUT</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">
              <span data-feather="home" class="align-text-bottom"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file" class="align-text-bottom"></span>
              Orders
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart" class="align-text-bottom"></span>
              Products
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="users" class="align-text-bottom"></span>
              Customers
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
              Reports
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers" class="align-text-bottom"></span>
              Integrations
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" onclick="dayclick_7()" class="btn btn-sm btn-outline-secondary">7 day</button>
            <button type="button" onclick="dayclick_15()" class="btn btn-sm btn-outline-secondary">15 day</button>
            <button type="button" onclick="dayclick_30()" class="btn btn-sm btn-outline-secondary">30 day</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary ">
            <span data-feather="calendar" class="align-text-bottom"></span>
            List Update
          </button>
        </div>
      </div>

      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>

      <h2>Mark list</h2>
      
      <div class="table-responsive">
        <table class="table table-striped table-sm" id="grid1">
          <thead>
            <tr>
              <th scope="col">종목명</th>
              <th scope="col">시가</th>
              <th scope="col">고가</th>
              <th scope="col">저가</th>
              <th scope="col">적재일시</th>
            </tr>
          </thead>
          <tbody >
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  	<script type="text/javascript" charset="utf-8">

  		var url = window.location.href;
  		var api_url = "";
  		var web_url = "";
  		
  		//dev
  		if(url.substr(0,21) == "http://localhost:8080"){
  			api_url = "http://localhost:5000";
  			web_url = "http://localhost:8080";
  		//prod
  		}else{
  			api_url = "https://bit-win-api.herokuapp.com";
  			web_url = "https://bit-win-web.herokuapp.com";
  		}
  		
  		
	    $.ajax({
	        type : "GET",            
	        url :  api_url + "/upbitlist",    
	        datatype : "json",
	        async: false,
	        success : function(data){ 
				$.each(data, function(index, item) { // 데이터 =item
				    // table element 찾기
				    const table = document.getElementById('grid1');
				    
				    // 새 행(Row) 추가
				    const newRow = table.insertRow();
				    
				    // 새 행(Row)에 Cell 추가
				    var newCell1 = newRow.insertCell(0);
				    var newCell2 = newRow.insertCell(1);
				    var newCell3 = newRow.insertCell(2);
				    var newCell4 = newRow.insertCell(3);
				    var newCell5 = newRow.insertCell(4);

				    // Cell에 텍스트 추가
				    newCell1.textContent = item.mr_cd;
				    newCell2.textContent = item.opening_price;
				    newCell3.textContent = item.high_price;
				    newCell4.textContent = item.trade_price;
				    newCell5.textContent = item.reg_dt;				
				});
	        }
	    });   	

	    
	    
	    document.addEventListener('DOMContentLoaded', ()=>{
	        var interval = window.setInterval(rollingCallback, 3000);
	    })
	    function rollingCallback(){
	        //.prev 클래스 삭제
	        document.querySelector('.rollingbanner .prev').classList.remove('prev');

	        //.current -> .prev
	        let current = document.querySelector('.rollingbanner .current');
	        current.classList.remove('current');
	        current.classList.add('prev');

	        //.next -> .current
	        let next = document.querySelector('.rollingbanner .next');
	        //다음 목록 요소가 널인지 체크
	        if(next.nextElementSibling == null){
	            document.querySelector('.rollingbanner ul li:first-child').classList.add('next');
	        }else{
	        	//목록 처음 요소를 다음 요소로 선택
	            next.nextElementSibling.classList.add('next');
	        }
	        next.classList.remove('next');
	        next.classList.add('current');
	    }
  	</script>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  </body>
</html>
