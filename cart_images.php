<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container py-5">
        <div class="row mt-4">

        <?php
include 'image upload/connection.php';
$query="SELECT * FROM stock";
$query_run=mysqli_query($conn,$query);
$check=mysqli_num_rows($query_run) > 0;

if($check){
    while($row=mysqli_fetch_array($query_run))
    {
        ?>
        
        <div class="col md-4">
                <div class="card">
                    <div class="card-body">
<img src="../../upload/.<?php echo $row['image'];?>"  class="card-img-top"alt="cart_images">
<h3 class="card-title"><?php  echo $row['place'];?></h3>

<h3 class="card-title"><?php  echo $row['id'];?></h3>
<h3 class="card-title"><?php  echo $row['name'];?></h3>
<h3 class="card-title"><?php  echo $row['Availble_Qty'];?></h3>
<h3 class="card-title"><?php  echo $row['Missing_Qty'];?></h3>
<h3 class="card-title"><?php  echo $row['Date_of_added'];?></h3>





<p class="card-text">dummy data</p>
                    </div>
                </div>

            </div>
        </div>

    </div>

        <?php
       
    }

}

else{
    echo"data not found";
}
?>
    
</body>
</html>