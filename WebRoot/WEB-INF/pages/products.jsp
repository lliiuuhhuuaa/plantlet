<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Custom Theme files -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- menu style -->
<link href="css/animate.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery/jquery.min.js"></script>
<script src="js/owl.carousel.js"></script>
<!-- //js -->
<!-- scroll to fixed-->
<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {

		// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

		$('.header-two').scrollToFixed();
		// previous summary up the page.

		var summaries = $('.summary');
		summaries.each(function(i) {
			var summary = $(summaries[i]);
			var next = summaries[i + 1];

			summary.scrollToFixed({
				marginTop : $('.header-two').outerHeight(true) + 10,
				zIndex : 999
			});
		});
	});
</script>
<!-- //scroll to fixed-->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
	$(function() {
		$('.scroll-pane').jScrollPane();
	});
</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<!-- the mousewheel plugin -->
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="#"><img src="img/logo.png" class="logo" /></a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i>我的账户<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<s:if test="#session.user!=null">
								<li><a href="#"><s:property
											value="#session.user.username" /></a></li>
								<li><a href="userLogout">注销</a></li>
								<li><a href="login.html">我的订单</a></li>
								<li><a href="login.html">钱包</a></li>
							</s:if>
							<s:else>
								<li><a href="loginUi">登陆</a></li>
							</s:else>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-cart-plus" aria-hidden="true"></i> 购物车<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">查看购物车</a></li>
							<li><a href="offers.html">清空购物车</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="card.html"
						class="dropdown-toggle"><i class="fa fa-star"
							aria-hidden="true"></i>收藏夹</a></li>
					<!-- <!-- <li class="dropdown head-dpdn"><a href="contact.html"
						class="dropdown-toggle"><i class="fa fa-map-marker"
							aria-hidden="true"></i>实体店</a></li> -->
					<li class="dropdown head-dpdn"><a href="card.html"
						class="dropdown-toggle"><i class="fa  fa-smile-o"
							aria-hidden="true"></i>联系客服</a></li>
					<li class="dropdown head-dpdn"><a href="help.html"
						class="dropdown-toggle"><i class="fa fa-question-circle"
							aria-hidden="true"></i> 帮助</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	<!-- //header -->
	<!-- products -->
	<div class="products" style="padding-top:0">
		<div class="container">
			<div class="col-md-9 product-w3ls-right">
				<!-- breadcrumbs -->
				<ol class="breadcrumb breadcrumb1">
					<li><a href="index.html">Home</a></li>
					<li class="active">Products</li>
				</ol>
				<div class="clearfix"></div>
				<!-- //breadcrumbs -->
				<div class="product-top">
					<h4>Electronics</h4>
					<ul>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">Filter By<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Low price</a></li>
								<li><a href="#">High price</a></li>
								<li><a href="#">Latest</a></li>
								<li><a href="#">Popular</a></li>
							</ul></li>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">Brands<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Samsung</a></li>
								<li><a href="#">LG</a></li>
								<li><a href="#">Sony</a></li>
								<li><a href="#">Other</a></li>
							</ul></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="products-row">
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									20%<br>Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e1.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Audio speaker</a>
								</h5>
								<h6>
									<del>$200</del>
									$100
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Audio speaker" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e2.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Refrigerator</a>
								</h5>
								<h6>
									<del>$700</del>
									$300
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Refrigerator" /> <input type="hidden"
										name="amount" value="300.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									5% <br> Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e3.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Smart Phone</a>
								</h5>
								<h6>
									<del>$100</del>
									$70
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Smart Phone" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e4.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Digital Camera</a>
								</h5>
								<h6>
									<del>$100</del>
									$80
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e4.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Digital Camera</a>
								</h5>
								<h6>
									<del>$100</del>
									$80
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									5% <br> Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e3.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Smart Phone</a>
								</h5>
								<h6>
									<del>$100</del>
									$70
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Smart Phone" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									20%<br>Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e1.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Audio speaker</a>
								</h5>
								<h6>
									<del>$200</del>
									$100
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Audio speaker" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e2.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Refrigerator</a>
								</h5>
								<h6>
									<del>$700</del>
									$300
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Refrigerator" /> <input type="hidden"
										name="amount" value="300.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									20%<br>Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e1.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Audio speaker</a>
								</h5>
								<h6>
									<del>$200</del>
									$100
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Audio speaker" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e2.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Refrigerator</a>
								</h5>
								<h6>
									<del>$700</del>
									$300
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Refrigerator" /> <input type="hidden"
										name="amount" value="300.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									5% <br> Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e3.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Smart Phone</a>
								</h5>
								<h6>
									<del>$100</del>
									$70
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Smart Phone" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e4.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Digital Camera</a>
								</h5>
								<h6>
									<del>$100</del>
									$80
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e4.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Digital Camera</a>
								</h5>
								<h6>
									<del>$100</del>
									$80
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									5% <br> Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e3.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Smart Phone</a>
								</h5>
								<h6>
									<del>$100</del>
									$70
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Smart Phone" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>
									20%<br>Off
								</h6>
							</div>
							<a href="single.html"><img src="img/e1.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Audio speaker</a>
								</h5>
								<h6>
									<del>$200</del>
									$100
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Audio speaker" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="single.html"><img src="img/e2.png"
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">Refrigerator</a>
								</h5>
								<h6>
									<del>$700</del>
									$300
								</h6>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Refrigerator" /> <input type="hidden"
										name="amount" value="300.00" />
									<button type="submit" class="w3ls-cart pw3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					<div class="slider-left">
						<h4>Filter By Price</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>0 - $100 </label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>$100 - $200 </label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200
								- $250 </label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>$250 - $300 </label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>$350
								- $400 </label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>$450 - $500 </label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label>
						</div>
					</div>
					<div class="sidebar-row">
						<h4>Electronics</h4>
						<ul class="faq">
							<li class="item1"><a href="#">Mobile phones<span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Smart phones</a></li>
									<li class="subitem1"><a href="#">Accessories</a></li>
									<li class="subitem1"><a href="#">Tabs</a></li>
								</ul></li>
							<li class="item2"><a href="#">Large appliances<span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Refrigerators </a></li>
									<li class="subitem1"><a href="#">Washing Machine </a></li>
									<li class="subitem1"><a href="#">Kitchen Appliances </a></li>
									<li class="subitem1"><a href="#">Air Conditioner</a></li>
								</ul></li>
							<li class="item3"><a href="#">Entertainment<span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#"> Tv & Accessories</a></li>
									<li class="subitem1"><a href="#">Digital Camera </a></li>
									<li class="subitem1"><a href="#">Computer</a></li>
								</ul></li>
						</ul>
						<!-- script for tabs -->
						<script type="text/javascript">
							$(function() {

								var menu_ul = $('.faq > li > ul'), menu_a = $('.faq > li > a');

								menu_ul.hide();

								menu_a
										.click(function(e) {
											e.preventDefault();
											if (!$(this).hasClass('active')) {
												menu_a.removeClass('active');
												menu_ul.filter(':visible')
														.slideUp('normal');
												$(this).addClass('active')
														.next()
														.stop(true, true)
														.slideDown('normal');
											} else {
												$(this).removeClass('active');
												$(this).next().stop(true, true)
														.slideUp('normal');
											}
										});

							});
						</script>
						<!-- script for tabs -->
					</div>
					<div class="sidebar-row">
						<h4>Color</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>White</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Gold</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Blue</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Orange</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i> Brown</label>
						</div>
					</div>
				</div>
				<div class="related-row">
					<h4>Related Searches</h4>
					<ul>
						<li><a href="products.html">Air conditioner </a></li>
						<li><a href="products.html">Gaming</a></li>
						<li><a href="products.html">Monitors</a></li>
						<li><a href="products.html">Pc </a></li>
						<li><a href="products.html">Food Processors</a></li>
						<li><a href="products.html">Oven</a></li>
						<li><a href="products.html">Purifiers</a></li>
						<li><a href="products.html">Oven</a></li>
						<li><a href="products.html">Cleaners</a></li>
						<li><a href="products.html">Small devices</a></li>
					</ul>
				</div>
				<div class="related-row">
					<h4>YOU MAY ALSO LIKE</h4>
					<div class="galry-like">
						<a href="single.html"><img src="img/e1.png"
							class="img-responsive" alt="img"></a>
						<h4>
							<a href="products.html">Audio speaker</a>
						</h4>
						<h5>$100</h5>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<!-- recommendations -->
			<div class="recommend">
				<h3 class="w3ls-title">Our Recommendations</h3>
				<script>
					$(document).ready(function() {
						$("#owl-demo5").owlCarousel({

							autoPlay : 3000, //Set AutoPlay to 3 seconds

							items : 4,
							itemsDesktop : [ 640, 5 ],
							itemsDesktopSmall : [ 414, 4 ],
							navigation : true

						});

					});
				</script>
				<div id="owl-demo5" class="owl-carousel">
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>
									20% <br> Off
								</h6>
							</div>
							<a href="products1.html"><img src="img/f2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products1.html">Women Sandal</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Women Sandal" /> <input type="hidden"
										name="amount" value="20.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products.html"><img src="img/e4.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products.html">Digital Camera</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="products4.html"><img src="img/s1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products4.html">Roller Skates</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$180</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Roller Skates" /> <input type="hidden"
										name="amount" value="180.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products1.html"><img src="img/f1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products1.html">T Shirt</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$10</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="T Shirt" /> <input type="hidden"
										name="amount" value="10.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="products6.html"><img src="img/p1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products6.html">Coffee Mug</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$14</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Coffee Mug" /> <input type="hidden"
										name="amount" value="14.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>
									20% <br> Off
								</h6>
							</div>
							<a href="products6.html"><img src="img/p2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products6.html">Teddy bear</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Teddy bear" /> <input type="hidden"
										name="amount" value="20.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products4.html"><img src="img/s2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products4.html">Football</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$70</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Football" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>Sale</h6>
							</div>
							<a href="products3.html"><img src="img/h1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products3.html">Wall Clock</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Wall Clock" /> <input type="hidden"
										name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //recommendations -->
		</div>
	</div>
	<!--//products-->
	<!-- footer-top -->
	<div class="w3agile-ftr-top">
		<div class="container">
			<div class="ftr-toprow">
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>FREE DELIVERY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>CUSTOMER CARE</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>GOOD QUALITY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer-top -->
	<div class="copy-right">
		<div class="container">
			<p>Copyright &copy; 2016.Company name All rights reserved</p>
		</div>
	</div>
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
					items[i].set('shipping', 0);
					items[i].set('shipping2', 0);
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js">
		
	</script>
	<script src="js/main.js"></script>
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>