﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>购物车结算界面</title>
		<%@ include file = "../../other/header1.jsp"%>
		<%@ include file = "../../other/header2.jsp"%>
		
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			
			<!-- 标题及导航栏第一行 -->
			<div class="container" id="firstline-out" >
				<div class="navbar navbar-inverse set-radius-zero" id="firstline">
					<a id="page-name">LOGO</a>
				
					<!-- 首行靠右导航栏 -->
					<div class="right-div">
						<span class="glyphicon glyphicon-search" aria-hidden="true" id="firstline-search"></span>
						<span class="glyphicon glyphicon-print" aria-hidden="true" id="firstline-print"></span>
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
						<button type="button" class="btn btn-default dropdown-toggle" id="secondline-right-title" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    	创建&nbsp;<span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu" id="secondline-dropright">
					    	<li><a class="secondline-right" href="#">寻源项目</a></li>
					    	<li><a class="secondline-right" href="#">供应商</a></li>
					    	<li><a class="secondline-right" href="#">合同</a></li>
					    	<li><a class="secondline-right" href="#">商品目录</a></li>
					    	<li><a class="secondline-right" href="#">请购单</a></li>
					    	<li><a class="secondline-right" href="#">发票</a></li>
					    </ul>
					</div>
					
					<!-- 第二行靠右 -->
					<div class="btn-group secondline" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" id="secondline-right-title" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    	管理&nbsp;<span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu" id="secondline-dropright">
					    	<li><a class="secondline-right" href="#">在线寻源</a></li>
					    	<li><a class="secondline-right" href="#">供应商管理</a></li>
					    	<li><a class="secondline-right" href="#">合同管理</a></li>
					    	<li><a class="secondline-right" href="#">商品目录</a></li>
					    	<li><a class="secondline-right" href="#">订单协同</a></li>
					    	<li><a class="secondline-right" href="#">收\发货协同</a></li>
					    	<li><a class="secondline-right" href="#">物流管理</a></li>
					    	<li><a class="secondline-right" href="#">发票管理</a></li>
					    	<li><a class="secondline-right" href="#">支付管理</a></li>
					    </ul>
					</div>	
				</div>
			</div>
			
			<!-- 主要内容开始 -->
			<div class="settlement-line1">
				<a id="settlement-line1-font">PR19723：</a>
				<div id="settlement-line1-right">
					<button class="continue-shopping">继续购物</button>
					<button class="settle" >结账</button>
				</div>
			</div>
			
			<!-- 购物车内商品 -->
			<div class="settlement-line2">
				<div id="settlement-line2-left">
								
					<!-- 购物车内商品列表 -->
					<div class="table-responsive" id="settlement-catalog">
                    	<table class="table table-striped">
                        	<thead>	
                        		<tr>
                        			<td colspan="10"><a id="settlement-line2-left-left">总共1个项目</a></td>
                        			<td colspan="2"><a id="settlement-line2-left-right">显示详细信息</a></td>
                        		</tr>
                        	</thead>
                        	<tr>
	                        	<td></td>
	                       		<td>编号</td>
	                     		<td>类型</td>
	                     		<td>说明</td>
	                        	<td>数量</td>
	                        	<td>单位</td>
	                        	<td>价格</td>
	                        	<td>折扣</td>
	                        	<td>净额</td>
	                        	<td>费用</td>
	                        	<td>税款</td>
	                        	<td>金额</td>
	                        </tr>
                            <tr>
                            	<td>
	                        		<label>
								    	<input type="checkbox">
								    </label>
							    </td>
                            	<td>1</td>
                            	<td>类型1</td>
                            	<td>说明1</td>
                            	<td><input class="settlement-amount" value="1"/></td>
                            	<td>件</td>
                            	<td>¥656.66</td>
                            	<td>¥0.00</td>
                            	<td>¥656.66</td>
                            	<td>¥0.00</td>
                            	<td>¥0.00</td>
                            	<td>¥656.66</td>
                            	
                            </tr>
                            <tr>
                            	<td colspan = "2"><button class="delete-items">删除</button></td>
                            	<td colspan = "8"></td>
                            	<td colspan = "2"><button class="update-items">更新总计</button></td>
                            </tr>
						</table>
					</div>
				</div>
			
				<!-- 购物车摘要 -->	
				<div id="settlement-line2-right">
					<table id="shopping-cart-abstract">
						<tr id="abstract-line1">
							<td class="settlement-tab2-col1">购物车摘要</td>
							<td class="settlement-tab2-col2"></td>
						</tr>
						
						<tr id="abstract-line2">
							<td class="settlement-tab2-col1">产品1</td>
							<td class="settlement-tab2-col2"><a>¥656.66</a></td>
						</tr>
						<tr id="abstract-line3">
							<td class="settlement-tab2-col1">折扣</td>
							<td class="settlement-tab2-col2">¥0.00</td>
						</tr>
						<tr id="abstract-line4">
							<td class="settlement-tab2-col1">小计（1个项目）</td>
							<td class="settlement-tab2-col2">¥656.66</td>
						</tr>
					</table>
				</div>		
			</div>
			
			
			<div class="settlement-line3">
					<div id="settlement-line3-right">
						<button class="continue-shopping">继续购物</button>
						<button class="settle" >结账</button>
					</div>
			</div>
		</div>
		 <!-- CONTENT-WRAPPER SECTION END-->
		<div class="footer">
			Copyright &copy;2017 All rights reserved.
		</div>
		
		
		<!-- CORE JQUERY  -->
		<script src="assets/js/jquery-1.10.2.js"></script>
		<!-- BOOTSTRAP SCRIPTS  -->
		<script src="assets/js/bootstrap.js"></script>
		  <!-- CUSTOM SCRIPTS  -->
		<script src="assets/js/custom.js"></script>
	</body>
</html>
