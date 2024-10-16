<?php

include("dbcon.php");

$sql = "select * from visit";
$result = mysqli_query($conn,$sql);
while($row=mysqli_fetch_assoc($result)) {
    $vdate = $row['visit_date'];
    $vtime = $row['visit_time'];
    $pid = $row['patient_id'];
    
    echo "<TR><TD>$vdate</TD><TD>$vtime</TD><TD>$pid</TD>";    
}
mysqli_close($conn);
?>