<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>赛友交流</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		
	</style>
	<body>
		<div id="app">

			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">FORUM / INFORMATION</span>
				<span class="cn">赛友交流</span>
			</div>
			<!-- 标题 -->

			<div class="forum-container" :style='{"width":"100%","padding":"30px 7% 40px","margin":"0px auto","position":"relative","background":"rgba(255,255,255,.3)"}'>
				<form class="layui-form login-form">
					<div class="layui-form-item" :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}'>
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">标题：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">类型：</div>
						<div class="layui-input-inline">
							<input type="radio" name="isdone" value="开放" title="公开" checked>
							<input type="radio" name="isdone" value="关闭" title="私人">
						</div>
					</div>
					<div class="layui-form-item" :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}'>
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="layui-form-label">内容：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#c6ecc6","backgroundColor":"#fff","borderRadius":"0","borderWidth":"4px","width":"100%","borderStyle":"solid","height":"auto"}' name="content" id="content">请输入内容</textarea>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 0 110px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#111","minWidth":"80px","outline":"none","borderRadius":"0px","background":"#c6ecc6","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">发布帖子</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#333","minWidth":"80px","outline":"none","borderRadius":"0px","background":"#ddd","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>
			<!-- layui -->
			<script src="../../layui/layui.js"></script>
			<!-- vue -->
			<script src="../../js/vue.js"></script>
			<!-- 组件配置信息 -->
			<script src="../../js/config.js"></script>
			<!-- 扩展插件配置信息 -->
			<script src="../../modules/config.js"></script>
			<!-- 工具方法 -->
			<script src="../../js/utils.js"></script>

			<script>
				var vue = new Vue({
					el: '#app',
					data: {
						// 轮播图
						swiperList: [{
							img: '../../img/banner.jpg'
						}]
					},
					methods: {
						jump(url) {
							jump(url)
						}
					}
				})

				layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'tinymce'], function() {
					var layer = layui.layer;
					var element = layui.element;
					var carousel = layui.carousel;
					var http = layui.http;
					var form = layui.form;
					var jquery = layui.jquery;
					var tinymce = layui.tinymce

                    // 获取轮播图 数据
                    http.request('config/list', 'get', {
                        page: 1,
                        limit: 3
                    }, function(res) {
                        if (res.data.list.length > 0) {
                            let swiperList = [];
                            res.data.list.forEach(element => {
                              if (element.value != null) {
                                swiperList.push({
                                  img: http.baseurl+element.value
                                });
                              }
                            });
                            vue.swiperList = swiperList;

                            vue.$nextTick(() => {
                                carousel.render({
                                    elem: '#layui-carousel',
                                    width: '100%',
                                    height: '480px',
                                    anim: 'default',
                                    autoplay: 'true',
                                    interval: '5000',
                                    arrow: 'none',
                                    indicator: 'inside'
                                });
                            })
                        }
                    });
					// 初始化编辑器
					var edit = tinymce.render({
						elem: "#content",
						height: 600,
						images_upload_handler: function(blobInfo, succFun, failFun) {
							var xhr, formData;
							var file = blobInfo.blob(); //转化为易于理解的file对象
							xhr = new XMLHttpRequest();
							xhr.withCredentials = false;
							xhr.open('POST', http.baseurl + 'file/upload');
							xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
							xhr.onload = function() {
								var json;
								if (xhr.status != 200) {
									failFun('HTTP Error: ' + xhr.status);
									return;
								}
								json = JSON.parse(xhr.responseText);
								// if (!json || typeof json.location != 'string') {
								// 	failFun('Invalid JSON: ' + xhr.responseText);
								// 	return;
								// }
								if (!json || typeof json.file != 'string') {
									failFun('Invalid JSON: ' + xhr.responseText);
									return;
								}
								succFun(http.baseurl + '/upload/' + json.file);
							};
							formData = new FormData();
							formData.append('file', file, file.name); //此处与源文档不一样
							xhr.send(formData);
						}
					}, (opt) => {

					});

					form.on('submit(*)', function(data) {
						// 获取富文本的内容
						var content = tinymce.get('#content').getContent()
						data = data.field;
						data.content = content;
						data.username = localStorage.getItem('adminName');
						data.userid = localStorage.getItem('userid');
						data.parentid = 0;
						http.requestJson('forum/add', 'post', data, function(res) {
							layer.msg('发表成功', {
								time: 2000,
								icon: 6
							}, function() {
								back();
							});
						});
						return false;
					});

				});
			</script>
	</body>
</html>