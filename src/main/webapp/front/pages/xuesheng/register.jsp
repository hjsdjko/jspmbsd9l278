<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		
		#registerForm .form-item .layui-form-select .layui-input {
						border-radius: 8px;
						padding: 0 10px;
						box-shadow: inset 0px 0px 12px 0px #c5f1c0;
						outline: none;
						color: #333;
						width: 100%;
						font-size: 14px;
						border-color: #bdefb6;
						border-width: 1px;
						border-style: solid;
						height: 44px;
					}
	</style>
	<body>
		<div id="register" class="register" :style='{"minHeight":"100vh","width":"100%","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230104/149cce5901d247838e12d10d26caa0e4.jpg) no-repeat center top / 100% 100%","justifyContent":"center","display":"flex"}'>
			<form id="registerForm" class="layui-form login-form" :style='{"padding":"20px 120px","boxShadow":"0 0px 0px rgba(0, 0, 0, .1)","margin":"0","borderRadius":"30px","flexWrap":"wrap","background":"rgba(255,255,255,.9)","display":"flex","width":"680px","justifyContent":"center","height":"auto"}' lay-filter="myForm">
				<div v-if="true" :style='{"margin":"0 0 4px","color":"#5bb450","textAlign":"center","display":"none","width":"100%","fontSize":"24px","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
				<div v-if="true" :style='{"boxShadow":"inset 0px 0px 32px 0px #c5f1c0","margin":"0 auto 20px","borderColor":"#bdefb6","color":"#5bb450","textAlign":"center","background":"none","borderWidth":"1px 4px","width":"100%","lineHeight":"44px","fontSize":"16px","borderStyle":"solid","textShadow":"0px 0px 0px rgba(64, 158, 255, .5)"}'>学生注册</p></div>
			

				<div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>学号：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 12px 0px #c5f1c0","outline":"none","borderColor":"#bdefb6","color":"#333","borderRadius":"8px","borderWidth":"1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="xuehao" name="xuehao" placeholder="请输入学号" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>学生姓名：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 12px 0px #c5f1c0","outline":"none","borderColor":"#bdefb6","color":"#333","borderRadius":"8px","borderWidth":"1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="xueshengxingming" name="xueshengxingming" placeholder="请输入学生姓名" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>密码：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 12px 0px #c5f1c0","outline":"none","borderColor":"#bdefb6","color":"#333","borderRadius":"8px","borderWidth":"1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
                <div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
                    <div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>确认密码：</div>
                    <input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 12px 0px #c5f1c0","outline":"none","borderColor":"#bdefb6","color":"#333","borderRadius":"8px","borderWidth":"1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="password" name="mima2" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
				<div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","height":"auto"}' class="form-item">
					<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                    <div :style='{"alignItems":"center","display":"flex"}'>
						<img id="touxiangImg" :style='{"minHeight":"80px","width":"80px","margin":"0 10px 0 0","objectFit":"cover","height":"auto"}' src="../../img/avator.png">
						<input type="hidden" id="touxiang" name="touxiang" />
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#bdefb6","color":"#59B450","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="touxiangUpload">
							<i :style='{"color":"#59B450","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
                </div>
                <div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>性别：</div>
                    <select name="xingbie" id="xingbie" >
                        <option value="">请选择性别</option>
                        <option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
                    </select>
                </div>
                <div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>学校：</div>
                    <select name="xuexiao" id="xuexiao"  lay-filter="xuexiao">
                        <option value="">请选择学校</option>
                        <option v-for="(item,index) in xuexiao" v-bind:key="index" :value="item">{{item}}</option>
                    </select>
                </div>
                <div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>专业：</div>
                    <select name="zhuanye" id="zhuanye"  lay-filter="zhuanye">
                        <option value="">请选择专业</option>
                        <option v-for="(item,index) in zhuanye" v-bind:key="index" :value="item">{{item}}</option>
                    </select>
                </div>
				<div :style='{"width":"100%","padding":"0","margin":"0 auto 10px","position":"relative","height":"auto"}' class="form-item">
					<div v-if="true" :style='{"padding":"0 4px","color":"#333","left":"-130px","textAlign":"right","width":"130px","lineHeight":"44px","fontSize":"14px","position":"absolute"}'>联系电话：</div>
					<input :style='{"padding":"0 10px","boxShadow":"inset 0px 0px 12px 0px #c5f1c0","outline":"none","borderColor":"#bdefb6","color":"#333","borderRadius":"8px","borderWidth":"1px","width":"100%","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text"   id="lianxidianhua" name="lianxidianhua" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
				</div>

				<button :style='{"cursor":"pointer","padding":"0 10px","margin":"20px 20px 10px 0","borderColor":"#59B450","color":"#333","display":"block","outline":"none","borderRadius":"0px","background":"#c6ecc6","borderWidth":"4px 0","width":"110px","fontSize":"16px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
				<button :style='{"cursor":"pointer","padding":"0 10px","margin":"20px 0 10px","borderColor":"#999","color":"#333","display":"block","outline":"none","borderRadius":"0px","background":"#ddd","borderWidth":"4px 0","width":"110px","fontSize":"16px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a :style='{"cursor":"pointer","padding":"0","color":"#333","textAlign":"right","display":"inline-block","width":"100%","lineHeight":"1ppx","fontSize":"14px","textDecoration":"none"}' style="color: inherit;" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
        <script src="../../js/xm-select.js"></script>
				<script>
			var vue = new Vue({
			  el: '#register',
              data: {
                    xingbie : '男,女'.split(','),
                    xuexiao: [],
                    zhuanye: [],
              },
              updated: function() {
                  layui.form.render(null, 'myForm');
              },
			  methods: {
				
			  }
			});
			
            layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
                var layer = layui.layer;
                var element = layui.element;
                var carousel = layui.carousel;
                var http = layui.http;
                var jquery = layui.jquery;
                var form = layui.form;
                var upload = layui.upload;
                var laydate = layui.laydate;
				var tablename = http.getParam('tablename');

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
                http.request(`option/xuexiao/xuexiao`,'get',{},(res)=>{
                    vue.xuexiao = res.data
                });
				// 注册
				form.on('submit(register)', function(data) {
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
                    if(data.mima!=data.mima2) {
                        layer.msg('两次密码输入不一致', {
							time: 2000,
							icon: 5
                        });
                        return false
                    }
                    var url = tablename + '/register';
                    http.requestJson(url, 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});
			});
		</script>
	</body>
</html>
