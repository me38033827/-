﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单详情界面-收据</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">10000081</a> <a
				class="right inline-b black f-18">状态：已接收</a>
		</div>
		<div id="order-detail-main">

			<div id="order-detail-line2">
				<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
			</div>
			<div id="order-detail-line3">
				<button class="btn-w">关闭</button>
				<button class="btn-w">打印</button>
				<button class="btn-w">创建预付款</button>
			</div>
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetail.jsp'">摘要</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailApproval.jsp'">审批流程</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailDelivery.jsp'">物流</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailGoodsReceipt.jsp'">收货</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailReceipt.jsp'">收据</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailInvoice.jsp'">发票</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='orderDetailPayment.jsp'">付款</button>
				<button class="order-detail-clicked">历史记录</button>
			</div>
			<div id="order-receipt-title-out">
				<a id="order-receipt-title">历史记录</a>
			</div>
			<div id="order-tab4-out">
				<table>
					<tr id="order-tab4-row1">
						<td>日期</td>
						<td>用户</td>
						<td>实际用户</td>
						<td>操作</td>
						<td>摘要</td>
					</tr>
					<tr id="order-tab4-row2">
						<td>2017年7月26日（星期一）12:32</td>
						<td>用户1</td>
						<td></td>
						<td>订购</td>
						<td>订单10000081已成功地通过Ariba Network发送给UAT_E213:UAT_WN12</td>
					</tr>
					<tr id="order-tab4-row2">
						<td>2017年7月26日（星期一）12:32</td>
						<td>用户1</td>
						<td></td>
						<td>订购</td>
						<td>订单10000081已成功地抄送给ERP系统</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="other/footer.jsp"%>

	
</body>
</html>
