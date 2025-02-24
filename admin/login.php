<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Min Shop - Admin</title>
  <link rel="shortcut icon" href="assets/images/favicon.png" />
      <script src="/dacs2/webroot/jquery/jquery.js"></script>
  <link rel="stylesheet" href="template/css/sb-admin-2.min.css">
  <link href="/dacs2/webroot/font/Font Awesome/css/all.min.css" rel="stylesheet" type="text/css">
</head>
<style>
  body{
    background-image:url(../webroot/img/backgroundadmin.png);
    background-repeat: no-repeat;
    background-size: cover;
  }
  .card-body{
    background: linear-gradient(115.95deg, rgba(239, 239, 239, 0.6) 10.92%, rgba(255, 255, 255, 0.08) 96.4%);
    backdrop-filter: blur(76.1462px);
    border: 1px solid #FFFFFF;
  }
  .card{
    background: none;
  }
</style>
<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block ">
                  <img src="../webroot/img/Min.png" width="500" alt="">
              </div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <br><br>
                    <h1 class="h4 text-gray-900 mb-4">ADMIN</h1>
                  </div>
                  <form class="user" action="" method="post">
                    <div class="form-group">
                      <label>Email:</label>
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" name="email" placeholder="Enter Email Address..." required autofocus>
                    </div>
                    <div class="form-group">
                    <label>Password:</label>
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" name="pass">
                    </div>
                  <hr>
                    <button type="submit" name="login" class="btn  btn-primary  btn-block"> Login </button>
                    <hr>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</body>
<?php
 include_once('../config/database.php');
  @session_start();
   // check đăng nhập
  if (isset($_SESSION['admin'])) {
     header('location:index.php');
  }
  if(isset($_POST['login'])){
    $email=$_POST['email'];
    $matkhau=$_POST['pass'];
    $sql_dangnhap="select * from NhanVien where Email='$email' or MaNV ='$email' and MatKhau='$matkhau'";
    $run_dangnhap=mysqli_query($conn,$sql_dangnhap);
    $dangnhap=mysqli_fetch_array($run_dangnhap);
    $count_dangnhap=mysqli_num_rows($run_dangnhap);
    if($count_dangnhap==0){
      echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
    }else{
      $_SESSION['admin']=$dangnhap;
               
      header('location:index.php'); 
    }             
  }
?>
</body>
</html>
