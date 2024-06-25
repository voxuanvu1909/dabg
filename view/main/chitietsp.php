<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 60px;
  height: 60px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 550px;
  height: 495px;
}
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>

</head>
<body>
<!--chi tiết sản phẩm-->
          
   <?php    $masp=$_GET['masp'];
            $sql="SELECT * FROM `sanpham` WHERE `MaSP`=$masp";
            $query=mysqli_query($conn,$sql);
            $kq=mysqli_fetch_array($query);
            $sql_ncc="SELECT TenNCC FROM `nhacc` WHERE `MaNCC`=".$kq['MaNCC'];
            $query2=mysqli_query($conn,$sql_ncc);
            $kq2=mysqli_fetch_array($query2);
            // lấy size sản phẩm và số lượng
            $sql_size="SELECT  DISTINCT MaSize FROM `chitietsanpham` WHERE `MaSP`=".$kq['MaSP'];
            $query3=mysqli_query($conn,$sql_size);
             $sql_size="SELECT DISTINCT MaMau FROM `chitietsanpham` WHERE `MaSP`=".$kq['MaSP'];
            $query4=mysqli_query($conn,$sql_size);
            //check khuyến mãi
             $km="SELECT * FROM `sanphamkhuyenmai` WHERE `MaSP`=".$masp;
            $query_km=mysqli_query($conn,$km);
            date_default_timezone_set('Asia/Ho_Chi_Minh');$date=getdate();
            $ngay=$date['year']."-".$date['mon']."-".($date['mday']);$a=0;$b=0;
             while ($kq_km=mysqli_fetch_array($query_km)) {
		        $km1="SELECT * FROM `khuyenmai` WHERE `MaKM`=".$kq_km['MaKM']." and NgayBD <='".$ngay."' and NgayKT >='".$ngay."'";
	            $query_km1=mysqli_query($conn,$km1);
	            while ($kq_km=mysqli_fetch_array($query_km1)) { 
	            		 if(isset($kq_km['KM_PT'])){ $b=$b+($kq_km['KM_PT']);} 
	            		 if(isset($kq_km['TienKM'])){ $a=$a+($kq_km['TienKM']);} 				            	
				}	
			} 
    ?>
<div class="container ">
	<form action="view/cart/cart_update.php" method="POST" accept-charset="utf-8">
       <input hidden name="masp" value="<?php echo $kq['MaSP']; ?>">
	<div class="row ">
		<div class="col-md-6  badge-light img-zoom-container" >
			<img class="img-ctsp" id="myimage" src="./webroot/img/sanpham/<?php echo $kq['AnhNen'];?>">
		</div>
		<div class="col-md-6 ">
			<h3 class="ft1"><?php echo mb_strtoupper($kq['TenSP']); ?></h3>
			<h6 class="ft4">Thương hiệu : <?php echo $kq2[0]; ?>   MSP : <?php echo $masp ?></h6><br/>

<?php   $tk=0;	if ($a!==0 || $b!==0) {
				$t=0; if($b==0){$t=$kq['DonGia']-$a;$tk=$a;}else{$t=($kq['DonGia']-($kq['DonGia']*$b)/100)-$a;$tk=($kq['DonGia']*$b)/100+$a;} ?>
				<h5><mark class="text-danger"><?php echo  number_format($t, 0 , $c = "," , $d = "." )." ₫"; ?></mark></h5>
				<h6><?php echo  'Giá gốc : '.number_format($kq['DonGia'], 0 , $c = "," , $d = "." )." ₫"; ?></h6>
				<h6><?php echo  'Tiết kiệm : '.number_format($tk, 0 , $c = "," , $d = "." )." ₫"; ?></h6>
<?php 		}else{?><h5><mark><?php echo  number_format($kq['DonGia'], 0 , $c = "," , $d = "." )." ₫"; ?></mark></h5><?php }?>
			
			

			<div class="row ">
				<div class="col-9 "><hr/></div><div class="col-3 "></div>
				<div class="col-2 "><h5 class="ft2">MÀU: </h5></div>
				 <div class="btn-group  col-8 row ">
			        <?php   while($kq4=mysqli_fetch_array($query4)) { ?>
			          <div class=" custom-checkbox custom-control col-4 ">
			              <input type="radio" class="custom-control-input " id="<?php echo $kq4['MaMau'];?>" name="mau" value="<?php echo $kq4['MaMau'];?>" required>
			              <label class="custom-control-label " for="<?php echo $kq4['MaMau'];?>"><h6><?php echo $kq4['MaMau'];?></h6></label>
			          </div>
			        <?php } ?>
				</div>

			</div>
			<div class="row ">
				<div class="col-9 "><hr/></div><div class="col-3 "></div>
				<div class="col-2 "><h5 class="ft2">Size: </h5></div>
				<div class="btn-group  col-8 row ">
			        <?php   while($kq3=mysqli_fetch_array($query3)) { ?>
			          <div class=" custom-checkbox custom-control col-3 ">
			              <input type="radio" class="custom-control-input " id="<?php echo $kq3['MaSize'];?>" name="size" value="<?php echo $kq3['MaSize'];?>" required>
			              <label class="custom-control-label " for="<?php echo $kq3['MaSize'];?>"><h6><?php echo $kq3['MaSize'];?></h6></label>
			          </div>
			        <?php } ?>
				</div>
				<div class="col-9 "><hr/></div><div class="col-3 "></div>
			</div>
			<h6 class="ft2">Số lượng mua : <select  class="form-control-sm" name="slmua">
									<option  value="1">1</option> <option value="2">2</option> <option value="3">3</option>
                                    <option value="4">4</option> <option value="5"> 5</option> 
                        		 </select>
            </h6><br/>
			<div class="row ">
				<div class="col-9">
					
					<input hidden name="tk" value="<?php echo $tk; ?>">
					<button type="submit" name="action" value="them" class="btn-sm btn btn-block btn-dark pull-right">Thêm Giỏ Hàng 
						<i class="fas fa-cart-plus"></i></button>
				</div><div class="col-9"> &emsp;</div>
				<div class="col-9">
					<button type="submit" class="btn-sm btn btn-block btn-dark pull-right" name="action" value="mua">Mua Hàng 
						<i class="fas fa-cart-arrow-down"></i></button>	 
				</div>
         		   
			</div>		
	</div>
	</div></form>
	<div class="row">
		<div class="col-md-6 ">
			<hr>
			<div id="myresult" class="img-zoom-result"></div>
   </div>
   <div class="col-md-6 ">
   <hr>
			 <h4 class="ft1">Mô Tả :</h4>
			 <p class="ft"><?php echo $kq['MoTa'];?></p>
   </div>
	</div>
	<div class="col-md-6 ">
			 <hr>
              <?php include_once('view/main/binhluan.php');?>
	</div>
</div>

					</body>
<script>
// Initiate zoom effect:
imageZoom("myimage", "myresult");
</script>