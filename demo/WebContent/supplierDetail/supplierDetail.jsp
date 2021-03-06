﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../other/header1.jsp"%>
<title>供应商详情－概要</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
			<!-- 主要内容 -->
		
				<!-- supplier detail title -->
				<div class="p2p-supplier-title">
					<div class="left">
						<a class="p2p-supplier-title-main">惠普（北京）</a> <br>
						<a class="p2p-supplier-subtitle">供应商工作区</a>
					</div>
					
					<div class="right" id="supplier-detail-top">
						<table>
							<tr>
								<td class="text-right">任务：</td>
								<td>未完成的任务：4</td>
							</tr>
							<tr>
								<td class="text-right">当前阶段：</td>
								<td>初始阶段</td>
							</tr>
							<tr>
								<td class="text-right">下一里程碑：</td>
								<td>GCM创建新的供应商</td>
							</tr>
						</table>
					</div>
				</div>
			
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailSummary.jsp'">概述</button>
					<button class="tag-clicked"
						onclick="window.location.href='supplierDetail.jsp'">概要</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailReport.jsp'">报告</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailDoc.jsp'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTask.jsp'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTeam.jsp'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailInfo.jsp'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailNews.jsp'">事件消息</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailHistory.jsp'">历史记录</button>
				</div>
				
				<div class="adjust-10"></div>
	
				<div class="row">
					<div class="col-md-6">
						<div class="standard-subtitle">组织概要
							<div class="btn-group right">
								<button class="btn-ma" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="width:120px;">
									<li><a class="manu-deactive">编辑</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;概要</a></li>
									<li><a class="manu-deactive" >查看</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;组织标识符</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;厂商密钥</a></li>
									<li><a class="manu-deactive" >供应商集成</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;启用</a></li>
									<li><a class="manu-deactive" >更改审批状态</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;拒绝</a></li>
								</ul>
							</div>
						</div>
						<table class="tab-height" id="supplier-crea-tab1"  style="margin-left:80px;">
							<tr>
								<td class="col-standard1">组织名称：</td>
								<td class="col-standard2">惠普（北京）有限公司</td>
							</tr>
							<tr>
								<td class="col-standard1">供应商：</td>
								<td class="col-standard2">是</td>
							</tr>
							<tr>
								<td class="col-standard1">简短描述：</td>
								<td class="col-standard2">HP-BJ</td>
							</tr>
							<tr>
								<td class="col-standard1">创建人：</td>
								<td class="col-standard2">Chen Dingxuan</td>
							</tr>
							<tr>
								<td class="col-standard1">客户：</td>
								<td class="col-standard2">否</td>
							</tr>
							<tr>
								<td class="col-standard1">受管理：</td>
								<td class="col-standard2">是</td>
							</tr>
							<tr>
								<td class="col-standard1">审批状态：</td>
								<td class="col-standard2">已批准</td>
							</tr>
	
							<tr>
								<td class="col-standard1">其他名称1：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">其他名称2：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">公司地址：</td>
								<td class="col-standard2">北京市朝阳区东三环南路2号中国惠普大厦</td>
							</tr>
							<tr>
								<td class="col-standard1">法定全称：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">股票交易代码：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">全球位置码：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">税款标识符：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">州税款标识符：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">地区税款标识符：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">VAT标识符：</td>
								<td class="col-standard2"></td>
							</tr>
	
							<tr>
								<td class="col-standard1">免缴预扣税：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">总机：</td>
								<td class="col-standard2">57468233</td>
							</tr>
							<tr>
								<td class="col-standard1">主要电子邮件地址：</td>
								<td class="col-standard2">chendx@hp.com.cn</td>
							</tr>
							<tr>
								<td class="col-standard1">其他地址：</td>
								<td class="col-standard2">（无值）</td>
							</tr>
							<tr>
								<td class="col-standard1">供应的商品：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">批准的商品：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">商品(UNSPSC)：</td>
								<td class="col-standard2">（无值）</td>
							</tr>
							<tr>
								<td class="col-standard1">标识符：</td>
								<td class="col-standard2">SU0000134</td>
							</tr>
							<tr>
								<td class="col-standard1">DUNS：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">供应商集成状态：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">供应商系统名称：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">已阻止：</td>
								<td class="col-standard2"></td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">用户
									<div class="btn-group right">
									</div>
								</div>
								<div class="adjust-10"></div>
								<div>
									<table class="table table-hover">
										<tr class="standard-row1">
											<td style="padding:5px;">
												<input type="checkbox" id="chk-sup-de1" class="chk" /><label for="chk-sup-de1"></label>
											</td>
											<td>标识符</td>
											<td>名称</td>
											<td>电子邮件地址</td>
											<td>业务电话</td>
											<td>状态</td>
										</tr>
										<tr>
											<td style="padding:5px;">
												<input type="checkbox" id="chk-sup-de2" class="chk" /><label for="chk-sup-de2"></label>
											</td>
											<td>12036403</td>
											<td>Chen dingxuan</td>
											<td>chendx@hp.com.cn</td>
											<td></td>
											<td>已批准</td>
										</tr>
										<tr class="standard-row3">
											<td colspan="6">
												<a class="arrow-turn">&#8627;</a>
												<button class="btn-w">批准</button>
												<button class="btn-w">拒绝</button>
												｜
												<button class="btn-w">管理用户</button>
												<button class="btn-w">创建用户</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">业务联系人
								</div>
								<div class="adjust-10"></div>
								<div>
									<table class="table table-hover">
										<tr class="standard-row1">
											<td style="padding:5px;">
												<input type="checkbox" id="chk-sup-de3" class="chk" /><label for="chk-sup-de3"></label>
											</td>
											<td>名称</td>
											<td>电子邮件地址</td>
											<td>电话号码</td>
											<td>状态</td>
										</tr>
										<tr>
											<td colspan="5" class="no-item">无项目</td>
										</tr>
										<tr class="standard-row3">
											<td colspan="6">
												<a class="arrow-turn">&#8627;</a>
												<button class="btn-w">添加／删除</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="row">
					<div class="col-md-12">
						<div class="standard-subtitle">概要问卷
						</div>
							<div>
								<table class="fulltab">
									<tr class="standard-row1">
										<td style="width:75%;">名称</td>
										<td style="width:25%;">答案</td>
									</tr>
								</table>
							</div>
							<div class="roll-tab" style="max-height:240px;" id="question">
								<table class="table table-hover">
									<tr>
										<td class="question-1" style="width:75%;"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;1&nbsp;&nbsp;&nbsp;公司信息</b></td>
										<td style="width:25%;"></td>
									</tr>
									<tr>
										<td class="question-1-1">1.1&nbsp;&nbsp;&nbsp;&nbsp;公司名称</td>
										<td></td>
									</tr>
									<tr>
										<td class="question-1-1">1.2&nbsp;&nbsp;&nbsp;&nbsp;请简要介绍一下贵公司</td>
										<td></td>
									</tr>
									<tr>
										<td class="question-1-1">1.3&nbsp;&nbsp;&nbsp;&nbsp;贵公司创办于哪一年</td>
										<td></td>
									</tr>
									<tr>
										<td class="question-1"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;2&nbsp;&nbsp;&nbsp;所有权信息</b></td>
										<td></td>
									</tr>
									<tr>
										<td class="question-2"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;2.1&nbsp;&nbsp;&nbsp;妇女所有企业证书</b></td>
										<td></td>
									</tr>
									<tr>
										<td class="question-3">2.1.1&nbsp;&nbsp;&nbsp;妇女所有企业证书</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-2"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;2.2&nbsp;&nbsp;&nbsp;少数族裔所有企业证书</b></td>
										<td></td>
									</tr>
									<tr>
										<td class="question-3">2.2.1&nbsp;&nbsp;&nbsp;您是否通过少数族裔所有企业认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.2&nbsp;&nbsp;&nbsp;您是否通过 NMSDC（全国少数族裔供应商发展理事会）认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.3&nbsp;&nbsp;&nbsp;您是否通过小型企业管理认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.4&nbsp;&nbsp;&nbsp;您是否通过州政府认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.5&nbsp;&nbsp;&nbsp;您是否通过所在地/机构认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.6&nbsp;&nbsp;&nbsp;您是否为自我认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.7&nbsp;&nbsp;&nbsp;其他认证</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.2.8&nbsp;&nbsp;&nbsp;您是否通过环球国际认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-2"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;2.3&nbsp;&nbsp;&nbsp;小型企业证书</b></td>
										<td></td>
									</tr>
									<tr>
										<td class="question-3">2.3.1&nbsp;&nbsp;&nbsp;您是否通过小型企业认证？</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-2"><b><span class="glyphicon glyphicon-triangle-bottom blue f-12" aria-hidden="true"></span>
											&nbsp;2.4&nbsp;&nbsp;&nbsp;退伍军人所有企业证书</b></td>
										<td></td>
									</tr>
									<tr>
										<td class="question-3">2.4.1&nbsp;&nbsp;&nbsp;您是否通过退伍军人所有企业认证?</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.4.2&nbsp;&nbsp;&nbsp;您是否通过残疾退伍军人所有企业认证?</td>
										<td>否</td>
									</tr>
									<tr>
										<td class="question-3">2.4.3&nbsp;&nbsp;&nbsp;您是否通过越战退伍军人所有企业认证?</td>
										<td>否</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
		<%@ include file="../other/footer.jsp"%>

</body>
</html>
