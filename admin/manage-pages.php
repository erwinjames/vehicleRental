<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
if($_POST['submit']=="Update")
{
	$pagetype=$_GET['type'];
	$pagedetails=$_POST['pgedetails'];
$sql = "UPDATE tblpages SET detail=:pagedetails WHERE type=:pagetype";
$query = $dbh->prepare($sql);
$query -> bindParam(':pagetype',$pagetype, PDO::PARAM_STR);
$query-> bindParam(':pagedetails',$pagedetails, PDO::PARAM_STR);
$query -> execute();
$msg="Page data updated  successfully";

}
	if ($_POST['add_para']=="add") {
			$pagetype=$_GET['type'];
	        $pagedetails=$_POST['pgedetails'];
	 $sql = "INSERT INTO table_services(paragraph,type) VALUES ('$pagedetails','$pagetype')";
	 $dbh->exec($sql);
	 $msg="Insert";
	}
	if($_POST['del']=="delete"){
		$pagetype=$_GET['type'];
		$para=$_POST['para'];
		$id=$_POST['id'];

		$pagedetails=$_POST['pgedetails'];
		$sql="DELETE from table_services where id=$id";
		$dbh->exec($sql);
		$msg="deleted";

    }
    if($_POST['submit']=="apdet")
{
	$pagetype=$_GET['type'];
	$pagedetails=$_POST['parara'];
	$id=$_POST['id'];
$sql = "UPDATE table_services SET paragraph='$pagedetails' WHERE id=$id";
$query = $dbh->prepare($sql);
$query -> bindParam(':pagetype',$pagetype, PDO::PARAM_STR);
$query-> bindParam(':pagedetails',$pagedetails, PDO::PARAM_STR);
$query -> execute();
$msg="Page data updated  successfully";

}
	

?>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>Car Rental Portal | Admin Create Brand</title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
	<script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<script type="text/javascript" src="nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>


</head>

<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Manage Pages </h2>

						<div class="row">
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">Form fields</div>
									<div class="panel-body">
										<form method="post" name="chngpwd" class="form-horizontal" onSubmit="return valid();">
										
											
  	        	  <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
											<div class="form-group">
												<label class="col-sm-4 control-label">select Page</label>
												<div class="col-sm-8">
															   <select name="menu1" onChange="MM_jumpMenu('parent',this,0)">
                  <option value="" selected="selected" class="form-control">***Select One***</option>
                  <option value="manage-pages.php?type=terms">terms and condition</option>
                  <option value="manage-pages.php?type=privacy">privacy and policy</option>
                  <option value="manage-pages.php?type=aboutus">aboutus</option> 
                  <option value="manage-pages.php?type=services">our services</option>
                </select>
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-4 control-label">selected Page</label>
												<div class="col-sm-8">
						<?php
			
			switch($_GET['type'])
			{
				case "terms" :
									echo "Terms and Conditions";
									break;
				
				case "privacy" :
									echo "Privacy And Policy";
									break;
				
				case "aboutus" :
									echo "About US";
									break;
			
				case "services" :
									echo "Our Services";
									break;
											
				default :
								echo "";
								break;
			
			}
			
			?>
												</div>
											</div>
								<?php if ($_GET['type']=="services") {?>
	
<div class="form-group">
												<label class="col-sm-4 control-label">Page Details </label>
												<div class="col-sm-8">
			<textarea class="form-control" rows="5" cols="50" name="pgedetails" id="pgedetails" placeholder="Package Details" required>
				
									 	
										<?php 
$pagetype=$_GET['type'];
$sql = "SELECT detail from tblpages where type=:pagetype ";
$query = $dbh -> prepare($sql);
$query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{		
echo htmlentities($result->detail);
}}
?> 

										</textarea>

                                            <button type="submit" name="submit" value="Update" id="submit" class="fa fa-pencil" title="Update" style="float: right;background-color: blue;color: white;"></button>
											<button name="add_para" value="add" class="fa fa-plus-circle"  title="Add paragraph" style="float: right;background-color:green;color:white;"></button>
											<br>
											<br>
											
								
												
												
										


<?php 
 $sql = 'SELECT * from table_services where type="services"';
 
    $q = $dbh->query($sql);
    $q->setFetchMode(PDO::FETCH_ASSOC); ?>




                                                 <?php while ($row = $q->fetch()): ?>
                                                 <?php $id=$row['id']; ?>
                                                 <?php $pagetype=$_GET['type']; ?>

        					
                           <input type="hidden" name="id" value="<?php echo $row['id']; ?>"/>                
       	                    <button title="Update" type="submit" name='submit' value='apdet' class='fa fa-pencil' style='float:right;background-color: blue;color:white;'></button>
                           <button title="Delete"  type="submit" name='del' value='delete' class='fa fa-close' style='float:right;background-color:red;color:white;'></button>
                           <textarea class="form-control" rows="5" cols="50" name="parara" id="pgedetails" placeholder="Package Details" required><?php echo htmlspecialchars($row['paragraph']) ?></textarea><br>
                        
                   								 <?php endwhile; ?>




    											</div>
											</div>



<?php } else {?> 

									<div class="form-group">
												<label class="col-sm-4 control-label">Page Details </label>
												<div class="col-sm-8">
			<textarea class="form-control" rows="5" cols="50" name="pgedetails" id="pgedetails" placeholder="Package Details" required>
									 	
										<?php 
$pagetype=$_GET['type'];
$sql = "SELECT detail from tblpages where type=:pagetype";
$query = $dbh -> prepare($sql);
$query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{		
echo htmlentities($result->detail);
}}
?> 

										</textarea> 

												</div>
											</div>
											<?php } ?>
											
											<?php if ($_GET['type']!="services") {?>
												
									
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-4">
								
												<button type="submit" name="submit" value="Update" id="submit" class="btn-primary btn">Update</button>
												</div>
											</div>
												  <?php	} ?>

										</form>

									</div>
								</div>
							</div>
							
						</div>
						
					

					</div>
				</div>
				
			
			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
<?php } ?>