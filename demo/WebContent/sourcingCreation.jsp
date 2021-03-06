﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>寻源项目创建界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">创建寻源项目</a>
				<div class="right">
					<button class="btn-b">创建</button>
					<button class="btn-w"
						onclick="window.location.href='sourcingSearching.jsp'">取消</button>
				</div>
			</div>
			<div id="order-detail-main">
				<div>
					<div id="order-detail-line2">
						<a class="black">要创建一个寻源项目，请指定下述字段。用于构建您的寻源项目的模版将显示在该页底部。可用模版可能会因您输入的项目属性而异。</a>
					</div>
					<div class="inline-b" id="contract-crea-tab">
						<table>
							<tr>
								<td class="contract-tab-col1">名称：</td>
								<td class="contract-tab-col2"><input
									class="form-control input" /></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">说明：</td>
								<td class="contract-tab-col2"><textarea
										class="form-control" id="pr-textarea"></textarea></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">从项目复制：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>（无值）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">项目：</td>
								<td class="contract-tab-col2">
									<div class="radio">
										<label><input type="radio" name="multiple"
											id="optionsRadios1" value="option1" checked>完整项目</label> <label><input
											type="radio" name="multiple" id="optionsRadios2"
											value="option2">快速项目</label>
									</div>
								</td>
							</tr>

							<tr>
								<td class="contract-tab-col1">项目状态：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>已激活</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">＊测试项目：</td>
								<td class="contract-tab-col2">
									<div class="radio">
										<label><input type="radio" name="test"
											id="optionsRadios1" value="option1" checked>是</label> <label><input
											type="radio" name="test" id="optionsRadios2" value="option2">否</label>
									</div>
								</td>
							</tr>

							<tr>
								<td class="contract-tab-col1">基本语言：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>中文（中国）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">＊地区：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>（无值）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">＊部门：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>（无值）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">资源提供者：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>无选择</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">项目原因：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>无选择</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">预计花费：</td>
								<td class="contract-tab-col2"><input
									class="form-control input" />USD</td>
							</tr>

							<tr>
								<td class="contract-tab-col1">节省目标百分比：</td>
								<td class="contract-tab-col2"><input
									class="form-control input" /></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">前一相关项目：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>（无值）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>

							<tr>
								<td class="contract-tab-col1">Approved Sourcing Method：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>Competitive Evaluation</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>
						</table>
					</div>
					<div class="inline-b" id="contract-crea-tab">
						<table>
							<tr>
								<td class="contract-tab-col1">所有者：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>＊＊＊</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">货币：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>人民币</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">商品：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>（无值）</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">执行策略：</td>
								<td class="contract-tab-col2"><select id="my-select">
										<option>无选择</option>
										<option>选项1</option>
										<option>选项2</option>
								</select></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">合同月数：</td>
								<td class="contract-tab-col2"><input
									class="form-control input" /></td>
							</tr>
							<tr>
								<td class="contract-tab-col1">合同生效日期：</td>
								<td class="contract-tab-col2"><input
									class="form-control input" /></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="invoice-detail-title">
					<a class="black">选择模版</a>
				</div>
				<a class="black">请选择您要使用的模版，并回答与之相关的所有问题，以便创建您的项目。以上区段的字段设置值将对可用模版产生影响。</a>
				<div class="radio">
					<label><input type="radio" name="multiple"
						id="optionsRadios1" value="option1" checked>寻源过程模版</label>
					<div id="sourcing-contract-choice">
						<table id="sourcing-contract">
							<tr>
								<td class="sourcing-contract-col1">您是否要创建RFI?</td>
								<td class="sourcing-contract-col2"><select id="my-select">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr>
								<td class="sourcing-contract-col1">您是否要创建RFP?</td>
								<td class="sourcing-contract-col2"><select id="my-select">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr>
								<td class="sourcing-contract-col1">您是否要创建Auction?</td>
								<td class="sourcing-contract-col2"><select id="my-select">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr>
								<td class="sourcing-contract-col1">您是来自GCM团队还是授权团队?</td>
								<td class="sourcing-contract-col2"><select id="my-select">
										<option>GCM</option>
										<option>授权团队</option>
								</select></td>
							</tr>
						</table>
					</div>
					<label><input type="radio" name="multiple"
						id="optionsRadios2" value="option2">快速项目</label>
				</div>



				<div class="choice">
					<div class="right">
						<button class="btn-b">创建</button>
						<button class="btn-w">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
		<%@ include file="other/footer.jsp"%>
	</div>

	
</body>
</html>
