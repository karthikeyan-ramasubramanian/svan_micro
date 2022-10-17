<div class="row">	
		
	 <section class="content">
     
	<?php echo '<div class="alert alert-warning fade in" >
			  <a href = "#" class = "close" data-dismiss= "alert"> &times;</a>
  				<strong>Please Note that&nbsp;</strong> &nbsp;&nbsp;You Must Tick All Added Checkbox Before Clicking on update button below
				</div>'?>
	        <div class="box box-success">
            <div class="box-body">
              <div class="table-responsive">
             <div class="box-body">

			 <div class="col-md-14">
             <div class="nav-tabs-custom">
             <ul class="nav nav-tabs">
              <li><a href="#tab_1" data-toggle="tab">Loan Information</a></li>
              
              <li><a href="#tab_3" data-toggle="tab">Attachment</a></li>
           
             
              </ul>
             <div class="tab-content">
             <div class="tab-pane" id="tab_1">
<?php
$id = $_GET['id'];
$select = mysqli_query($link, "SELECT * FROM loan_info WHERE id = '$id'") or die (mysqli_error($link));
while($row = mysqli_fetch_array($select))
{
$borrower = $row['borrower'];   
?>           
			 <form class="form-horizontal" method="post" enctype="multipart/form-data" action="process_loan_info.php">
			  <?php echo '<div class="alert alert-info fade in" >
			  <a href = "#" class = "close" data-dismiss= "alert"> &times;</a>
  				<strong>Note that&nbsp;</strong> &nbsp;&nbsp;Some Fields are Required.
				</div>'?>
             <div class="box-body">
				
				<?php
				// $get = mysqli_query($link, "SELECT * FROM borrowers WHERE id = '$borrower'") or die (mysqli_error($link));
				// while($rows = mysqli_fetch_array($get))
				// {
				// ?>
        <div class="form-group">
                <label for="" class="col-sm-2 control-label" style="color:#009900">Borrower</label>
				 <div class="col-sm-10">
					<input name="borrower" type="text" class="form-control" value="<?php echo $borrower ?>" readonly>
				
              </div>
			  </div>
			  
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Account</label>
                  <div class="col-sm-10">
                  <input name="account" type="text" class="form-control" value="<?php echo $row['baccount']; ?>" readonly>
                  </div>
                  </div>
				 
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Amount</label>
                  <div class="col-sm-10">
                  <input name="amount" type="text" class="form-control" value="<?php echo $row['amount']; ?>" readonly>
                  </div>
                  </div>
		
		 <div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Description</label>
                  	<div class="col-sm-10">
					<textarea name="desc"  class="form-control" rows="4" cols="80" readonly><?php echo $row['desc']; ?></textarea>
           			 </div>
					 </div>
		
		 <div class="form-group">
                <label for="" class="col-sm-2 control-label" style="color:#009900">Date Release</label>
			 <div class="col-sm-10">
              <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input name="date_release" type="text" class="form-control pull-right" value="<?php echo $row['date_release']; ?>" readonly>
                </div>
              </div>
			  </div>
			  
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Agent</label>
                  <div class="col-sm-10">
                  <input name="agent" type="text" class="form-control" value="<?php echo $row['agent']; ?>" readonly>
                  </div>
                  </div>
				  
				 
				  
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Status</label>
                  <div class="col-sm-10">
                  <input name="status" type="text" class="form-control" value="<?php echo $row['status']; ?>"readonly="readonly">
                  </div>
                  </div>
				  					                                                                                                                                                                                        
			<div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Remarks</label>
                  	<div class="col-sm-10">
					<textarea name="remarks"  class="form-control" rows="4" cols="80" readonly="readonly"><?php echo $row['remarks']; ?></textarea>
           			 </div>
          	</div>



<hr>	
<div class="alert-danger">&nbsp;GUARANTOR INFORMATION</div>
<hr>
				  
			<div class="form-group">
				<label for="" class="col-sm-2 control-label" style="color:#009900">Gurantor's Passport</label>
				<div class="col-sm-10">
  		  		
       			 <img id="blah"  src="../<?php echo $row ['g_image'] ;?>" alt="Image Here" height="100" width="100"/>
			</div>
			</div>
			
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Relationship</label>
                  <div class="col-sm-10">
                  <input name="grela" type="text" class="form-control" value="<?php echo $row['rela']; ?>" readonly="readonly">
                  </div>
                  </div>
			
			 <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Guarantor's Name</label>
                  <div class="col-sm-10">
                  <input name="agent" type="text" class="form-control" value="<?php echo $row['g_name']; ?>" readonly>
                  </div>
                  </div>
				  
				  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Guarantor's Phone Number</label>
                  <div class="col-sm-10">
                  <input name="agent" type="text" class="form-control" value="<?php echo $row['g_phone']; ?>" readonly>
                  </div>
                  </div>
				  
				 
				 <div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Guarantor's Address</label>
                  	<div class="col-sm-10">
					<textarea name="gaddress"  class="form-control" rows="4" cols="80" readonly="readonly"><?php echo $row['g_address']; ?></textarea>
           			 </div>
          	</div> 
			

			
<hr>	
<div class="alert-danger">&nbsp;PAYMENT INFORMATION</div>
<hr>	
					
					 <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Current Balance</label>
                  <div class="col-sm-10">
                  <input name="user" type="text" class="form-control" value="0.00" readonly>
                  </div>
                  </div>
				  
				   <div class="form-group">
                <label for="" class="col-sm-2 control-label" style="color:#009900">Payment Date</label>
			 <div class="col-sm-10">
              <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input name="pay_date" type="text" class="form-control pull-right" value="<?php echo $row['pay_date']; ?>" readonly>
                </div>
              </div>
			  </div>
				  
				  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Amount to Pay</label>
                  <div class="col-sm-10">
                  <input name="amount_topay" type="number" class="form-control" value="<?php echo $row['amount_topay']; ?>" readonly>
                  </div>
                  </div>
				  
				  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Teller By</label>
                  <div class="col-sm-10">
                  <input name="teller" type="text" class="form-control" value="<?php echo $row['teller']; ?>" readonly>
                  </div>
                  </div>				
				<div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Remarks</label>
                  	<div class="col-sm-10">
					<textarea name="remark"  class="form-control" rows="4" cols="80" readonly="readonly"><?php echo $row['remarks']; ?></textarea>
           			 </div>
          	</div>
				  
			 </div>
			 
			  </form>
<?php } ?>
              </div>
              <!-- /.tab-pane -->
              
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
                <form class="form-horizontal" method="post" enctype="multipart/form-data">

                Attachments
