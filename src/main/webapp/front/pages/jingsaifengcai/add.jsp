<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #9dcde9;
						line-height: 40px;
						border-radius: 4px;
						outline: none;
						background: #eff8ee;
						width: 360px;
						border-width: 0 0 0px;
						border-style: dotted;
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"30px 7% 40px","margin":"0px auto","position":"relative","background":"rgba(255,255,255,.3)"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">竞赛名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.jingsaimingcheng" type="text" :readonly="ro.jingsaimingcheng" name="jingsaimingcheng" id="jingsaimingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">竞赛等级：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.jingsaidengji" type="text" :readonly="ro.jingsaidengji" name="jingsaidengji" id="jingsaidengji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">竞赛成绩：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.jingsaichengji" type="text" :readonly="ro.jingsaichengji" name="jingsaichengji" id="jingsaichengji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">获奖名次：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.huojiangmingci" type="text" :readonly="ro.huojiangmingci" name="huojiangmingci" id="huojiangmingci" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","textAlign":"right"}' class="label">获奖图片：</div>
						<img :style='{"width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"80px"}' v-if="detail.jingsaizuopin" id="jingsaizuopinImg" :src="baseurl+detail.jingsaizuopin">
						<input v-if="detail.jingsaizuopin" type="hidden" :value="detail.jingsaizuopin" id="jingsaizuopin" name="jingsaizuopin" />
						<button v-if="!ro.jingsaizuopin" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#9DDA97","color":"#59B450","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="jingsaizuopinUpload">
							<i :style='{"color":"#59B450","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传获奖图片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">获奖时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text" name="huojiangshijian" id="huojiangshijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.xuehao" type="text" :readonly="ro.xuehao" name="xuehao" id="xuehao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学生姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.xueshengxingming" type="text" :readonly="ro.xueshengxingming" name="xueshengxingming" id="xueshengxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学院：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.xueyuan" type="text" :readonly="ro.xueyuan" name="xueyuan" id="xueyuan" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"4px","background":"#fff","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">专业：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 0px","background":"#eff8ee","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.zhuanye" type="text" :readonly="ro.zhuanye" name="zhuanye" id="zhuanye" autocomplete="off" class="layui-input">
					</div>


					<div :style='{"alignItems":"center","margin":"0 0 0 110px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#111","minWidth":"80px","outline":"none","borderRadius":"0px","background":"#c6ecc6","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#333","minWidth":"80px","outline":"none","borderRadius":"0px","background":"#ddd","borderWidth":"4px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
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
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                        jingsaimingcheng : false,
                        jingsaidengji : false,
                        jingsaichengji : false,
                        huojiangmingci : false,
                        pingyu : false,
                        jingsaizuopin : false,
                        huojiangshijian : false,
                        xuehao : false,
                        xueshengxingming : false,
                        xueyuan : false,
                        zhuanye : false,
					},
                    detail: {
                        jingsaimingcheng: '',
                        jingsaidengji: '',
                        jingsaichengji: '',
                        huojiangmingci: '',
                        pingyu: '',
                        jingsaizuopin: '',
                        huojiangshijian: '',
                        xuehao: '',
                        xueshengxingming: '',
                        xueyuan: '',
                        zhuanye: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


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
				var jingsaizuopinUpload = upload.render({
					//绑定元素
					elem: '#jingsaizuopinUpload',
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
							jquery('#jingsaizuopin').val(url);
							jquery('#jingsaizuopinImg').attr('src', http.baseurl +url)
							vue.detail.jingsaizuopin = url;
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
				jquery('#huojiangshijian').val(getCurDate());
				laydate.render({
					elem: '#huojiangshijian',
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='xuehao'){
                                vue.detail['xuehao'] = data[`${key}`]
                                vue.ro.xuehao = true;
                                continue;
                        }
                        if(key=='xueshengxingming'){
                                vue.detail['xueshengxingming'] = data[`${key}`]
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(key=='xueyuan'){
                                vue.detail['xueyuan'] = data[`${key}`]
                                vue.ro.xueyuan = true;
                                continue;
                        }
                        if(key=='zhuanye'){
                                vue.detail['zhuanye'] = data[`${key}`]
                                vue.ro.zhuanye = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='jingsaimingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.jingsaimingcheng = true;
                                continue;
                        }
                        if(o=='jingsaidengji'){
                                vue.detail[o] = obj[o];
                                vue.ro.jingsaidengji = true;
                                continue;
                        }
                        if(o=='jingsaichengji'){
                                vue.detail[o] = obj[o];
                                vue.ro.jingsaichengji = true;
                                continue;
                        }
                        if(o=='huojiangmingci'){
                                vue.detail[o] = obj[o];
                                vue.ro.huojiangmingci = true;
                                continue;
                        }
                        if(o=='pingyu'){
                                vue.detail[o] = obj[o];
                                vue.ro.pingyu = true;
                                continue;
                        }
                        if(o=='jingsaizuopin'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.jingsaizuopin = true;
                                continue;
                        }
                        if(o=='huojiangshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.huojiangshijian = true;
                                jquery('#huojiangshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='xuehao'){
                                vue.detail[o] = obj[o];
                                vue.ro.xuehao = true;
                                continue;
                        }
                        if(o=='xueshengxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(o=='xueyuan'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueyuan = true;
                                continue;
                        }
                        if(o=='zhuanye'){
                                vue.detail[o] = obj[o];
                                vue.ro.zhuanye = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.jingsaichengji){
                        layer.msg('竞赛成绩不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.jingsaichengji)){
                        layer.msg('竞赛成绩应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.huojiangmingci){
                        layer.msg('获奖名次不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.huojiangmingci)){
                        layer.msg('获奖名次应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.pingyu){
                        layer.msg('评语不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('jingsaifengcai/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('jingsaifengcai' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('jingsaifengcai' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
