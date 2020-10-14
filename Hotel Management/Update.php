<?php
session_start();
// Connect to the database
$con = mysqli_connect("localhost","root","", "infinity");
// Make sure we connected successfully
if(! $con)
{
    die('Connection Failed'.mysqli_error());
}
$hotelid = $_SESSION["hotelid"];
$managerid = $_SESSION["managerid"];
if(isset($_POST['hrent'])){

    $hrent = $_POST["hrent"];
    $query = "UPDATE hotel_t SET Hotel_rent = $hrent where Hotel_id = $hotelid and hotel_manager_id = $managerid ";
    $query_run = mysqli_query($con,$query);
}
if(isset($_POST['qua1'])){

    $qua = $_POST["qua1"];
    $query = "UPDATE hotel_t SET Hotel_qarantine = $qua where Hotel_id = $hotelid and hotel_manager_id = $managerid ";
    $query_run = mysqli_query($con,$query);
}
if(isset($_POST['avail'])){

    $avail = $_POST["avail"];
    $query = "UPDATE hotel_t SET available = $avail where Hotel_id = $hotelid and hotel_manager_id = $managerid ";
    $query_run = mysqli_query($con,$query);
}
if(isset($_POST['del'])){

    $del = $_POST["del"];
    if($del == 1){
        $query = "DELETE from hotel_t where Hotel_id = $hotelid and hotel_manager_id = $managerid ";
        $query_run = mysqli_query($con,$query);
    }
}

header('Location: admin.php');
?>