<div class="box">
	       <div class="box-body">
			<div class="panel panel-success">
            <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-user"></i> New Customer Registration Form</h3>
            </div>

             <div class="box-body">
 <?php
if(isset($_POST['save']))
{
	$group_code =  mysqli_real_escape_string($link, $_POST['bankcode']);
	$account = $group_code.mt_rand(100000,1000000);
//	echo"<script>alert('Customer Account number is $account')</script>";
	$fname =  mysqli_real_escape_string($link, $_POST['fname']);
	$lname = mysqli_real_escape_string($link, $_POST['lname']);
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$phone = mysqli_real_escape_string($link, $_POST['phone']);
	$bank_account = mysqli_real_escape_string($link, $_POST['bank_account']);
	$nominee = mysqli_real_escape_string($link, $_POST['nominee']);
	$nominee_ph = mysqli_real_escape_string($link, $_POST['nominee_ph']);
	$aadhaar_number = mysqli_real_escape_string($link, $_POST['aadhaar_number']);
	$kic_number = mysqli_real_escape_string($link, $_POST['kic_number']);
	$addrs1 = mysqli_real_escape_string($link, $_POST['addrs1']);
	$addrs2 = mysqli_real_escape_string($link, $_POST['addrs2']);
	$city = mysqli_real_escape_string($link, $_POST['city']);
	$state = mysqli_real_escape_string($link, $_POST['state']);
	$zip = mysqli_real_escape_string($link, $_POST['zip']);
	$country = mysqli_real_escape_string($link, $_POST['country']);
	$account = mysqli_real_escape_string($link, $account);
	$status = "Completed";

	$target_dir = "../img/";
	$target_file = $target_dir.basename($_FILES["image"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	$check = getimagesize($_FILES["image"]["tmp_name"]);
	//Check if a value exists in a table
	// $table = "borrowers";
	// $column1 = "email";
	// $column2 = "phone";
	// $column3 = "account";
	// $column4 = "bank_account";

	// $value1 = $email;
	// $value2 = $phone;
	// $value3 = $account;
	// $value4 = $bank_account;

	// $mailcheck = mysqli_query($link, "SELECT * FROM {$table} WHERE {$column1} = {$value1}");
	// $phonecheck = mysqli_query($link,"SELECT * FROM {$table} WHERE {$column2} = {$value2}");
	// $accountcheck = mysqli_query($link, "SELECT * FROM {$table} WHERE {$column3} = {$value3}");
	// $bank_accountcheck = mysqli_query($link,"SELECT * FROM {$table} WHERE {$column4} = {$value4}");
	$sql1 = mysqli_query($link,"SELECT * FROM `borrowers` WHERE email='.$email.'");
	$sql1 = mysqli_fetch_assoc($sql1);
	echo $sql1['email'];
	$Checker1 = $sql1['email'];
	$sql2 = mysqli_query($link,"SELECT * FROM `borrowers` WHERE phone='.$phone.'");
	$sql2 = mysqli_fetch_assoc($sql2);
	echo $sql2['phone'];
	$Checker2 = $sql2['phone'];
	$sql3 = mysqli_query($link,"SELECT * FROM `borrowers` WHERE account='.$account.'");
	$sql3 = mysqli_fetch_assoc($sql3);
	echo $sql3['account'];
	$Checker3 = $sql3['account'];
	$sql4 = mysqli_query($link,"SELECT * FROM `borrowers` WHERE bank_account='.$bank_account.'");
	$sql4 = mysqli_fetch_assoc($sql4);
	
	$Checker4 = $sql4['bank_account'];

    
		
	if($check == false)
	{
		echo "<div class='alert alert-warning'>Invalid file type!</div>";
	}
	elseif($Checker1 != null)
	
	{
		echo "<div class='alert alert-warning'>This email address is already exists!</div>";
	}
	elseif($Checker2 != null) 
	{
		
		echo "<div class='alert alert-warning'>This phone number is already used!</div>";
	}
	elseif($Checker3 != null) 
	{
		
		echo "<div class='alert alert-warning'>This SVAN account number is already exists!</div>";
	}
	elseif($Checker4 != null) 
	{
		
		echo "<div class='alert alert-warning'>This bank account number is already exists!</div>";
	}
	
	elseif(strlen($aadhaar_number) != 12)
	{
		echo "<p style='font-size:24px; color:#FF0000'>Aadhaar number must be 12 digits</p>";
	}
	elseif(file_exists($target_file)) 
	{
		echo "<p style='font-size:24px; color:#FF0000'>Already exists.</p>";
	}
	
	elseif($_FILES["image"]["size"] > 500000)
	{
		echo "<p style='font-size:24px; color:#FF0000'>Image must not more than 500KB!</p>";
	}
	elseif($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif")
	{
		echo "<p style='font-size:24px; color:#FF0000'>Sorry, only JPG, JPEG, PNG & GIF Files are allowed.</p>";
	}
	else{
		$sourcepath = $_FILES["image"]["tmp_name"];
		$targetpath = "../img/" . $_FILES["image"]["name"];
		move_uploaded_file($sourcepath,$targetpath);

		$location = "img/".$_FILES['image']['name'];

		$insert = mysqli_query($link, "INSERT INTO borrowers VALUES('','$fname','$lname','$email','$phone','$bank_account','$nominee','$nominee_ph','$aadhaar_number','$kic_number','$addrs1','$addrs2','$city','$state','$zip','$country','','$account','0.0','$location',NOW(),'$status')") or die (mysqli_error($link));
		if(!$insert)
		{
			echo "<div class='alert alert-info'>Unable to Insert Borrower Records.....Please try again later</div>";
		}
		else{
			echo "<div class='alert alert-success'>New Customer Added Successfully!</div>";
			echo "<div class='alert alert-success'>Customer Account number is $account</div>";
		}
	}
}
?>           
			 <form class="form-horizontal" method="post" enctype="multipart/form-data">
			  <?php echo '<div class="alert alert-info fade in" >
			  <a href = "#" class = "close" data-dismiss= "alert"> &times;</a>
  				<strong>Note that&nbsp;</strong> &nbsp;&nbsp;Some Fields are Required.
				</div>'?>
             <div class="box-body">
				
			<div class="form-group">
            <label for="" class="col-sm-2 control-label">Your Image</label>
			<div class="col-sm-10">
  		  			 <input type='file' name="image" onChange="readURL(this);" /required>
       				 <img id="blah"  src="../avtar/user2.png" alt="Image Here" height="100" width="100"/>
			</div>
			</div>
			<div class="form-group">
                 
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Group Name</label>
                  <div class="col-sm-10">
                  <?php
                    $link = mysqli_connect('localhost','svan_user','1zgia8yCb*G#@lwz','svan_bank') or die('Unable to Connect to Database');
                    $query = "SELECT * FROM `tbl_bgroup` WHERE 1";
                    $stmt = mysqli_query($link,$query);
                    $count = $stmt->num_rows;
                    ?>
                    <select class="form-control input-sm" name="bankcode">
                    <?php
                    if($count==0)
                    {
                        echo '<option value="">No Datas have been created Yet</option>';
                    }
                    else
                    {
                        while($fetch = $stmt->fetch_assoc())
                        {
                        ?>
                        <option value="<?php echo $fetch['group_code']; ?>"><?php echo $fetch['group_name']; ?></option>
                        <?php   
                        }
                    }
                    ?>
                    </select>
                  </div>
                  </div>
		
			
			 <!-- <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Account Number</label>
                  <div class="col-sm-10">
<?php
//$account = $bankcode.rand(100000,1000000);
?>
                  <input name="account" type="text" class="form-control" value="<?php// echo $account; ?>" placeholder="Account Number" readonly>
                  </div>
                  </div> -->
			
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">First Name</label>
                  <div class="col-sm-10">
                  <input name="fname" type="text" class="form-control" placeholder="First Name" required>
                  </div>
                  </div>
				  
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Last Name</label>
                  <div class="col-sm-10">
                  <input name="lname" type="text" class="form-control" placeholder="Last Name" required>
                  </div>
                  </div>
				  
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Email</label>
                  <div class="col-sm-10">
                  <input type="email" name="email" type="text" class="form-control" placeholder="Email">
                  </div>
                  </div>
				  
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Mobile Number</label>
                  <div class="col-sm-10">
                  <input name="phone" type="text" class="form-control" placeholder="Mobile Number" required>
                  </div>
                  </div>
				  
				  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Bank Account</label>
                  <div class="col-sm-10">
                  <input name="bank_account" type="text" class="form-control" placeholder="Enter your Bank Account Number"required >
                  </div>
                  </div>

			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Nominee Name</label>
                  <div class="col-sm-10">
                  <input name="nominee" type="text" class="form-control" placeholder="Enter Nominee Name"required >
                  </div>
                  </div>
		    <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Nominee Phone.No</label>
                  <div class="col-sm-10">
                  <input name="nominee_ph" type="text" class="form-control" placeholder="Enter Nominee Phone Number"required >
                  </div>
                  </div>
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Aadhaar Number</label>
                  <div class="col-sm-10">
                  <input name="aadhaar_number" type="text" class="form-control" placeholder="Enter your Aadhaar Number"required >
                  </div>
                  </div>
			<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">KIC Number</label>
                  <div class="col-sm-10">
                  <input name="kic_number" type="number" class="form-control" placeholder="Enter KIC Number"required >
                  </div>
                  </div>		  
		 <div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Address 1</label>
                  	<div class="col-sm-10"><textarea name="addrs1"  class="form-control" rows="4" cols="80"></textarea></div>
          </div>
					
			<div class="form-group">
                  	<label for="" class="col-sm-2 control-label" style="color:#009900">Address 2</label>
                  	<div class="col-sm-10"><textarea name="addrs2"  class="form-control" rows="4" cols="80"></textarea></div>
          	</div>
			
			
				  
			  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">City</label>
                  <div class="col-sm-10">
                  <input name="city" type="text" class="form-control" placeholder="city" value="Nagapattinam" required>
                  </div>
                  </div>	  
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">State</label>
                  <div class="col-sm-10">
                  <input name="state" type="text" class="form-control" placeholder="State" value="TamilNadu" required>
                  </div>
                  </div>
				  
				  <div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Zip Code</label>
                  <div class="col-sm-10">
                  <input name="zip" type="text" class="form-control" placeholder="Zip Code" >
                  </div>
                  </div>
				  
		<div class="form-group">
                  <label for="" class="col-sm-2 control-label" style="color:#009900">Country</label>
                  <div class="col-sm-10">
				<select name="country"  class="form-control" required>
										<option value="">Select a country&hellip;</option>
										<option value="AX">&#197;land Islands</option>
										<option value="AF">Afghanistan</option>
										<option value="AL">Albania</option>
										<option value="DZ">Algeria</option>
										<option value="AD">Andorra</option>
										<option value="AO">Angola</option>
										<option value="AI">Anguilla</option>
										<option value="AQ">Antarctica</option>
										<option value="AG">Antigua and Barbuda</option>
										<option value="AR">Argentina</option>
										<option value="AM">Armenia</option>
										<option value="AW">Aruba</option>
										<option value="AU">Australia</option>
										<option value="AT">Austria</option>
										<option value="AZ">Azerbaijan</option>
										<option value="BS">Bahamas</option>
										<option value="BH">Bahrain</option>
										<option value="BD">Bangladesh</option>
										<option value="BB">Barbados</option>
										<option value="BY">Belarus</option>
										<option value="PW">Belau</option>
										<option value="BE">Belgium</option>
										<option value="BZ">Belize</option>
										<option value="BJ">Benin</option>
										<option value="BM">Bermuda</option>
										<option value="BT">Bhutan</option>
										<option value="BO">Bolivia</option>
										<option value="BQ">Bonaire, Saint Eustatius and Saba</option>
										<option value="BA">Bosnia and Herzegovina</option>
										<option value="BW">Botswana</option>
										<option value="BV">Bouvet Island</option>
										<option value="BR">Brazil</option>
										<option value="IO">British Indian Ocean Territory</option>
										<option value="VG">British Virgin Islands</option>
										<option value="BN">Brunei</option>
										<option value="BG">Bulgaria</option>
										<option value="BF">Burkina Faso</option>
										<option value="BI">Burundi</option>
										<option value="KH">Cambodia</option>
										<option value="CM">Cameroon</option>
										<option value="CA">Canada</option>
										<option value="CV">Cape Verde</option>
										<option value="KY">Cayman Islands</option>
										<option value="CF">Central African Republic</option>
										<option value="TD">Chad</option>
										<option value="CL">Chile</option>
										<option value="CN">China</option>
										<option value="CX">Christmas Island</option>
										<option value="CC">Cocos (Keeling) Islands</option>
										<option value="CO">Colombia</option>
										<option value="KM">Comoros</option>
										<option value="CG">Congo (Brazzaville)</option>
										<option value="CD">Congo (Kinshasa)</option>
										<option value="CK">Cook Islands</option>
										<option value="CR">Costa Rica</option>
										<option value="HR">Croatia</option>
										<option value="CU">Cuba</option>
										<option value="CW">Cura&Ccedil;ao</option>
										<option value="CY">Cyprus</option>
										<option value="CZ">Czech Republic</option>
										<option value="DK">Denmark</option>
										<option value="DJ">Djibouti</option>
										<option value="DM">Dominica</option>
										<option value="DO">Dominican Republic</option>
										<option value="EC">Ecuador</option>
										<option value="EG">Egypt</option>
										<option value="SV">El Salvador</option>
										<option value="GQ">Equatorial Guinea</option>
										<option value="ER">Eritrea</option>
										<option value="EE">Estonia</option>
										<option value="ET">Ethiopia</option>
										<option value="FK">Falkland Islands</option>
										<option value="FO">Faroe Islands</option>
										<option value="FJ">Fiji</option>
										<option value="FI">Finland</option>
										<option value="FR">France</option>
										<option value="GF">French Guiana</option>
										<option value="PF">French Polynesia</option>
										<option value="TF">French Southern Territories</option>
										<option value="GA">Gabon</option>
										<option value="GM">Gambia</option>
										<option value="GE">Georgia</option>
										<option value="DE">Germany</option>
										<option value="GH">Ghana</option>
										<option value="GI">Gibraltar</option>
										<option value="GR">Greece</option>
										<option value="GL">Greenland</option>
										<option value="GD">Grenada</option>
										<option value="GP">Guadeloupe</option>
										<option value="GT">Guatemala</option>
										<option value="GG">Guernsey</option>
										<option value="GN">Guinea</option>
										<option value="GW">Guinea-Bissau</option>
										<option value="GY">Guyana</option>
										<option value="HT">Haiti</option>
										<option value="HM">Heard Island and McDonald Islands</option>
										<option value="HN">Honduras</option>
										<option value="HK">Hong Kong</option>
										<option value="HU">Hungary</option>
										<option value="IS">Iceland</option>
										<option value="IN" selected='selected'>India</option>
										<option value="ID">Indonesia</option>
										<option value="IR">Iran</option>
										<option value="IQ">Iraq</option>
										<option value="IM">Isle of Man</option>
										<option value="IL">Israel</option>
										<option value="IT">Italy</option>
										<option value="CI">Ivory Coast</option>
										<option value="JM">Jamaica</option>
										<option value="JP">Japan</option>
										<option value="JE">Jersey</option>
										<option value="JO">Jordan</option>
										<option value="KZ">Kazakhstan</option>
										<option value="KE">Kenya</option>
										<option value="KI">Kiribati</option>
										<option value="KW">Kuwait</option>
										<option value="KG">Kyrgyzstan</option>
										<option value="LA">Laos</option>
										<option value="LV">Latvia</option>
										<option value="LB">Lebanon</option>
										<option value="LS">Lesotho</option>
										<option value="LR">Liberia</option>
										<option value="LY">Libya</option>
										<option value="LI">Liechtenstein</option>
										<option value="LT">Lithuania</option>
										<option value="LU">Luxembourg</option>
										<option value="MO">Macao S.A.R., China</option>
										<option value="MK">Macedonia</option>
										<option value="MG">Madagascar</option>
										<option value="MW">Malawi</option>
										<option value="MY">Malaysia</option>
										<option value="MV">Maldives</option>
										<option value="ML">Mali</option>
										<option value="MT">Malta</option>
										<option value="MH">Marshall Islands</option>
										<option value="MQ">Martinique</option>
										<option value="MR">Mauritania</option>
										<option value="MU">Mauritius</option>
										<option value="YT">Mayotte</option>
										<option value="MX">Mexico</option>
										<option value="FM">Micronesia</option>
										<option value="MD">Moldova</option>
										<option value="MC">Monaco</option>
										<option value="MN">Mongolia</option>
										<option value="ME">Montenegro</option>
										<option value="MS">Montserrat</option>
										<option value="MA">Morocco</option>
										<option value="MZ">Mozambique</option>
										<option value="MM">Myanmar</option>
										<option value="NA">Namibia</option>
										<option value="NR">Nauru</option>
										<option value="NP">Nepal</option>
										<option value="NL">Netherlands</option>
										<option value="AN">Netherlands Antilles</option>
										<option value="NC">New Caledonia</option>
										<option value="NZ">New Zealand</option>
										<option value="NI">Nicaragua</option>
										<option value="NE">Niger</option>
										<option value="Nigeria">Nigeria</option>
										<option value="NU">Niue</option>
										<option value="NF">Norfolk Island</option>
										<option value="KP">North Korea</option>
										<option value="NO">Norway</option>
										<option value="OM">Oman</option>
										<option value="PK">Pakistan</option>
										<option value="PS">Palestinian Territory</option>
										<option value="PA">Panama</option>
										<option value="PG">Papua New Guinea</option>
										<option value="PY">Paraguay</option>
										<option value="PE">Peru</option>
										<option value="PH">Philippines</option>
										<option value="PN">Pitcairn</option>
										<option value="PL">Poland</option>
										<option value="PT">Portugal</option>
										<option value="QA">Qatar</option>
										<option value="IE">Republic of Ireland</option>
										<option value="RE">Reunion</option>
										<option value="RO">Romania</option>
										<option value="RU">Russia</option>
										<option value="RW">Rwanda</option>
										<option value="ST">S&atilde;o Tom&eacute; and Pr&iacute;ncipe</option>
										<option value="BL">Saint Barth&eacute;lemy</option>
										<option value="SH">Saint Helena</option>
										<option value="KN">Saint Kitts and Nevis</option>
										<option value="LC">Saint Lucia</option>
										<option value="SX">Saint Martin (Dutch part)</option>
										<option value="MF">Saint Martin (French part)</option>
										<option value="PM">Saint Pierre and Miquelon</option>
										<option value="VC">Saint Vincent and the Grenadines</option>
										<option value="SM">San Marino</option>
										<option value="SA">Saudi Arabia</option>
										<option value="SN">Senegal</option>
										<option value="RS">Serbia</option>
										<option value="SC">Seychelles</option>
										<option value="SL">Sierra Leone</option>
										<option value="SG">Singapore</option>
										<option value="SK">Slovakia</option>
										<option value="SI">Slovenia</option>
										<option value="SB">Solomon Islands</option>
										<option value="SO">Somalia</option>
										<option value="ZA">South Africa</option>
										<option value="GS">South Georgia/Sandwich Islands</option>
										<option value="KR">South Korea</option>
										<option value="SS">South Sudan</option>
										<option value="ES">Spain</option>
										<option value="LK">Sri Lanka</option>
										<option value="SD">Sudan</option>
										<option value="SR">Suriname</option>
										<option value="SJ">Svalbard and Jan Mayen</option>
										<option value="SZ">Swaziland</option>
										<option value="SE">Sweden</option>
										<option value="CH">Switzerland</option>
										<option value="SY">Syria</option>
										<option value="TW">Taiwan</option>
										<option value="TJ">Tajikistan</option>
										<option value="TZ">Tanzania</option>
										<option value="TH">Thailand</option>
										<option value="TL">Timor-Leste</option>
										<option value="TG">Togo</option>
										<option value="TK">Tokelau</option>
										<option value="TO">Tonga</option>
										<option value="TT">Trinidad and Tobago</option>
										<option value="TN">Tunisia</option>
										<option value="TR">Turkey</option>
										<option value="TM">Turkmenistan</option>
										<option value="TC">Turks and Caicos Islands</option>
										<option value="TV">Tuvalu</option>
										<option value="UG">Uganda</option>
										<option value="UA">Ukraine</option>
										<option value="AE">United Arab Emirates</option>
										<option value="GB">United Kingdom (UK)</option>
										<option value="US">United States (US)</option>
										<option value="UY">Uruguay</option>
										<option value="UZ">Uzbekistan</option>
										<option value="VU">Vanuatu</option>
										<option value="VA">Vatican</option>
										<option value="VE">Venezuela</option>
										<option value="VN">Vietnam</option>
										<option value="WF">Wallis and Futuna</option>
										<option value="EH">Western Sahara</option>
										<option value="WS">Western Samoa</option>
										<option value="YE">Yemen</option>
										<option value="ZM">Zambia</option>
										<option value="ZW">Zimbabwe</option>
									</select>                 
									 </div>
                 					 </div>

			 </div>
			 
			  <div align="right">
              <div class="box-footer">
                				<button type="reset" class="btn btn-primary btn-flat"><i class="fa fa-times">&nbsp;Reset</i></button>
                				<button name="save" type="submit" class="btn btn-success btn-flat"><i class="fa fa-save">&nbsp;Save</i></button>

              </div>
			  </div>
			  
			 </form> 


</div>	
</div>	
</div>
</div>