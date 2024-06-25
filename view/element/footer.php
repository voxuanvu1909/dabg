<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />                                              
</head>
<style>
	body{margin-top:20px;}
	.red {
  color: red !important;
}

footer {
  background-color: #f5f5f5;
  padding: 80px 0;
  padding-top: 150px;
}
footer .footer-widget h3 {
  margin-bottom: 30px;
}
footer .contact-link {
  display: inline-block;
  width: 100%;
  color: #333;
}
footer .footer-social ul {
  padding-left: 0;
}
footer .footer-social ul li {
  list-style: none;
  float: left;
  padding: 0 10px;
}
footer .footer-social ul li:first-child {
  padding-left: 0;
}
footer .footer-social ul li a {
  font-size: 20px;
  color: #333;
}
footer .footer-social ul li a:hover {
  color: red;
}
footer .opening-time {
  padding-left: 0;
}
footer .opening-time li {
  list-style: none;
}
footer .opening-time li span {
  float: left;
  padding-right: 10px;
}
footer .opening-time li span .fa-times {
  color: red;
}
footer .opening-time li strong {
  color: rgb(123, 255, 0);
}
footer .media-body a {
  color: #333;
}
footer .media-body a:hover {
  color: red;
}
footer .media-body span {
  color: #969696;
}
footer .images-gellary ul {
  padding-left: 0;
}
footer .images-gellary ul li {
  list-style: none;
  float: left;
  margin: 0 3% 2% 0;
  width: 31%;
  position: relative;
}
footer .images-gellary ul li:nth-child(3n) {
  margin: 0 0 1%;
}
	
.deneb_footer .widget_wrapper {
    background-repeat: no-repeat;
    background-size: cover;
    padding-top: 200px;
    padding-bottom: 70px;
}
@media (max-width: 767px) {
    .deneb_footer .widget_wrapper .widget {
        margin-bottom: 40px;
    }
}
.deneb_footer .widget_wrapper .widget .widget_title {
    margin-bottom: 30px;
}
.deneb_footer .widget_wrapper .widget .widget_title h4 {
    font-weight: bold;
}
.deneb_footer .widget_wrapper .widget .widget_title h4:after {
    content: "";
    display: block;
    background: url(../images/shape/line.png) no-repeat;
    max-width: 38px;
    height: 2px;
    margin-top: 5px;
}
.deneb_footer .widget_wrapper .widegt_about p {
    margin-bottom: 20px;
}
.deneb_footer .widget_wrapper .widegt_about .social li {
    display: inline-block;
    margin-right: 10px;
}
.deneb_footer .widget_wrapper .widegt_about .social li a {
    display: block;
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    border-radius: 50%;
    background-color: #f9e6d4;
    color: #fba543;
    font-size: 14px;
    -webkit-transition: all all 0.5s ease-out 0s;
    -moz-transition: all all 0.5s ease-out 0s;
    -ms-transition: all all 0.5s ease-out 0s;
    -o-transition: all all 0.5s ease-out 0s;
    transition: all all 0.5s ease-out 0s;
}
.deneb_footer .widget_wrapper .widegt_about .social li a:hover,
.deneb_footer .widget_wrapper .widegt_about .social li a:focus {
    background-image: -moz-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    background-image: -webkit-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    background-image: -ms-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    color: #fff;
    box-shadow: 2.5px 4.33px 15px 0px rgba(254, 176, 0, 0.4);
}
.deneb_footer .widget_wrapper .widget_link ul li {
    margin-bottom: 5px;
}
.deneb_footer .widget_wrapper .widget_link ul li a {
    text-transform: capitalize;
    color: #7a808d;
}
.deneb_footer .widget_wrapper .widget_link ul li a:hover,
.deneb_footer .widget_wrapper .widget_link ul li a:focus {
    color: #feb000;
}
.deneb_footer .widget_wrapper .widget_contact .contact_info .single_info {
    max-width: 250px;
    display: flex;
    flex-wrap: wrap;
    margin-bottom: 20px;
}
.deneb_footer .widget_wrapper .widget_contact .contact_info .single_info .icon {
    font-size: 12px;
    color: #feb000;
    margin-right: 10px;
}
.deneb_footer .widget_wrapper .widget_contact .contact_info .single_info .info p a {
    color: #7a808d;
}
.deneb_footer .widget_wrapper .widget_contact .contact_info .single_info .info p span {
    display: block;
}

