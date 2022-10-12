<?php include "../config/session.php"; ?>  
<?php include "../config/connect.php"; ?>  
 

<!DOCTYPE html>
<html>
<head>

<style>
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-right: 16px solid green;
  border-bottom: 16px solid red;
  border-left: 16px solid pink;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
  margin:auto;
  
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>
<br><br><br><br><br><br><br><br><br>
<div style="width:100%;text-align:center;vertical-align:bottom">
		<div class="loader"></div>
<?php
if(isset($_POST['save_loan']))
{
$borrower =  mysqli_real_escape_string($link, $_POST['borrower']);
$account = mysqli_query($link, "SELECT * FROM tbl_bgroup WHERE group_name = '$borrower'") or die (mysqli_error($link));
$account = mysqli_fetch_array($account);
if (empty($account)) {
	echo'<span class="itext" style="color: #FF0000">null values</span>';
    return false;
}
else{
	$baccount = $account['group_code'];
}
$desc = mysqli_real_escape_string($link, $_POST['desc']);
$amount = mysqli_real_escape_string($link, $_POST['amount']);
$date_release = mysqli_real_escape_string($link, $_POST['date_release']);
$agent = mysqli_real_escape_string($link, $_POST['agent']);
$gname = mysqli_real_escape_string($link, $_POST['g_name']);
$gphone = mysqli_real_escape_string($link, $_POST['g_phone']);

$g_rela = mysqli_real_escape_string($link, $_POST['grela']);
$g_address = mysqli_real_escape_string($link, $_POST['gaddress']);
$password = mysqli_real_escape_string($link, $_POST['password']);
$status = mysqli_real_escape_string($link, $_POST['status']);
$remarks = mysqli_real_escape_string($link, $_POST['remarks']);
$pay_date = mysqli_real_escape_string($link, $_POST['pay_date']);
$amount_topay = mysqli_real_escape_string($link, $_POST['amount_topay']);
$upstatus = "Pending";
$teller = mysqli_real_escape_string($link, $_POST['teller']);
$remark = mysqli_real_escape_string($link, $_POST['remark']);
$count = mysqli_query($link, "Select COUNT( case when group_no = '{$baccount}' THEN 1 END) as total from borrowers") or die (mysqli_error($link));
$data=mysqli_fetch_array($count);
$tot = $data['total'];
echo "<p> .'$tot'. </p>";
$sharecust = $amount / $tot;


$target_dir = "../img/";
$target_file = $target_dir.basename($_FILES["image"]["name"]);
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
$check = getimagesize($_FILES["image"]["tmp_name"]);
$tid = $_SESSION['tid'];

$pass = mysqli_query($link, "SELECT * from user WHERE id = '$tid'") or die (mysqli_error($link));
$pass = mysqli_fetch_array($pass);
$cpassword = $pass['password'];
$encrypt = base64_encode($password);
$id = "Loan"."=".rand(10000000,340000000);

if($encrypt != $cpassword)
{
echo "<script>alert('The Password does not match!'); </script>";
}
elseif($check == false)
{
	echo '<meta http-equiv="refresh" content="2;url=newloans.php?tid='.$id.'&&mid='.base64_encode("409").'">';
	echo '<br>';
	echo'<span class="itext" style="color: #FF0000">Invalid file type</span>';
}
// elseif(file_exists($target_file)) 
// {
// 	echo '<meta http-equiv="refresh" content="2;url=newloans.php?tid='.$id.'&&mid='.base64_encode("409").'">';
// 	echo '<br>';
// 	echo'<span class="itext" style="color: #FF0000">Already exists.</span>';
// }
elseif($_FILES["image"]["size"] > 500000)
{
	echo '<meta http-equiv="refresh" content="2;url=newloans.php?tid='.$id.'&&mid='.base64_encode("409").'">';
	echo '<br>';
	echo'<span class="itext" style="color: #FF0000">Image must not more than 500KB!</span>';
}
elseif($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
{
	echo '<meta http-equiv="refresh" content="2;url=newloans.php?tid='.$id.'&&mid='.base64_encode("409").'">';
	echo '<br>';
	echo'<span class="itext" style="color: #FF0000">Sorry, only JPG, JPEG, PNG & GIF Files are allowed.</span>';
}
else{
	$sourcepath = $_FILES["image"]["tmp_name"];
	$targetpath = "../img/" . $_FILES["image"]["name"];
	move_uploaded_file($sourcepath,$targetpath);
	
	$location = "img/".$_FILES['image']['name'];


$insert = mysqli_query($link, "INSERT INTO loan_info VALUES('','$borrower','$baccount','$desc','$amount','$date_release','$agent','$gname','$gphone','$g_address','$g_rela','$location','$status','$remarks','$pay_date','$amount_topay','$teller','$remark','$upstatus')") or die (mysqli_error($link));
$custlist = mysqli_query($link, "SELECT * FROM `borrowers` WHERE `group_no` = '$baccount'") or die (mysqli_error($link));
while($row =  mysqli_fetch_array($custlist))
 {
	$bid = $row['id'];
	echo"<p> .'$bid;																																																																																																																																																																																																																																																																																																																																																												'. </p>";
	$bal = $row['balance'];
	echo"<p> .'$bal'. </p>";
	$totbal = $bal + $sharecust;
	echo "<p> .'$totbal'. </p>";
	$share = mysqli_query($link, "UPDATE `borrowers` SET `balance` = '$totbal' Where id = '$bid'") or die (mysqli_error($link));
  }

if(!$insert)
{
 echo '<meta http-equiv="refresh" content="2;url=newloans.php?tid='.$_SESSION['tid'].'">';
echo '<br>';
echo'<span class="itext" style="color: #FF0000">Unable to Save Loan Information.....Please try again later!</span>';
}
else{
echo '<meta http-equiv="refresh" content="2;url=listloans.php?tid='.$_SESSION['tid'].'">';
echo '<br>';
echo'<span class="itext" style="color: #FF0000">Saving Loan Information.....4 more steps to complete the request.</span>';
}
}
}
?>
</div>
</body>
</html>
