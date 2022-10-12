<?php
$select = mysqli_query($link, "SELECT * FROM tbl_bgroup") or die (mysqli_error($link));
if(mysqli_num_rows($select)==0)
{
echo "<div class='alert alert-info'>No data found yet!.....Check back later!!</div>";
}
else
{
while($row = mysqli_fetch_array($select))
{
$id = $row['id'];

$count = mysqli_query($link, "Select COUNT( case when account like '{$row['group_code']}%' THEN 1 END) as total from borrowers") or die (mysqli_error($link));
$data=mysqli_fetch_array($count);
?>


<div class="modal fade" id="myModal<?php echo $id; ?>" role="dialog">
    <div class="modal-dialog">
          <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
<legend>Group Details</legend>
        </div>
        <div class="modal-body">
          <p>
		  
		  
		  <form class="form-horizontal" method="post"  enctype="multipart/form-data">
									
								<input type="hidden" value="<?php echo $id; ?>"  name="userid">

				  <div class="form-group">
                  <label for="" class="col-sm-3"style="color:#FF0000">Group Code:</label>
				  <label for="" class="col-sm-2" style="color:#00000"><?php echo $code;?></label>
				  
				  <div class="col-sm-11 "></div>
				  
				  <label for="" class="col-sm-3 "style="color:#FF0000">Name:</label>
				  <label for="" class="col-sm-2 "style="color:#00000"><?php echo $row['group_name'] ;?></label>
				  
				  <div class="col-sm-10 ">
				  <label for="" class="col-sm-3"style="color:#FF0000">Acc Number:</label>
				   <label for="" class="col-sm-1"style="color:#00000"><?php echo $row['acc_no'];?></label>
				  </div>
				   <div class="col-sm-10">
				   <label for="" class="col-sm-3"style="color:#FF0000">Manager:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $row['group_manager'];?></label>
				   </div>
				   <div class="col-sm-10">
				   <label for="" class="col-sm-3"style="color:#FF0000">Submanager:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $row['group_submanager'];?></label>
				   </div>
				  
				   <div class="col-sm-10">
				   <label for="" class="col-sm-3"style="color:#FF0000">M1 Number:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $row['manager_ph'];?></label>
				   </div>
				  
				    <div class="col-sm-10">
					<label for="" class="col-sm-3"style="color:#FF0000">M2 Number:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $row['submanager_ph'];?></label>
					</div>
					
				    <div class="col-sm-10"> <label for="" class="col-sm-3"style="color:#FF0000">Member count:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $data['total'];?></label></div>
				   
				   <div class="col-sm-10">
				   <label for="" class="col-sm-3"style="color:#FF0000">Total Amount loan:</label>
				   <label for="" class="col-sm-2"style="color:#00000"><?php echo $row['amount'];?></label>
				   </div>

				  

                                    </div>
                                    </div>
								<div class="modal-footer">
								<td align="center"><?php echo ($pupdate == '1') ? '<a href="members.php?id='.$row['group_code'].'" class="btn btn-info btn-flat">Members</a>' : '<i class="fa fa-lock"></i>'; ?>
								<button class="btn btn-flat btn-danger" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i> Close</button>
								</div>
								</div>
										</form>
		  
		  </p>
        </div>
      </div>    
    </div>
	<?php }}?>