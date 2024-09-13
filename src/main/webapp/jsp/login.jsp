<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>登陆</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>

<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
	</head>
<style>
	html, body {
		width: 100%;
		height: 100%;
	}
	
	.content {
				background-repeat: no-repeat;
				background-size: 100% 100%;
				background: url(http://codegen.caihongy.cn/20221212/0eb67ff40d4c4995a12f987a900419f8.jpg);
				display: flex;
				width: 100%;
				min-height: 100vh;
				justify-content: center;
				align-items: center;
				background-position: center center;
			}
	
	#loginForm {
				border: 1px solid #eee;
				border-radius: 16px;
				padding: 60px 0 0 260px;
				box-shadow: 0px 0px 6px #eee;
				margin: 0;
				background: url(http://codegen.caihongy.cn/20221212/c731239665e7410cac3fd1bce4cee1e2.jpg) no-repeat center bottom / 100% 100%;
				width: 1000px;
				min-height: 550px;
				height: auto;
			}
	
	#loginForm .title {
				border-radius: 0;
				padding: 0px;
				margin: 0 auto 40px;
				color: #378fb8;
				background: none;
				width: 96%;
				font-size: 22px;
				line-height: 40px;
				text-align: center;
			}
	
	#loginForm .list-item {
				margin: 0 auto 30px;
				display: flex;
				width: 80%;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#loginForm .list-item .item-label {
				color: rgba(64, 158, 255, 1);
				width: 64px;
				font-size: 14px;
				line-height: 44px;
			}
	
	#loginForm .list-item>input {
				padding: 0 10px;
				color: #999;
				width: 100%;
				font-size: 14px;
				border-color: #edeef0;
				border-width: 0 0 1px;
				border-style: solid;
				height: 44px;
			}
	
	#loginForm .list-code {
				margin: 20px auto;
				display: flex;
				width: 80%;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#loginForm .list-code input {
				padding: 0 10px;
				outline: none;
				margin: 0 20px 0 0;
				color: #999;
				width: calc(100% - 100px);
				font-size: 14px;
				border-color: #edeef0;
				border-width: 0 0 1px;
				border-style: solid;
				height: 44px;
			}
	
	#loginForm .list-code .nums {
				cursor: pointer;
				background: #f5f5f5;
				display: flex;
				width: 80px;
				border-color: #ebeaed;
				border-width: 0 0 1px;
				justify-content: center;
				align-items: center;
				border-style: solid;
				height: 44px;
			}
	
	#loginForm .form-group-r {
				margin: 30px auto;
				width: 80%;
			}
	
	#loginForm .form-group-r .checkbox {
				display: inline-block;
			}
	
	#loginForm .form-group-r .checkbox input {
				margin: 0 4px 0;
			}
	
	#loginForm .form-group-r .checkbox.active input {
				margin: 0 4px 0;
				color: #85ccfe;
				background: #85ccfe;
			}
	
	#loginForm .form-group-r .checkbox label {
				color: #666;
				font-size: 14px;
			}
	
	#loginForm .form-group-r .checkbox.active label {
				color: #85ccfe;
				font-size: 14px;
			}
	
	#loginForm .form-group-l-r {
				margin: 20px auto;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#loginForm .form-group-l-r .btn-login {
				border: 1px solid #a4bed4;
				cursor: pointer;
				border-radius: 30px;
				padding: 0 26px;
				box-shadow: 0 2px 4px rgba(0,0,0,.2);
				margin: 0 6px 8px;
				outline: none;
				color: #333;
				background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(202,226,255,1) 50%, rgba(210,230,254,1) 100%),#85ccfe;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
	
	#loginForm .form-group-l-r .btn-register  {
				border: 1px solid #a4bed4;
				cursor: pointer;
				padding: 0 10px;
				margin: 0 3px 8px;
				color: #333;
				font-size: 14px;
				line-height: 40px;
				border-radius: 30px;
				box-shadow: 0 2px 4px rgba(0,0,0,.2);
				outline: none;
				background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(202,226,255,1) 50%, rgba(210,230,254,1) 100%),#85ccfe;
				width: auto;
				height: 40px;
			}
	
	#loginForm .form-group-l-r .btn-forget  {
				border: 0;
				cursor: pointer;
				border-radius: 0;
				padding: 0 60px 0 0;
				margin: 8px 0 0;
				outline: none;
				color: #378fb8;
				background: none;
				width: 100%;
				font-size: 14px;
				text-align: right;
				height: 40px;
			}
