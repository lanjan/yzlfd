<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<!--提示框-->
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
</head>
<body>
	<form action="api/ljylshangHu/${msg }.do" method="post" id="Form">
		<input type="hidden" name="changjianjibing_id" value="${pd.changjianjibing_id}"/>
		<div id="zhongxin">
		<table class="table table-striped table-bordered table-hover">
			<tr class="info">
				<td>
					<input type="text" name="jibing_name" id="jibing_name" placeholder="输入名称" value="${pd.jibing_name }"/>
				</td>
				<td>
					<input type="text" name="context" id="context" placeholder="输入介绍" value="${pd.context }"/>
				</td>
			</tr>
			<tr style="position: absolute;margin: 25px 0 0 60px;">
				<td style="text-align: center;">
					<a class="btn btn-mini btn-primary" onclick="save();" style="margin-right: 10px;">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><img src="static/images/jzx.gif" style="width: 50px;" /><br/><h4 class="lighter block green"></h4></div>
	</form>
<script type="text/javascript">
	$(top.hangge());
	$("#jibing_name").focus();
	//保存
	function save(){
		//判断联系电话是否合法
		if($("#jibing_name").val()==""){
			$("#jibing_name").tips({
				side:3,
	            msg:'请输入名称',
	            bg:'#AE81FF',
	            time:1.5
	        });
			$("#jibing_name").focus();
			return false;
		}
		//判断该疾病名称是否存在
		$.post('api/ljylshangHu/isNameOfJiBingExistence.do',{jibing_name:$("#jibing_name").val()},function(data){
			if(data.reqCode=="01"){
				//提交form表单
				$("#Form").submit();
			}else{
				$("#jibing_name").tips({
					side:3,
		            msg:'该名称已存在!',
		            bg:'#AE81FF',
		            time:1.5
		        });
				$("#jibing_name").focus();
			}
		});
	}
</script>
</body>
</html>