.deneb_footer .copyright_area {
    background: #edecf0;
    padding: 10px 0;
}
.deneb_footer .copyright_area .copyright_text {
    text-align: center;
}
.deneb_footer .copyright_area .copyright_text p {
    color: #011a3e;
}
.deneb_footer .copyright_area .copyright_text p span {
    color: #feb000;
}
.deneb_cta .cta_wrapper {
    padding: 45px 50px 42px;
    max-width: 970px;
    border-radius: 15px;
    margin: auto;
    margin-bottom: -135px;
    position: relative;
    background-image: -moz-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    background-image: -webkit-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    background-image: -ms-linear-gradient(0deg, #ffbd27 0%, #feb000 100%);
    box-shadow: 2.5px 4.33px 15px 0px rgba(254, 176, 0, 0.4);
    z-index: 1;
}
.deneb_cta .cta_wrapper:after {
    content: "";
    background: url(../images/shape/cta_shape.png) no-repeat;
    background-position: bottom;
    width: 100%;
    height: 100%;
    position: absolute;
    bottom: 0;
    left: 0;
    z-index: -1;
}
.deneb_cta .cta_wrapper .cta_content h3 {
    color: #fff;
    font-weight: bold;
}
@media (max-width: 767px) {
    .deneb_cta .cta_wrapper .cta_content h3 {
        font-size: 24px;
    }
}
.deneb_cta .cta_wrapper .cta_content h3:after {
    content: "";
    display: block;
    background: url(../images/shape/line_2.png) no-repeat;
    max-width: 110px;
    height: 2px;
    margin-top: 13px;
    margin-bottom: 24px;
}
.deneb_cta .cta_wrapper .cta_content p {
    color: #fff;
}
.deneb_cta .cta_wrapper .button_box {
    float: right;
}
@media only screen and (min-width: 768px) and (max-width: 991px) {
    .deneb_cta .cta_wrapper .button_box {
        float: none;
        text-align: left;
        margin-top: 30px;
    }
}
@media (max-width: 767px) {
    .deneb_cta .cta_wrapper .button_box {
        float: none;
        text-align: center;
        margin-top: 30px;
    }
}
.deneb_cta .cta_wrapper .button_box .deneb_btn {
    background: #fff;
    color: #011a3e;
}

</style>
<body>
<section class="deneb_cta">
	<div class="container">
		<div class="cta_wrapper">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="cta_content">
						<h3>Cảm ơn bạn đã sử dụng sản phẩm MinShoes!</h3>
						<p>Mọi thắc mắc, phản hồi bạn vui lòng truy cập địa chỉ bên dưới!!!</p>
					</div>
				</div>
				<div class="col-lg-5">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
						  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
						  <div class="carousel-item active">
							<img class="d-block w-100" src="webroot\img\footer\slide\1.png" alt="First slide">
						  </div>
						  <div class="carousel-item">
							<img class="d-block w-100" src="webroot\img\footer\slide\2.png" alt="Second slide">
						  </div>
						  <div class="carousel-item">
							<img class="d-block w-100" src="webroot\img\footer\slide\3.png" alt="Third slide">
						  </div>
						  <div class="carousel-item">
							<img class="d-block w-100" src="webroot\img\footer\slide\4.png" alt="Third slide">
						  </div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						  <span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						  <span class="carousel-control-next-icon" aria-hidden="true"></span>
						  <span class="sr-only">Next</span>
						</a>
					  </div>
				</div>
			</div>
		</div>
	</div>
</section>
<footer class="footer">
	<div class="container">
	  <div class="row">
		<div class="col-sm-3">
		  <div class="footer-widget">
			<h3>Liên Hệ</h3>
			<div class="footer-widget-content">
				<p><b>Địa chỉ:</b> Ngũ Hành Sơn, ĐÀ NẴNG</p>
				<a href="mailto:huynhquyet2k2@gmail.com" class="contact-link"><b>Gmail:</b> huynhquyet2k2@gmail.com</a>
			  <a href="tel:0121234" class="contact-link"><b>SDT:</b> (+84 034999999)</a>
			  <div class="footer-social">
			  <ul>
				<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter-square"></i></a></li>
				<li><a href="#"><i class="fab fa-youtube-square"></i></a></li>
				<li><a href="#"><i class="fas fa-rss-square"></i></a></li>
			  </ul>
			</div>
			<div>
				<img src="webroot\img\footer\logofooterr.png" alt="logominshoes" style="padding-top: 20px; width: 240px;">
			</div>
			</div>
		  </div>
		</div>
		<div class="col-sm-3">
		<div class="footer-widget">
		  <h3>Giảm Giá</h3>
		  <div class="footer-widget-content">
			<div class="media">
				<div class="media-left">
				   <a href="#"><img class="media-object" src="webroot\img\footer\sale.png" alt="sale"></a>
				</div>
				<div class="media-body">
				   <p><a href="#">Chương trình giảm giá 8/3 </a></p>
				   <span>Từ 5/3 - 8/3 </span>
				</div>
			 </div>
			<div class="media">
				<div class="media-left">
				   <a href="#."><img class="media-object" src="webroot\img\footer\sale.png" alt="sale"></a>
				</div>
				<div class="media-body">
				   <p><a href="#">Chương trình giảm giá 20/10 </a></p>
				   <span>Từ 18/11 - 20/11 </span>
				</div>
			 </div>
			 <div class="media">
				<div class="media-left">
				   <a href="#."><img class="media-object" src="webroot\img\footer\bigsale.png" alt="sale"></a>
				</div>
				<div class="media-body">
					<p><a href="#">Chương trình giảm giá cuối năm </a></p>
					<span>Từ 25/12 - 30/12 </span>
				 </div>
			 </div>
		  </div>
		  </div>
		</div>
		<div class="col-sm-3">
		<div class="footer-widget">
		  <h3>Giờ Mở Cửa</h3>
		  <div class="footer-widget-content">
		  <div class="open-time ">
			<ul class="opening-time">
			  <li><span><i class="fa fa-times"></i></span><p class="clock-time"><strong>Chủ Nhật :</strong> 13pm - 22pm</p>
			   </li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Hai :</strong> 8am - 22pm</p></li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Ba :</strong> 8am - 22pm</p></li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Tư :</strong> 8am - 22pm</p></li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Năm :</strong> 8am - 22pm</p></li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Sáu :</strong> 8am - 22pm</p></li>
			  <li><span><i class="fa fa-check"></i></span><p><strong>Thứ Bảy :</strong> 8am - 22pm</p></li>
			</ul>
			 </div>
		  </div>
		  </div></div>
		
		<div class="col-sm-3">
		<div class="footer-widget">
		  <h3>Instagram</h3>
		  <div class="footer-widget-content">
			<div class="images-gellary">
			  <ul>
				<li><a href="#"><img src="webroot\img\footer\1.png" alt="Instagram 01"></a></li>
				<li><a href="#"><img src="webroot\img\footer\2.png" alt="Instagram 02"></a></li>
				<li><a href="#"><img src="webroot\img\footer\3.png" alt="Instagram 03"></a></li>
				<li><a href="#"><img src="webroot\img\footer\4.png" alt="Instagram 04"></a></li>
				<li><a href="#"><img src="webroot\img\footer\5.png" alt="Instagram 05"></a></li>
				<li><a href="#"><img src="webroot\img\footer\6.png" alt="Instagram 06"></a></li>
				<li><a href="#"><img src="webroot\img\footer\7.png" alt="Instagram 04"></a></li>
				<li><a href="#"><img src="webroot\img\footer\8.png" alt="Instagram 05"></a></li>
				<li><a href="#"><img src="webroot\img\footer\9.png" alt="Instagram 06"></a></li>
			  </ul>
			</div>
		  </div>
		  </div>
		</div>
	  </div>
	</div>
  </footer>
</body>
</html>