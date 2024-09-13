<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
.error {
	color: red;
}
</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑客服聊天表</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>客服聊天表管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑客服聊天表</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input type="hidden" id="isreply" name="isreply" value="0">
				<div ref="chatRecord" style="border-style: groove;width: 600px;height: 500px;overflow:auto;margin: 0 0 10px 0" id="chatRecord"></div>
				<div class="form-item form-item-file">
					<input name="reply" id="reply-input" style="width: 400px">
					<button id="submitBtn" type="button" class="btn btn-primary btn-file">发送</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		var tableName = "chat";
		var pageType = "add-or-update";
		var updateId = "";
		var ruleForm = {};
		var userId = "";
		var chatList = [];

		// 表单提交
		function submit() {
			if ($("#reply-input").val()!="") {
				let data = {};
				data["userid"] = userId;
				data["reply"] = $("#reply-input").val();
				let json = JSON.stringify(data);
				let that = this;
				$.ajax({
							type : "POST",
							url : baseUrl + "chat/save",
							contentType : "application/json",
							data : json,
							beforeSend : function(xhr) {
								xhr.setRequestHeader("token",window.sessionStorage.getItem('token'));
							},
							success : function(res) {
								if (res.code == 0) {
									var chatRecord = document.getElementById('chatRecord');

									var div = document.createElement("div");
									var div2 = document.createElement("div");
									var span = document.createElement("span");
									span.innerHTML = $("#reply-input").val();
									div2.style.textAlign="right";
									span.style.color="#FF5511"
									span.style.backgroundColor="#FFC8B4"
									span.style.padding="5px";
									span.style.borderRadius="5px"
									div.style.padding="12px";
									div2.appendChild(span)
									div.appendChild(div2)
									chatRecord.appendChild(div);
									
									$("#reply-input").val("");
								} else if (res.code == 401) {
									<%@ include file="../../static/toLogin.jsp"%>
								} else {
									alert(res.msg)
								}
							},
						});
			} else {
				alert("请输入消息");
			}
		}

		// 填充富文本框
		function setContent() {
			if (ruleForm.ask != null && ruleForm.ask != 'null'
					&& ruleForm.ask != '') {
				var askMes = '' + ruleForm.ask;
				var askUeditor = UE.getEditor('askEditor');
				askUeditor.ready(function() {
					askUeditor.setContent(askMes);
					askUeditor.setDisabled('fullscreen');
				});
			}
			if (ruleForm.reply != null && ruleForm.reply != 'null'
					&& ruleForm.reply != '') {
				var replyMes = '' + ruleForm.reply;
				var replyUeditor = UE.getEditor('replyEditor');
				replyUeditor.ready(function() {
					replyUeditor.setContent(replyMes);
				});
			}
		}

		// 获取富文本框内容
		function getContent() {
			if (UE.getEditor('askEditor').hasContents()) {
				$('#ask-input').attr('value',
						UE.getEditor('askEditor').getPlainTxt());
			}
			if (UE.getEditor('replyEditor').hasContents()) {
				$('#reply-input').attr('value',
						UE.getEditor('replyEditor').getPlainTxt());
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {},
				messages : {}
			}).form();
		}

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			userId = id;
			$.ajax({
				type : "GET",
				url : baseUrl + "chat/page",
				data : {
					page : 1,
					limit : 1000,
					sort : "addtime",
					order : "asc",
					userid :id
				},
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					if (res.code == 0) {
						ruleForm = res.data;
						chatList = res.data.list;
						console.log(chatList);
						// 数据填充
						dataBind();
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
		}
		function dataBind() {
			var chatRecord = document.getElementById('chatRecord');
			$("#chatRecord").empty();
			for(var i=0;i<chatList.length;i++) {
				var div = document.createElement("div");
				var div2 = document.createElement("div");
				var span = document.createElement("span");
				if(chatList[i].reply!=null && chatList[i].reply!="") {
					span.innerHTML = chatList[i].reply;
					div2.style.textAlign="right";
					span.style.color="#FF5511"
					span.style.backgroundColor="#FFC8B4"
				} else {
					span.innerHTML = chatList[i].ask;
					span.style.color="#227700"
					span.style.backgroundColor="#99FF99"
				}
				span.style.padding="5px";
				span.style.borderRadius="5px"
				div.style.padding="12px";
				div2.appendChild(span)
				div.appendChild(div2)
				chatRecord.appendChild(div);
			}
		}
		$(document).ready(
				function() {
					//设置右上角用户名
                    $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
					//设置项目名
					$('.sidebar-header h3 a').html(projectName)
					//设置导航栏菜单
					setMenu();
					getDetails();
					setInterval("getDetails()",4000);
	<%@ include file="../../static/myInfo.js"%>
		$('#submitBtn').on('click', function(e) {
						e.preventDefault();
						//console.log("点击了...提交按钮");
						submit();
					});
				});
		// 用户登出
	<%@ include file="../../static/logout.jsp"%>
		
	</script>
</body>

</html>
