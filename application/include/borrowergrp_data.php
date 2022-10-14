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
	<a href="newgroup.php?id=<?php echo $_SESSION['tid']; ?>&&mid=<?php echo base64_encode("410"); ?>"><button type="button" class="btn btn-flat btn-success"><i class="fa fa-plus"></i>&nbsp;Add Groups</button></a>
	

	<a href="printcustomer.php" target="_blank" class="btn btn-primary btn-flat"><i class="fa fa-print"></i>&nbsp;Print</a>
	<a href="borrowexcel.php" target="_blank" class="btn btn-success btn-flat"><i class="fa fa-send"></i>&nbsp;Export Excel</a>
	<a href="pdfcustomers.php" target="_blank" class="btn btn-info btn-flat"><i class="fa fa-file-pdf-o"></i>&nbsp;Export PDF</a>
	
	<hr>		
			  
			 <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th><input type="checkbox" id="select_all"/></th>
                  
                  <th>Image</th>
                  <th>Group Code</th>
				  <th>Group Name</th>
				  <th>Group Manager</th>
                  <th>Group Details </th>
                  <th>Actions</th>
                 </tr>
                </thead>
                <tbody>
<?php
$select = mysqli_query($link, "SELECT * FROM tbl_bgroup") or die (mysqli_error($link));
if(mysqli_num_rows($select)==0)
{
echo "<div class='alert alert-info'>No data found yet!.....Check back later!!</div>";
}
else{
while($row = mysqli_fetch_array($select))
{
$id = $row['id'];
$name = $row['group_name'];
$code = $row['group_code'];
$manager = $row['group_manager'];
$submanager = $row['group_submanager'];
$image = $row['group_img'];
$check = mysqli_query($link, "SELECT * FROM emp_permission WHERE tid = '".$_SESSION['tid']."' AND module_name = 'Borrower Details'") or die ("Error" . mysqli_error($link));
$get_check = mysqli_fetch_array($check);
$pupdate = $get_check['pupdate'];
$pread= $get_check['pread'];
?>    
                <tr>
				<td><input id="optionsCheckbox" class="checkbox"  name="selector[]" type="checkbox" value="<?php echo $id; ?>"></td>
                
				 <td><img class="img-circle" src="../<?php echo $image;?>" width="30" height="30"></td>
                <td><?php echo $code; ?></td>
				<td><?php echo $name; ?></td>
				<td><?php echo $manager; ?></td>
				<td><a href="#myModal <?php echo $id;?>"> <button type="button" class="btn btn-primary btn-flat" data-target="#myModal<?php echo $id; ?>" data-toggle="modal"><i class="fa fa-edit"></i>View Details</button></a></td>
                

				<td align="center"><?php echo ($pupdate == '1') ? '<a href="members.php?id='.$code.'" class="btn btn-info btn-flat">Members</a>' : '<i class="fa fa-lock"></i>'; ?>

			
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