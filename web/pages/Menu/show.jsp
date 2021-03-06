<%@page import="com.dispensary.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<link href="<c:url value="/styles/style.css"/>" type="text/css" rel="stylesheet">
	<title><%=Menu.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Menu/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Menu/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="menuId" id="menuId" value="%{model.menuId}"/>
	
		<table class="tablelist">
			<tr>	
				<td class="tdLabel"><%=Menu.ALIAS_MENU_NAME%></td>	
				<td><s:property value='%{model.menuName}'/>&nbsp;</td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Menu.ALIAS_MENU_URL%></td>	
				<td><s:property value='%{model.menuUrl}'/>&nbsp;</td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Menu.ALIAS_PARENT%></td>	
				<td><s:property value='%{model.parent}'/>&nbsp;</td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Menu.ALIAS_MENU_NO%></td>	
				<td><s:property value='%{model.menuNo}'/>&nbsp;</td>
			</tr>
		</table>
	</s:form>
	<script>
		$(function(){
			$("tr:odd").addClass("odd");
			$("tr:even").addClass("even");
		});
	</script>
</rapid:override>


<%@ include file="base.jsp" %>