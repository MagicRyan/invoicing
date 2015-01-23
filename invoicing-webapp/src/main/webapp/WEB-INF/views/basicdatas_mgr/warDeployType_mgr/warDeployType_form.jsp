<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 引入国际化标签 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="warDeployType_mgr_warDeployType_form" method="POST" modelAttribute="parameterCredit" style="padding:15px" enctype="multipart/form-data">
	<table class="formtable">
		<tr>
			<td>调拨类型名称：</td>
			<td>
				<input type="hidden" name="deployTypeId" value="${warDeployTypeDate.deployTypeId}" />
				<input name="deployTypeName"  class="easyui-validatebox spinner" style="width:168px;height: 18px;" required="true" value="${warDeployTypeDate.deployTypeName}"/>
			</td>
		</tr>
		<tr>
			<td>序号：</td>
			<td><input maxlength="3" name="orderNum" class="easyui-numberspinner spinner" value="${warDeployTypeDate.orderNum}" data-options="min:0,max:999,required:true,missingMessage:'只能输入整数'" style="width:170px;height: 18px;"/></td>
		</tr>
		<tr>
			<td>状态：</td>
			<td><input id="warDeployType_from_enabled" name="enabled" style="width:168px;height: 18px;" value="${warDeployTypeDate.enabled}"  class="easyui-combobox" data-options="valueField:'value',textField : 'label',panelHeight : 'auto',editable : false,required:true,data : fields.status"/></td>
		</tr>
	</table>
</form>