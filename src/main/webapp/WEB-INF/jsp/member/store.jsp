<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String basePath = request.getScheme() + "://"
+ request.getServerName();
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>我的店铺</title>
		<jsp:include page="../common/css_c.jsp"></jsp:include>
		<script type="text/javascript" src="/js/jquery-1.9.1.js"></script>
		<link rel="stylesheet" type="text/css" href="/css/Store.css" />
		<script type="text/javascript" src="/plugins/layui/layui.js"></script>
		<script type="text/javascript" src="../js/scrooll.js"></script>

	</head>

	<body>
		<!--头部-->
		<jsp:include page="../common/top_c2.jsp"></jsp:include>
		<!--xian-->
		<div class="content">
			<div class="list">
				<ul>
					<li><p>店铺管理</p><p>Store&nbsp;managemengt</p></li>
					<li>
						<a href="#">店铺管理</a>
					</li>
					<li>
						<a href="#">产品管理</a>
					</li>
					<li>
						<a href="#">成功案例</a>
					</li>
					<li>
						<a href="#">关联企业</a>
					</li>
					<p class="p1">好业务，让企巴巴帮你推广</p>
				</ul>
			</div>
			<div class="user">
				<div class="user_left">
					<div class="img_box">
						<img src="${member.headPortrait}" />
						<%--<p><button>修改头像</button></p>--%>
					</div>
					<div class="text">
						<p>账户：<span>${member.name}</span></p>
						<p></p>
						<%--<p>账户余额：<span>0 <button>[ 充值 ]</button></span></p>--%>
						<%--<p>消费总额：<span>0 元</span></p>--%>
					</div>
				</div>
				<div class="user_right">
					<%--<p>显示姓名 : 【 <span>开启</span> 】<button>预览</button></p>--%>
					<p>店铺状态  :  &nbsp;&nbsp;
					<span>
						<c:if test="${member.checkStatus == 4}">
							审核通过
						</c:if>
						<c:if test="${member.checkStatus == 5}">
							审核失败
						</c:if>
						<c:if test="${member.checkStatus == 3}">
							审核中
						</c:if>
						<c:if test="${member.checkStatus == 0}">
							未审核
						</c:if>
					</span>
						<%--<button>修改</button>--%>
					</p>
					<p>店铺店址 ： <%=basePath%>/adviser/detail/${member.id}.html <button onclick="location.href='<%=basePath%>/adviser/detail/${member.id}.html'">查看</button></p>
					<p>个人介绍 ： <span>${member.description}</span><button  onclick="location.href='/member/toPersonalData.html'">修改简历</button></p>
				</div>
			</div>
			<!--user-->
			<div id="container">
				<div class="location">
					您当前位置：
					<a href="/index.html">企巴巴</a> &gt;&gt;
					<a href="javascript:void(0);" class="defaultCursor">个人中心</a> &gt;&gt;
					<a href="javascript:void(0);" class="defaultCursor">业务介绍</a>
				</div>
			</div>

				<!--container-->
				<div class="product" id="dataMsg">
				<%--	<div class="layui-form" id="dataMsg"></div>--%>
				</div>
				<div class="clear"></div>
				<div id="pager" style="width: 930px;margin-left: 8px;float: left;"></div>
			<div class="clear"></div>
			<!--members-->

		</div>
		<!--content-->
		
		<!--页脚-->
		<jsp:include page="../common/bottom.jsp"></jsp:include>
		<!--bottomCss-->
	</body>
	<script src="/plugins/layui/layui.js" charset="utf-8"></script>
	<script>
        $(function () {
            layui.use(['laypage', 'layer'], function(){
                var laypage = layui.laypage
                    ,layer = layui.layer;
                //以下将以jquery.ajax为例，演示一个异步分页
                var pageSize = 5;
                function paging(curr){
                    $.ajax({
                        type: "POST",
                        url: "/member/product/page.html",
                        data: {
                            currentPage :curr || 1,
                            pageSize : pageSize
                        },
                        success: function(data){
                            $("#dataMsg").html(data);
                            var totalPages = $("#totalPages").val();
                            //显示分页
                            laypage({
                                cont: 'pager', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                                pages: totalPages, //通过后台拿到的总页数
                                curr: curr || 1, //当前页
                                groups: 5 ,//连续显示分页数
                                jump: function(obj, first){ //触发分页后的回调
                                    if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                                        paging(obj.curr);
                                    }
                                }
                            });
                        }
                    });
                };
                //运行
                paging();
            });
        })
	</script>
</html>