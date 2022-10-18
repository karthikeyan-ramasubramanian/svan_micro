<?php
if(isset($_POST['savegrp']))
{
  $group = mysqli_real_escape_string($link, $_POST['group']);
  $_SESSION['group'] = $group;
    echo "<script>window.location='deposit.php?id=".$_SESSION['tid']."&&mid=".base64_encode("410")."';</script>";

}
?>



<div class="box">
	       <div class="box-body">
			<div class="panel panel-success">
            <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-user"></i> Customer Deposit Group</h3>
            </div>
             <div class="box-body">
            
			 <form class="form-horizontal" method="post" enctype="multipart/form-data">
			  <?php echo '<div class="alert alert-info fade in" >
			  <a href = "#" class = "close" data-dismiss= "alert"> &times;</a>
  				<strong>Note that&nbsp;</strong> &nbsp;&nbsp;Some Fields are Rquired.
				</div>'?>
             <div class="box-body">
			
             <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Customer Group</label>
                  <div class="col-sm-10">
				<select name="group"  class="form-control select2" required>
					<option selected>Select Customer Group</option>
<?php
$search = mysqli_query($link, "SELECT * FROM tbl_bgroup");
while($get_search = mysqli_fetch_array($search))
{
?>
                <option value="<?php echo $get_search['group_code']; ?>"><?php echo $get_search['group_name']; ?></option>
<?php } ?>
                </select>
                <div align="right">
              <div class="box-footer">
                				<button name="savegrp" type="submit" class="btn btn-success btn-flat"><i class="fa fa-save">&nbsp;Submit</i></button>

              </div>
			  </div>

            </div>
           
</form>





</div>	
</div>	
</div>
</div>