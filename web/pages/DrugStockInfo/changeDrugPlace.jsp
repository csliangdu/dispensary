<%@page import="com.dispensary.project.model.DrugStockInfo"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>修改药品位置</title>
  <meta name="description" content="修改药品位置页面">
  <meta name="keywords" content="form">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${ctx}/assets/css/amazeui.css"/>
  <link rel="stylesheet" href="${ctx}/assets/css/admin.css">
</head>
  
<body>
<div class="am-g am-g-collapse">
  <div class="am-u-lg-12"><jsp:include page="../head.jsp"/></div>
  <div class="am-u-lg-2"><jsp:include page="../menu.jsp"/></div>
  <div class="am-u-lg-10 ">
  	<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
		
		  <div class="am-cf am-padding">
		    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">药品位置</strong> / <small>编辑</small></div>
		  </div>
		
		  <div class="am-tabs am-margin" data-am-tabs="{noSwipe: 1}">
		    <ul class="am-tabs-nav am-nav am-nav-tabs">
		      <li><a href="#tab1">基本信息</a></li>
		    </ul>
		
		    <div class="am-tabs-bd">
		      <div class="am-tab-panel am-fade" id="tab1" >
		        <form id="changeForm" class="am-form" action="${ctx}/pages/DrugStockInfo/changeDrugPlace.do" method="post">
		          <input type="hidden" class="am-input-sm" name="id" value="${drugStockInfo.id }"  >
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-4 am-u-md-2 am-text-right am-padding-right">
		              	<%=DrugStockInfo.ALIAS_DRUG_ID%>
		            </div>
		            <div class="am-u-sm-8 am-u-md-4">
		              <input type="hidden" class="am-input-sm" name="drugId" value="${drugStockInfo.drugId }"  readonly="readonly">
		            	${drugStockInfo.drugIdModel.modelTagValue }
		            </div>
		            <div class="am-hide-sm-only am-u-md-6 am-padding-left"></div>
		          </div>
		
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-4 am-u-md-2 am-text-right am-padding-right">
		            	当前位置
		            </div>
		            <div class="am-u-sm-8 am-u-md-4 am-u-end">
		            	<!-- ${drugStockInfo.drugPlaceIdModel.modelTagValue } -->
		              <input type="text" class="am-input-sm" name="drugPlaceId" value="${drugStockInfo.drugPlaceId }" readonly="readonly">
		            </div>
		          </div>
				  <div class="am-g am-margin-top">
		            <div class="am-u-sm-4 am-u-md-2 am-text-right am-padding-right">
		            	转移位置
		            </div>
		            <div class="am-u-sm-8 am-u-md-4">
		            	<select name="changeDrugPlaceId">
			            	<s:iterator value="#attr.drugPlaceList" var="item">
			            		<option value='<s:property value="drugPlaceId"/>' ><s:property value="drugPlace"/></option>
			            	</s:iterator>
		            	</select>
		            </div>
		            <div class="am-hide-sm-only am-u-md-6 am-padding-left"></div>
		          </div>
				  
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-4 am-u-md-2 am-text-right am-padding-right">
		              	转移数量
		            </div>
		            <div class="am-u-sm-8 am-u-md-4">
		              <input type="number" class="am-input-sm" name="curAmount" id="curAmount" value="${drugStockInfo.curAmount }">
		            </div>
		            <div class="am-hide-sm-only am-u-md-6 am-padding-left" id="remain">剩余数量：</div>
		          </div>
	
			     <div class="am-margin">
			    	<button type="submit" class="am-btn am-btn-primary am-btn-xs" onclick="submit()">提交保存</button>
			    	<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="history.back()">放弃保存</button>
			  	</div>
		        </form>
		      </div>
		
		    </div>
		  </div>
		
		  
		</div>
		<!-- content end -->
	</div>
  </div>
</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${ctx}/assets/js/polyfill/rem.min.js"></script>
<script src="${ctx}/assets/js/polyfill/respond.min.js"></script>
<script src="${ctx}/assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="${ctx}/assets/js/app.js"></script>
<script type="text/javascript">
	var before=$("#curAmount").val();
	$("#curAmount").keyup(function(){
		var after=$("#curAmount").val();
		if(Number(after)>Number(before)){
			$("#remain").addClass("am-text-danger").text("数量超过当前位置已有数量");
		}else{
			$("#remain").removeClass("am-text-danger").text("当前数量："+(Number(before)-Number(after)));
		}
		
	});
	function submit(){
		var changeDrugPlaceId=$("#changeDrugPlaceId").val();
		$("#changeForm").attr("action","${ctx}/pages/DrugStockInfo/changeDrugPlace.do?changeDrugPlaceId"+changeDrugPlaceId);
	}

</script>
</body>
</html>

