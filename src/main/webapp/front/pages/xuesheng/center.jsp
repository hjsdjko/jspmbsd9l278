<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#center-container .right-container .layui-form .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #bfecb9;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: #eff8ee;
						width: auto;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
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

			<div id="breadcrumb">
				<span class="en">USER / CENTER</span>
				<span class="cn">个人中心</span>
			</div>

			<div id="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div :style='{"width":"calc(100% - 0px)","padding":"0px","margin":"20px 0 0","background":"none"}' class="right-container">
					<form :style='{"padding":"20px 20px","boxShadow":"0px 0px 4px #eee","borderColor":"#ddd","flexWrap":"wrap","background":"#fff","borderWidth":"1px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}' class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学号</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#bfecb9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#eff8ee","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" readonly="readonly" name="xuehao" name="xuehao" id="xuehao" placeholder="学号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学生姓名</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#bfecb9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#eff8ee","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="xueshengxingming" name="xueshengxingming" id="xueshengxingming" placeholder="学生姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">密码</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#bfecb9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#eff8ee","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="password" name="mima" id="mima" placeholder="密码" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item" :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="layui-form-label">头像</label>
							<img id="touxiangImg" :style='{"minHeight":"80px","width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"auto"}' src="../../img/avator.png">
							<input type="hidden" id="touxiang" name="touxiang" />
							<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#9DDA97","color":"#59B450","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
								<i :style='{"color":"#59B450","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传图片
							</button>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">性别</label>
							<select name="xingbie" id="xingbie" >
								<option value="">请选择</option>
								<option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学校</label>
							<select name="xuexiao" id="xuexiao"  lay-filter="xuexiao">
								<option value="">请选择</option>
								<option v-for="(item,index) in xuexiao" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">专业</label>
							<select name="zhuanye" id="zhuanye"  lay-filter="zhuanye">
								<option value="">请选择</option>
								<option v-for="(item,index) in zhuanye" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","margin":"0 0 20px 0","borderColor":"#c6ecc6","alignItems":"center","background":"#fff","borderWidth":"4px","display":"flex","width":"48%","borderStyle":"solid"}'>
							<label :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">联系电话</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#bfecb9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#eff8ee","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text"  name="lianxidianhua" name="lianxidianhua" id="lianxidianhua" placeholder="联系电话" autocomplete="off" class="layui-input">
						</div>
						<div :style='{"width":"100%","margin":"20px 0 20px","alignItems":"center","textAlign":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
							<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 20px 0 0","borderColor":"#59B450","color":"#111","minWidth":"110px","outline":"none","borderRadius":"0px","background":"#c6ecc6","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#333","minWidth":"110px","outline":"none","borderRadius":"0px","background":"#ddd","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					xingbie: [],
					xuexiao: [],
					zhuanye: [],
					centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('vip');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;

                form.on('select(xuexiao)', function(data){
                    vue.zhuanye = [];
                    if(jquery('#xuexiao option:selected').val()) {
                        http.request("option/zhuanye/zhuanye?conditionColumn=xuexiao&conditionValue="+jquery('#xuexiao option:selected').val(), 'get',{}, function(res) {
                            if(res.code==0) {
                                if(res.data != null){
                                    vue.zhuanye = res.data;
                                }
                            }
                        })
                    }
                    form.render('select');

                });
				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../shop-recharge/recharge.jsp'
					});
				});
				// 会员购买
				jquery('#btn-buyvip').click(function(e) {
					layer.open({
						type: 2,
						title: '会员购买',
						area: ['900px', '600px'],
						content: '../shop-recharge/buyvip.jsp'
					});
				});

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

				// 上传图片
				var touxiangUpload = upload.render({
					//绑定元素
					elem: '#touxiangUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#touxiang').val(url);
							jquery('#touxiangImg').attr('src', http.baseurl+url)
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				vue.xingbie = '男,女'.split(',')
				http.request(`option/xuexiao/xuexiao`,'get',{},(res)=>{
					vue.xuexiao = res.data
				});
				http.request(`option/zhuanye/zhuanye`,'get',{},(res)=>{
					vue.zhuanye = res.data
				});
				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
                setTimeout(()=>{
                    http.request(`${table}/session`, 'get', {}, function(data) {
                        // 表单赋值
                        form.val("myForm", data.data);
                        // 图片赋值
                        jquery("#touxiangImg").attr("src", http.baseurl+data.data.touxiang);
                    });
                },100)
				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
				    if(!data.xuehao){
					layer.msg('学号不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!data.xueshengxingming){
					layer.msg('学生姓名不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!data.mima){
					layer.msg('密码不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!isMobile(data.lianxidianhua)){
					layer.msg('联系电话应输入手机格式', {
									time: 2000,
									icon: 5
								});
					return false
				    }
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