Accepted file types <span style="color:#FF0000">jpg, gif, png, xls, xlsx, csv, doc, docx, pdf</span>
			 <input name="uploaded_file" type="file" class="btn btn-info">
			 <div align="left">
              <div class="box-footer">
                				<button type="submit" class="btn btn-success btn-flat" name="upload"><i class="fa fa-upload">&nbsp;Upload</i></button>
              </div>
			  </div>
<?php
if(isset($_POST['upload']))
{
$id = $_GET['id'];
$tid = $_SESSION['tid'];

//upload random name/number
	 $rd2 = mt_rand(1000,9999)."_File"; 
	 
	 //Check that we have a file
	if((!empty($_FILES["uploaded_file"])) && ($_FILES['uploaded_file']['error'] == 0)) {
  //Check if the file is JPEG image and it's size is less than 350Kb
  $filename = basename($_FILES['uploaded_file']['name']);
  
  $ext = substr($filename, strrpos($filename, '.') + 1);
  
  if (($ext != "exe") && ($_FILES["uploaded_file"]["type"] != "application/x-msdownload"))  {
    //Determine the path to which we want to save this file      
	  //$newname = dirname(__FILE__).'/upload/'.$filename;
	  $newname="document/".$rd2."_".$filename;      
	  //Check if the file with the same name is already exists on the server
 
        //Attempt to move the uploaded file to it's new place
        if ((move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$newname))) {
			//successful upload
          // echo "It's done! The file has been saved as: ".$newname;		   

$insert = mysqli_query($link, "INSERT INTO attachment(id,get_id,tid,attached_file,date_time) VALUES('','$id','$tid','$newname',NOW())") or die (mysqli_error($link));
if(!$insert)
{
echo "<script>alert('Record not inserted.....Please try again later!'); </script>";
}
else{
echo "<script>alert('Documents Added Successfully!!'); </script>";
}
}
}
}
}
?>
			 </form> 
              </div>
			
			
			  </form>
			  </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
				 
					
					
				
				
				</div>
				

              </div>
			 

	
</div>	
</div>
</div>	
</div>	