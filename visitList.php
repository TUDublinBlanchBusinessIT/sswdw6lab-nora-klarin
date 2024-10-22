<?php

include("dbcon.php");

$sql = "SELECT visit.visit_date, visit.visit_time, patient.firstname AS PatientFirstName,patient.surname AS PatientSurname, doctor.FirstName AS DoctorFirstName, doctor.surname AS DoctorSurname, doctor.specialism FROM visit
INNER JOIN patient ON
visit.patient_id = patient.id
INNER JOIN doctor ON
visit.doctor_id = doctor.id
";
$result = mysqli_query($conn,$sql);
while($row=mysqli_fetch_assoc($result)) {
    $vdate = $row['visit_date'];
    $vtime = $row['visit_time'];
    $pfn = $row['PatientFirstName'];
    $psn = $row['PatientSurname'];
    $dfn = $row['DoctorFirstName'];
    $dsn= $row['DoctorSurname'];
    $ds= $row['specialism'];
    
    echo "<TR><TD>$vdate</TD><TD>$vtime</TD><TD>$pfn</TD><TD>$psn</TD><TD>$dfn</TD><TD>$dsn</TD><TD>$ds</TD>";    
}
mysqli_close($conn);
?>