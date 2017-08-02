﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>用户组详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 标题及导航栏第一行 -->
		<div class="container" id="firstline-out">
			<div class="navbar navbar-inverse set-radius-zero" id="firstline">
				<a id="page-name" class="left">LOGO</a>

				<!-- 首行靠右导航栏 -->
				<div class="right" id="right-div">
					<button id="firstline-icon">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							id="firstline-search"></span>
					</button>
					<button id="firstline-icon">
						<span class="glyphicon glyphicon-print" aria-hidden="true"
							id="firstline-print"></span>
					</button>
					<button id="firstline-help">帮助</button>
					<button id="firstline-user">用户：ariba</button>
				</div>
			</div>
		</div>

		<!-- 导航栏：第二行-->
		<div class="container" id="secondline-out">
			<div class="dropdown" id="secondline-dropdown">
				<!-- 第二行靠左 -->
				<button class="secondline-left">首页</button>
				<button class="secondline-left">采购</button>
				<button class="secondline-left">发票</button>
				<button class="secondline-left">目录</button>

				<div class="btn-group secondline" role="group">
					<button type="button" class="btn btn-default dropdown-toggle"
						id="secondline-right-title" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						创建&nbsp;<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="secondline-dropright">
						<li><a class="secondline-right" href="sourcing-creation.html">寻源项目</a></li>
						<li><a class="secondline-right" href="supplier-creation.html">供应商</a></li>
						<li><a class="secondline-right"
							href="contract-workspace-creation.html">合同</a></li>
						<li><a class="secondline-right"
							href="procurement-catalog-creation.html">商品目录</a></li>
						<li><a class="secondline-right" href="pr-creation.html">请购单</a></li>
						<li><a class="secondline-right" href="invoice-creation.html">发票</a></li>
						<li><a class="secondline-right" href="template-creation.html">模版</a></li>
						<li><a class="secondline-right" href="approval-creation.html">审批</a></li>
					</ul>
				</div>

				<!-- 第二行靠右 -->
				<div class="btn-group secondline" role="group">
					<button type="button" class="btn btn-default dropdown-toggle"
						id="secondline-right-title" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						管理&nbsp;<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="secondline-dropright">
						<li><a class="secondline-right"
							href="sourcing-searching.html">在线寻源</a></li>
						<li><a class="secondline-right"
							href="supplier-searching.html">供应商管理</a></li>
						<li><a class="secondline-right"
							href="contract-searching.html">合同管理</a></li>
						<li><a class="secondline-right"
							href="procurement-commodity-catalog.html">商品目录</a></li>
						<li><a class="secondline-right" href="order-searching.html">订单协同</a></li>
						<li><a class="secondline-right" href="receipt-searching.html">收\发货协同</a></li>
						<li><a class="secondline-right"
							href="delivery-searching.html">物流管理</a></li>
						<li><a class="secondline-right" href="invoice-searching.html">发票管理</a></li>
						<li><a class="secondline-right" href="payment-searching.html">支付管理</a></li>
						<li><a class="secondline-right" href="user-searching.html">用户管理</a></li>
						<li><a class="secondline-right"
							href="template-detail-doc.html">模版管理</a></li>
						<li><a class="secondline-right"
							href="approval-searching.html">审批管理</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“0001组”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='user-group-searching1.html'">完成</button>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-clicked">常规</button>
					<button class="order-detail-not-clicked"
						onclick="window.location.href='user-group-detail-user.html'">用户</button>
					<button class="order-detail-not-clicked">子组</button>
				</div>

				<div class="adjust"></div>
				<div class="inline-b" id="user-detail-tab">
					<table>

						<tr>
							<td id="order-detail-tab-col1">定义者：</td>
							<td id="order-detail-tab-col2">管理者</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">唯一名称：</td>
							<td id="order-detail-tab-col2">0001</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">组名称：</td>
							<td id="order-detail-tab-col2">0001</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">说明：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All
			rights reserved.</div>
	</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
