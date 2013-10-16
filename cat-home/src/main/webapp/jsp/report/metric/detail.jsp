<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="metricOpNav.jsp" %>
    <div class="row-fluid">
      <div class="span2">
        <div class="well sidebar-nav">
          <ul class="nav nav-list">
          	 <li class='nav-header active' id="${item.id}"><a href="?op=dashboard&date=${model.date}&domain=${model.domain}"><strong>业务大盘</strong></a></li>
           <c:forEach var="item" items="${model.productLines}" varStatus="status">
             <li class='nav-header' id="${item.id}"><a href="?date=${model.date}&domain=${model.domain}&product=${item.id}"><strong>${item.title}</strong></a></li>
           </c:forEach>
            <li >&nbsp;</li>
          </ul>
        </div><!--/.well -->
      </div><!--/span-->
      <div class="span10">
      	<h4 class='text-center text-error'>说明：图中纵轴数据为10分钟数据之和</h4>
      	<c:forEach var="item" items="${model.lineCharts}" varStatus="status">
   			<div style="float:left;">
   				<div id="${item.title}" class="metricGraph"></div>
   			</div>
	</c:forEach>
 </div></div>