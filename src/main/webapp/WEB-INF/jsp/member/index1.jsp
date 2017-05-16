<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName();
%>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<title>首页</title>
		<link rel="shortcut icon" href="../images/icon/qibaba.icon">
		<link rel="stylesheet" type="text/css" href="../css/base.css" />
		<link rel="stylesheet" type="text/css" href="../css/public.css" />
		<link rel="stylesheet" type="text/css" href="../css/Home page.css" />
		<link rel="stylesheet" href="../plugins/layui/css/layui.css"  media="all">

		<script type="text/javascript" src="../js/scrooll.js"></script>
		<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
	</head>
	<body>
		<!--头部-->
		<div class="content">
			<div class="logo-box">
				<a href="http://qbb.open580.com/product/toSearch.html"><img src="../images/logo_h.png"></a>
			</div>
			<div class="box_list">
				<ul>
					<li>
						<a href="">首页</a>丨</li>
					<li>
						<a href="">13114171314</a>丨</li>
					<li>
						<a href="">消息</a>丨</li>
					<li>
						<a href="">服务中心</a>丨</li>
					<li>
						<a href="">退出</a>
					</li>
				</ul>
			</div>
			<!--box_list-->
			<div class="clear"></div>
		</div>
		<!--content-->
		<div class="xian">
			<div class="content">
				<ul id="menu">
					<li class="hover">
						<a href="member/index.html">首页</a>
					</li>
					<li>
						<a href="management.html">推广管理</a>
					</li>
					<li >
						<a href="store.html">我的店铺</a>
					</li>
					<li>
						<a href="personal data.html">我的资料</a>
					</li>
					<li >
						<a href="cooperation.html">企巴巴同业合作</a>
					</li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
		<!--xian-->
		<div class="content">
			<div class="details">
				<div class="data">
					<div class="tuxiang">
						<img src="${member.headPortrait}" />
						<p><button>修改头像</button></p>
					</div>
					<div class="personal">
						<p>${member.name}</p>
						<p>所属公司： <span>${member.companyName}</span> <button>[关联]</button></p>
						<p>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型： <span>金融服务</span></p>
						<p>个人介绍： <span>${member.description}</span></p>
						<p><button>[修改]</button></p>
					</div>
				</div><!--data-->
				<div class="promote">
					<div class="number">
						<p>今日查看次数： <span>50</span>次</p>
						<p>剩余查看数量： <span>10</span>次</p>
						<p>&nbsp;&nbsp;&nbsp;总查看数量： <span>50</span>次</p>
						<button>充值</button>
					</div>
					<div class="vip">
						<ul>
							<li>推广服务：</li>
							<li>白金广告</li>
							<li>钻石广告</li>
							<li>移动广告</li>
						</ul>
					</div>
					<p class="lianjie">推广链接：<%=basePath%>/register/reg/${member.inviteCode}.html<%--<button>点击复制</button>--%></p>
				</div><!--promote-->
				<p class="qibaba">好业务，让企巴巴给你推广</p>
			</div><!--details-->
			<div class="img_box">
				<img src="images/fuwu.jpg"/>
			</div>
			<div class="clear"></div>
			<div class="nav_a">
				<ul>
					<li><a href="">全部商机</a></li>
					<li><a href="">同业商机</a></li>
					<li><a href="">向我申请</a></li>
					<li><a href="">向我提问</a></li>
					<li><button>发布需求</button></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="tab_left">
				<h1 style="padding-bottom: 15px">需求推荐</h1>
				<div class="layui-form" id="dataMsg" >
				</div>
				<div id="pager"></div>



			</div><!--tab_left-->
			<div class="announcement">
				<p><span class="gong">公告</span><span class="gong">动态</span></p>
				<p><span>[公告] </span>诚信才能让企业路路通</p>
				<p><span>[公告] </span>诚信才能让企业路路通</p>
				<p><span>[公告] </span>诚信才能让企业路路通</p>
				<p><span>[公告] </span>诚信才能让企业路路通</p>
				<p><span>[公告] </span>诚信才能让企业路路通</p>
			</div>
			<div class="img_box2">
				<img src="images/service.jpg"/>
			</div>
			<div class="clear"></div>

			<div class="pane">
				<button>下一页</button>
				<span>1</span>
				<span>2</span>
				<span>3</span>
				<span>...</span>
				<span>10</span>
				<button>上一页</button>
			</div>
		</div><!--content-->

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
<script>
    $(function () {

        var keyword = "${keyword}";

        $("#keyword").val(keyword);
        var searchType = $("a[name='searchType']");
        searchType.removeClass("selectType");
        searchType.eq(1).addClass("selectType");
			alert("123");
        layui.use(['laypage', 'layer'], function(){
			alert("456");
            var laypage = layui.laypage
                ,layer = layui.layer;
            //以下将以jquery.ajax为例，演示一个异步分页
            var pageSize = 10; //每页显示条数

            function paging(curr){
                $.ajax({
                    type: "POST",
                    url: "/need/page1.html",
                    data: {
                        keyword:$("#keyword").val(),
                        areaCode:$("#areaVal").val(),
                        classCode:$("#categoryVal").val(),
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
            function selectStyle(thisObj) {
                thisObj.parent().parent().find("a").removeClass("allSelect");
                thisObj.addClass("allSelect");
            }
            $("#categorySearch a").click(function () {
                var thisObj = $(this);
                selectStyle(thisObj);
                $("#categoryVal").val(thisObj.attr("code"));
                paging();
            });

            $("#areaSearch a").click(function () {
                var thisObj = $(this);
                selectStyle(thisObj);
                $("#areaVal").val(thisObj.attr("code"));
                paging();
            });


        });

    });


</script>
</html>