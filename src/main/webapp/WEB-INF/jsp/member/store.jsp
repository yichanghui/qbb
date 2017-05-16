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
		<link rel="stylesheet" type="text/css" href="../css/store.css" />
		<script type="text/javascript" src="../js/layui.js"></script>
		<script type="text/javascript" src="../js/scrooll.js"></script>
		<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
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
						<p>账户余额：<span>0 <button>[ 充值 ]</button></span></p>
						<p>消费总额：<span>0 元</span></p>
					</div>
				</div>
				<div class="user_right">
					<p>显示姓名 : 【 <span>开启</span> 】<button>预览</button></p>
					<p>店铺状态  :  &nbsp;&nbsp;<span>审核通过</span><button>修改</button></p>
					<p>店铺店址 ： http//iz.sdai.com/guwen/23076 <button>查看</button></p>
					<p>个人介绍 ： <span>${member.description}</span><button>修改简历</button></p>
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
			<div class="product">
			<%--	<div class="layui-form" id="dataMsg"></div>--%>
			</div>
			<!--members-->
			<div class="clear"></div>

		</div>
		<!--content-->
		
		<!--页脚-->
		<div class="bottomCss">
			<div class="content">
				<div class="footLogo">
					<div class="bottomNav">
						<a href="index.html" title="网站首页">网站首页</a>
						<a href="company.html" title="公司概况">公司概况</a>
						<a href="product.html" title="产品介绍">产品介绍</a>
						<a href="contact.html" title="联系方式">联系方式</a>
						<a class="clear"></a>
					</div>
					<div class="app">
						<div class="erweima">
							<img style="width: 110px;" src="http://www.mdtz2133.com/images/link/kwx.jpg"><span>客服微信</span>
						</div>
						<div class="erweima">
							<img style="width: 110px;" src="http://www.mdtz2133.com/images/link/erweima.png"><span>公从号</span>
						</div>
						<div class="clear"></div>
					</div>
					<div class="kefuPhone">
						<span>客服热线（工作日：8:30-21:00）</span>
						<strong>020-61059612</strong>
						<span>在线客服咨询请点击右侧浮窗</span>
						<span>在线客服（工作日：8:30-21:00）</span>

					</div>
					<div class="clear"></div>
				</div>
				<!--footLogo-->
				<div class="footBottom">
					<p class="copyright">版权所有 © 中讯担保</p>
					<p class="copy-info">Copyright © 2015-2018 Zhong Xun Dan Bao Tou Zi Zi Xun You Xian Gong Si </p>
					<p class="copy-num">粤ICP备16125363号-1</p>
					<a id="szfw_logo" href="https://credit.szfw.org/CX20160510015126120135.html" target="_blank"></a>
				</div>
			</div>
			<!--content-->
		</div>
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
                                cont: 'productPager', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
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