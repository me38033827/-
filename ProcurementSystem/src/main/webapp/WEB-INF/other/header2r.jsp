<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<!-- 导航栏：第二行-->
<div class="btn-group secondline" role="group">
	<button type="button"
		class="btn btn-default dropdown-toggle" id="secondline-right-title"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		创建&nbsp;<span class="caret"></span>
	</button>
	<ul class="dropdown-menu my-dropdown">
		<li><a class="secondline-right" href="sourcingCreation.jsp">寻源项目</a></li>
		<li><a class="secondline-right" href="supplier/supplierCreation">供应商</a></li>
		<li><a class="secondline-right" href="supplier/sqmCreation?action=initial">供应商资格</a></li>
		<li><a class="secondline-right" href="supplier/spmCreation?action=initial">供应商绩效</a></li>
		<li><a class="secondline-right"
			href="contractWorkspaceCreation.jsp">合同</a></li>
		<li><a class="secondline-right"
			href="/ProcurementSystem/buyer/commodityCatalog/commodityCatalogCreate">商品目录</a></li>
		<li><a class="secondline-right" href="prCreation.jsp">请购单</a></li>
		<li><a class="secondline-right" href="invoiceCreation.jsp">发票</a></li>
		<li><a class="secondline-right" href="templateCreation.jsp">模版</a></li>
		<li><a class="secondline-right" href="approvalCreation.jsp">审批</a></li>
	</ul>
</div>

<!-- 第二行靠右 -->
<div class="btn-group secondline" role="group">
	<button type="button"
		class="btn btn-default dropdown-toggle" id="secondline-right-title"
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		管理&nbsp;<span class="caret"></span>
	</button>
	<ul class="dropdown-menu" id="secondline-dropright">
		<li><a class="secondline-right" href="sourcingSearching.jsp">在线寻源</a></li>
		<li><a class="secondline-right" href="supplierSearching.jsp">供应商管理</a></li>
		<li><a class="secondline-right" href="supplier/supplierInformationManagement">供应商信息</a></li>
		<li><a class="secondline-right" href="supplier/spmSearching?action=initial">供应商绩效</a></li>
		<li><a class="secondline-right" href="supplier/sqmSearching?action=initial">供应商资格</a></li>
		<li><a class="secondline-right" href="contractSearching.jsp">合同管理</a></li>
		<li><a class="secondline-right"
			href="/ProcurementSystem/buyer/commodityCatalog/commodityCatalogList">商品目录</a></li>
		<li><a class="secondline-right" href="orderSearching.jsp">订单协同</a></li>
		<li><a class="secondline-right" href="receiptSearching.jsp">收\发货协同</a></li>
		<li><a class="secondline-right" href="deliverySearching.jsp">物流管理</a></li>
		<li><a class="secondline-right" href="invoiceSearching.jsp">发票管理</a></li>
		<li><a class="secondline-right" href="paymentSearching.jsp">支付管理</a></li>
		<li><a class="secondline-right" href="userSearching.jsp">用户管理</a></li>
		<li><a class="secondline-right" href="templateDetailDoc.jsp">模版管理</a></li>
		<li><a class="secondline-right" href="approvalSearching.jsp">审批管理</a></li>
	</ul>
</div>