</style>
<body>
		
	<div class="content">
		<div id="login-wrapper">
			<form id="loginForm" action="" method="post">
				<div class="title">青少年信息学奥林匹克竞赛交流平台</div>
				<div class="list-item">
					<input type="text" id="username" name="username" placeholder="用户名" class="form-control-i" required>
				</div>
				<div class="list-item">
					<input type="password" name="password" placeholder="密码" class="form-control-i" required>
				</div>
				
				
				<div class="form-group-l-r">
					<button class="btn btn btn-primary btn-login" type="submit" onclick="login()">登录</button>
				</div>	
			</form>
		</div>
	</div>

	<!-- MAIN EFFECT -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/preloader.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/app.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/load.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/main.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
		<script type="text/javascript">
		
	<%@ include file="utils/menu.jsp"%>
		
	<%@ include file="utils/baseUrl.jsp"%>
		var role = "";
		var accountTableName = "";
		var codes = [{
			num: 1,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 2,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 3,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }, {
			num: 4,
			color: '#000',
			rotate: '10deg',
			size: '16px'
		  }]
		
		//渲染角色选择
		function setRoleOption() {
			var box = document.createElement('div');
			box.setAttribute('class', 'form-group-r');
            var menuNum = 0;
			for (var i = 0; i < menus.length; i++) {
                if(menus[i].hasBackLogin=='是') {
                    if(menuNum==0) {
                        role = menus[i].roleName;
                        $('#loginForm').attr('action', baseUrl + menus[i].tableName + '/login');
                        accountTableName = menus[i].tableName;
                    }
                    menuNum++;
                }
			}
            if(menuNum>1) {
                role = '';
                $('#loginForm').attr('action', '');
                accountTableName = '';
                for (var i = 0; i < menus.length; i++) {
                    if(menus[i].hasBackLogin=='是') {
                        //console.log(menu[i].roleName)
                        var div = document.createElement('div');
                        div.setAttribute('class', 'checkbox');
                        var label = document.createElement('label');
                        //label.innerHTML = menus[i].roleName;
                        var checkbox = document.createElement('input');
                        checkbox.setAttribute('type', 'radio');
                        checkbox.setAttribute('name', 'chk');
                        checkbox.setAttribute('value', menus[i].roleName);
                        var attr = "checkRole(" + "\'" + menus[i].roleName + "\',\'"
                                + menus[i].tableName + "\')";
                        checkbox.setAttribute('onclick', attr);
                        //label.setAttribute('class','checkbox inline');
                        label.innerHTML = menus[i].roleName;
                        div.appendChild(checkbox);
                        div.appendChild(label);
                        box.appendChild(div);
                    }
                }
            }
            $('form .form-group-l-r').before(box);
		}
		function checkRole(roleName, tableName) {			
			role = roleName;
			$('#loginForm').attr('action', baseUrl + tableName + '/login');
			accountTableName = tableName;
		}
		
		$('#login-wrapper').on('change', 'input[type=radio]', function () {
		    $('#login-wrapper .form-group-r .checkbox').removeClass('active');
			$(this).parent().addClass('active');
		});
		
		function login() {
			
			$("#loginForm")
					.ajaxForm(
							function(res) {
								if (role == "" || role == null) {
									alert("请选择角色后再登录");
								} else {
									if (res.code == 0) {
										var username = $('#username').val();
										window.sessionStorage.setItem('accountTableName',accountTableName)
						 				window.sessionStorage.setItem('username',username);
										window.sessionStorage.setItem('token',
												res.token);
										window.sessionStorage.setItem('role',
												role);
										http(accountTableName+'/session','GET',{},(res2)=>{
											if(res2.code == 0){
												window.sessionStorage.setItem('userid',res2.data.id);
										        window.location.href = "${pageContext.request.contextPath}/index.jsp";
											}
										});
									} else {
										alert(res.msg);
									}
								}

							});
		}
		function ready() {
			setRoleOption();
			//$('form').attr('action',baseUrl + 'users/login');
		}
		document.addEventListener("DOMContentLoaded", ready);
		
		function randomString() {
			var len = 4;
			var chars = [
			  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			  '3', '4', '5', '6', '7', '8', '9'
			]
			var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
			var sizes = ['14', '15', '16', '17', '18']
			
			var output = []
			for (var i = 0; i < len; i++) {
			  // 随机验证码
			  var key = Math.floor(Math.random() * chars.length)
			  codes[i].num = chars[key]
			  // 随机验证码颜色
			  var code = '#'
			  for (var j = 0; j < 6; j++) {
			    var key = Math.floor(Math.random() * colors.length)
			    code += colors[key]
			  }
			  codes[i].color = code
			  // 随机验证码方向
			  var rotate = Math.floor(Math.random() * 30)
			  var plus = Math.floor(Math.random() * 2)
			  if (plus == 1) rotate = '-' + rotate
			  codes[i].rotate = 'rotate(' + rotate + 'deg)'
			  // 随机验证码字体大小
			  var size = Math.floor(Math.random() * sizes.length)
			  codes[i].size = sizes[size] + 'px'
			}
			
			var str = ''
			for(var i = 0;i<codes.length;i++) {
				str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
			}
			$('#nums').html('').append(str);
		}
		
		randomString();
	</script>

</body>

</html>
