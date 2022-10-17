<div class="row">
		
	       
		    <section class="content">  
	        <div class="box box-success">
            <div class="box-body">
              <div class="table-responsive">
             <div class="box-body">
<form method="post">
<a href="dashboard.php?id=<?php echo $_SESSION['tid']; ?>&&mid=<?php echo base64_encode("401"); ?>"><button type="button" class="btn btn-flat btn-warning"><i class="fa fa-mail-reply-all"></i>&nbsp;Back</button> </a> 
	 <button type="submit" class="btn btn-flat btn-danger" name="delete"><i class="fa fa-times"></i>&nbsp;Multiple Delete</button>
	<a href="addcustomer.php?id=<?php echo $_SESSION['tid']; ?>&&mid=<?php echo base64_encode("410"); ?>"><button type="button" class="btn btn-flat btn-success"><i class="fa fa-plus"></i>&nbsp;Add Customer</button></a>
	

	<a href="printcustomer.php" target="_blank" class="btn btn-primary btn-flat"><i class="fa fa-print"></i>&nbsp;Print</a>
	<a href="borrowexcel.php" target="_blank" class="btn btn-success btn-flat"><i class="fa fa-send"></i>&nbsp;Export Excel</a>
	<a href="pdfcustomers.php" target="_blank" class="btn btn-info btn-flat"><i class="fa fa-file-pdf-o"></i>&nbsp;Export PDF</a>
	
	<hr>		
			  
			 <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th><input type="checkbox" id="select_all"/></th>
                  <th>ID</th>
                  <th>Image</th>
                  <th>First Name</th>
				  <th>Last Name</th>
                  <th>Email</th>
                  <th>Mobile Number</th>
				  <th>Bank Account</th>
				  <th>SVAN Account</th>
				  <th>Nominee Name</th>
				  <th>Nominee Phone.No</th>
				  <th>Aadhaar Number</th>
				  <th>KIC Number</th>
				  <th>Address1</th>
				  <th>Address2</th>
				  <th>Loan Amount</th>
				  <th>Loan Returns</th>
				  <th>Balance</th>
                  <th>Actions</th>
                 </tr>
                </thead>
                <tbody>
<?php
$select = mysqli_query($link, "SELECT * FROM borrowers WHERE account LIKE '{$code}%'") or die (mysqli_error($link));
if(mysqli_num_rows($select)==0)
{
echo "<div class='alert alert-info'>No data found yet!.....Check back later!!</div>";
}
else{
while($row = mysqli_fetch_array($select))
{
$id = $row['id'];
$lname = $row['lname'];
$fname = $row['fname'];
$email = $row['email'];
$phone = $row['phone'];
$bank_acc = $row['bank_account'];
$acc = $row['account'];
$nominee = $row['nominee'];
$nominee_ph = $row['nominee_ph'];
$aadhaar = $row['aadhaar_number'];
$kic_no = $row['kic_number'];
$address1 = $row['addrs1'];
$address2 = $row['addrs2'];
$loan = $row['balance'];
$returns = $row['loan_returns'];
$balance = $loan - $returns;

$status = $row['status'];

//$image = $row['image'];
$check = mysqli_query($link, "SELECT * FROM emp_permission WHERE tid = '".$_SESSION['tid']."' AND module_name = 'Borrower Details'") or die ("Error" . mysqli_error($link));
$get_check = mysqli_fetch_array($check);
$pupdate = $get_check['pupdate'];
$pread= $get_check['pread'];
?>    
                <tr>
				<td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="<?php echo $id; ?>"></td>
                <td><?php echo $id; ?></td>
				 <td><img class="img-circle" src="../<?php echo $row ['image'];?>" width="30" height="30"></td>
                <td><?php echo $lname; ?></td>
				<td><?php echo $fname; ?></td>
				<td><?php echo $email; ?></td>
                <td><?php echo $phone; ?></td>
				<td><?php echo $bank_acc; ?></td>
				<td><?php echo $acc; ?></td>
				<td><?php echo $nominee; ?></td>
				<td><?php echo $nominee_ph; ?></td>
				<td><?php echo $aadhaar; ?></td>
				<td><?php echo $kic_no; ?></td>
				<td><?php echo $address1; ?></td>
				<td><?php echo $address2; ?></td>
				<td><?php echo $loan; ?></td>
				<td><?php echo $returns; ?></td>
				<td><?php echo $balance; ?></td>
				

				<td align="center"><?php echo ($pupdate == '1') ? '<a href="transactionind.php?id='.$acc.'" class="btn btn-info btn-flat">Transactions</a>' : '<i class="fa fa-lock"></i>'; ?>
			
				</td>
    </tr>
<?php } } ?>
             </tbody>
                </table>  
<?php
						if(isset($_POST['delete'])){
						$idm = $_GET['id'];
							$id=$_POST['selector'];
							$N = count($id);
						if($id == ''){
						echo "<script>alert('Row Not Selected!!!'); </script>";	
						echo "<script>window.location='listborrowers.php?id=".$_SESSION['tid']."&&mid=".base64_encode("403")."'; </script>";
							}
							else{
							for($i=0; $i < $N; $i++)
							{
								$result = mysqli_query($link,"DELETE FROM borrowers WHERE id ='$id[$i]'");
								echo "<script>alert('Row Delete Successfully!!!'); </script>";
								echo "<script>window.location='listborrowers.php?id=".$_SESSION['tid']."&&mid=".base64_encode("403")."'; </script>";
							}
							}
							}
?>			
</form>
				

              </div>


	
</div>	
</div>
</div>	
</div>