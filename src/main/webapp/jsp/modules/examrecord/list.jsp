<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<!-- font-awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

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
			<h3 class="breadcrumb-title">考试记录管理</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>考试记录管理</span></li>
				<li class="breadcrumb-item-two"><span>考试记录列表</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="center-container">
			<div class="center-form">
				<div class="form-item">
					<label>模拟考试</label>
					<input type="text" id="papernameSearch" class="form-control form-control-sm" placeholder="模拟考试名称" aria-controls="tableId">
				</div>
				<button onclick="search()" type="button" class="btn btn-search btn-primary">查询</button>
			</div>
			<div class="btns">
				<button onclick="exportExcel()" type="button" class="btn btn-success btn-import 导出"><i class="fa fa-file-excel-o"></i><span>导出</span></button>
				<button onclick="printTable()" type="button" class="btn btn-success btn-print 打印" id="generate-excel"><i class="fa fa-print"></i><span>打印</span></button>
			</div>
			
			<!--startprint-->
			<table id="tableId" class="table table-bordered">
				<thead>
					<tr>
						<th class="no-sort" style="min-width: 35px;">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox"
									id="select-all" onclick="chooseAll()"> <label
									class="custom-control-label" for="select-all"></label>
							</div>
						</th>
						<th onclick="sort('username')">姓名<i id="usernameIcon"
							class="fa fa-sort"></i></th>
						<th onclick="sort('papername')">模拟考试<i id="papernameIcon"
							class="fa fa-sort"></i></th>
						<th onclick="sort('myscore')">总分<i id="scoreIcon"
							class="fa fa-sort"></i></th>
						<th>操作</th>	
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<!--endprint-->
			
			<iframe id="iframePrint" style="display: none"></iframe>
			
            <div id="pagination">
            	<div class="dataTables_length" id="tableId_length">
            		<select name="tableId_length" aria-controls="tableId" id="selectPageSize" onchange="changePageSize()">
            			<option value="10">10</option>
            			<option value="25">25</option>
            			<option value="50">50</option>
            			<option value="100">100</option>
            		</select> 
            		<span class="text">条每页</span>
            	</div>
            	<ul class="pagination">
            		<li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
            			<a class="page-link" href="#" tabindex="-1">上一页</a>
            		</li>
            		<li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
            			<a class="page-link" href="#">下一页</a>
            		</li>
            	</ul>
            </div>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/excel/excel-gen.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jszip.min.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/FileSaver.js"></script>
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script language="javascript" type="text/javascript"
		src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		
	<%@ include file="../../static/getRoleButtons.js"%>
		
	<%@ include file="../../static/crossBtnControl.js"%>
		var tableName = "examrecord";
		var pageType = "list";
		var searchForm = {
			key : ""
		};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder = '';
		var ids = [];
		var checkAll = false;

		function init() {
			// 满足条件渲染提醒接口
		}
		// 改变每页记录条数
		function changePageSize() {
			var selection = document.getElementById('selectPageSize');
			var index = selection.selectedIndex;
			pageSize = selection.options[index].value;
			getDataList();
		}
		//排序
		function sort(columnName) {
			var iconId = '#' + columnName + 'Icon'
			$('th i').attr('class', 'fa fa-sort');
			if (sortColumn == '' || sortColumn != columnName) {
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class', 'fa fa-sort-asc');
			}
			if (sortColumn == columnName) {
				if (sortOrder == 'asc') {
					sortOrder = 'desc';
					$(iconId).attr('class', 'fa fa-sort-desc');
				} else {
					sortOrder = 'asc';
					$(iconId).attr('class', 'fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}

		// 查询
		function search() {
			searchForm = {
				key : ""
			};
			if ($('#papernameSearch').val() != null
					&& $('#papernameSearch').val() != '') {
				searchForm.papername = "%" + $('#papernameSearch').val() + "%";
			}

			if ($('#questionnameSearch').val() != null
					&& $('#questionnameSearch').val() != '') {
				searchForm.questionname = "%"
						+ $('#questionnameSearch').val() + "%";
			}

			getDataList();
		}
        // 导出
        function exportExcel() { 
            excel = new ExcelGen({
                "src_id": "tableId",
                "show_header": true
            });
            excel.generate();
        }
        function printTable() {
            bdhtml=$("#tableDiv").html();
            sprnstr="<!--startprint-->";   //开始打印标识字符串有17个字符
            eprnstr="<!--endprint-->";        //结束打印标识字符串
            prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); //从开始打印标识之后的内容
            prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//截取开始标识和结束标识之间的内容
            var iframe = null;
            iframe = document.getElementById("iframePrint")
            var iwindow = null;
            var iwindow = iframe.contentWindow;//获取iframe的window对象
            iwindow.document.close();
            iwindow.document.write(prnhtml);
            iwindow.print(); //调用浏览器的打印功能打印指定区域
        }
		// 获取数据列表
		function getDataList() {
			$.ajax({
				type : "GET",
				url : baseUrl + "examrecord/groupby",
				data : {
					page : pageIndex,
					limit : pageSize,
					sort : sortColumn,
					order : sortOrder,
					papername : searchForm.papername,
				},
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					clear();
					if (res.code == 0) {
						dataList = res.data.list;
						totalPage = res.data.totalPage;
						//var tbody = document.getElementById('tbMain');
						for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
							var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
							$('tbody').append(trow);
						}
						pagination(); //渲染翻页组件
						getRoleButtons();// 权限按钮控制
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
						dataList = [];
						totalPage = 0;
					}
				},
			});
		}
		// 渲染表格数据
		function setDataRow(item, number) {
			//创建行 
			var row = document.createElement('tr');
			row.setAttribute('class', 'useOnce');
			//创建勾选框
			var checkbox = document.createElement('td');
			var checkboxDiv = document.createElement('div');
			checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
			var checkboxInput = document.createElement('input');
			checkboxInput.setAttribute("class", "custom-control-input");
			checkboxInput.setAttribute("type", "checkbox");
			checkboxInput.setAttribute('name', 'chk');
			checkboxInput.setAttribute('value', item.id);
			checkboxInput.setAttribute("id", number);
			checkboxDiv.appendChild(checkboxInput);
			var checkboxLabel = document.createElement('label');
			checkboxLabel.setAttribute("class", "custom-control-label");
			checkboxLabel.setAttribute("for", number);
			checkboxDiv.appendChild(checkboxLabel);
			checkbox.appendChild(checkboxDiv);
			row.appendChild(checkbox)

			var usernameCell = document.createElement('td');
			usernameCell.innerHTML = item.username;
			row.appendChild(usernameCell);
			
			var papernameCell = document.createElement('td');
			papernameCell.innerHTML = item.papername;
			row.appendChild(papernameCell);
			
			var scoreCell = document.createElement('td');
			scoreCell.innerHTML = item.myscore;
			row.appendChild(scoreCell);
			//每行按钮
			var btnGroup = document.createElement('td');
			//详情按钮
			var detailBtn = document.createElement('button');
			var detailAttr = 'detail(' +  item.paperid + ','+item.userid+')';
			detailBtn.setAttribute("type","button");
			detailBtn.setAttribute("class","btn btn-danger btn-sm 查看详情");
			detailBtn.setAttribute("onclick",detailAttr);
			detailBtn.innerHTML = "查看详情"
			btnGroup.appendChild(detailBtn)
			row.appendChild(btnGroup)

			return row;
		}


		// 翻页
		function pageNumChange(val) {
			if (val == 'pre') {
				pageIndex--;
			} else if (val == 'next') {
				pageIndex++;
			} else {
				pageIndex = val;
			}
			getDataList();
		}
	
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for (var i = 0; i < 3; i++) {
				if (endIndex == totalPage) {
					break;
				}
				endIndex++;
				point--;
			}
			for (var i = 0; i < 3; i++) {
				if (beginIndex == 1) {
					break;
				}
				beginIndex--;
				point--;
			}
			if (point > 0) {
				while (point > 0) {
					if (endIndex == totalPage) {
						break;
					}
					endIndex++;
					point--;
				}
				while (point > 0) {
					if (beginIndex == 1) {
						break;
					}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if (pageIndex > 1) {
				$('#tableId_previous').show();
			} else {
				$('#tableId_previous').hide();
			}
			// 渲染页码按钮
			for (var i = beginIndex; i <= endIndex; i++) {
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
				if (pageIndex == i) {
					pageNum.setAttribute('class',
							'paginate_button page-item active useOnce');
				} else {
					pageNum.setAttribute('class',
							'paginate_button page-item useOnce');
				}
				var pageHref = document.createElement('a');
				pageHref.setAttribute('class', 'page-link');
				pageHref.setAttribute('href', '#');
				pageHref.setAttribute('aria-controls', 'tableId');
				pageHref.setAttribute('data-dt-idx', i);
				pageHref.setAttribute('tabindex', 0);
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$('#tableId_next').before(pageNum);
			}
			// 是否显示 下一页 按钮
			if (pageIndex < totalPage) {
				$('#tableId_next').show();
				$('#tableId_next a').attr('data-dt-idx', endIndex + 1);
			} else {
				$('#tableId_next').hide();
			}
			var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
			$('#tableId_info').html(pageNumInfo);
		}
		// 跳转到指定页
		function toThatPage() {
			//var index = document.getElementById('pageIndexInput').value;
			if (index<0 || index>totalPage) {
				alert('请输入正确的页码');
			} else {
				pageNumChange(index);
			}
		}
		// 全选/全不选
		function chooseAll() {
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for (var i = 0; i < boxs.length; i++) {
				boxs[i].checked = checkAll;
			}
		}

		// 详情
        function detail(paperid,userid) {
            window.sessionStorage.setItem('paperid', paperid)
            window.sessionStorage.setItem('paperuserid', userid)
            window.location.href = "detail.jsp"
        }

		// 用户登出
	<%@ include file="../../static/logout.jsp"%>

		//清除会重复渲染的节点
		function clear() {
			var elements = document.getElementsByClassName('useOnce');
			for (var i = elements.length - 1; i >= 0; i--) {
				elements[i].parentNode.removeChild(elements[i]);
			}
		}

		//跨表

		$(document).ready(
				function() {
					//激活翻页按钮
					$('#tableId_previous').attr('class',
							'paginate_button page-item previous')
					$('#tableId_next').attr('class',
							'paginate_button page-item next')
					//隐藏原生搜索框
					$('#tableId_filter').hide()
					//设置右上角用户名
                    $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
					//设置项目名
					$('.sidebar-header h3 a').html(projectName)
					setMenu();
					init();
					getDataList();
					<%@ include file="../../static/myInfo.js"%>
				});
	</script>
</body>

</html>
