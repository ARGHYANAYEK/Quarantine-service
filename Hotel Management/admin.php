

<?php
session_start();   // session starts with the help of this function 


if(isset($_SESSION['use']))   // Checking whether the session is already there or not if 
                            // true then header redirect it to the home page directly 
{
  $display_name = $_SESSION['use'];
  $_SESSION['status'] = 1;
}
else {
  $_SESSION['status'] = 0;
}

 ?>

<!DOCTYPE html>
<html>
    <head>
    <title>Infinity/hotels booking site</title>
    <style>
    .bg {
        background-image: url(image/Front/bg.jpg);
        background-size: cover;
      }
      /* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  padding: 40px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
  font-size : 30px;
  background-color: white;
}

article {
  float: right;
  padding: 20px;
  width: 60%;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
      </style>
    </head>
    <body class ="bg">
        <div style="color:white;padding:0px;font-size: 30px;">
            <h1>Infinity...</h1>
            
                <div>
                 <div class="welcome" id = "welcome" >Welcome <b><?php echo $display_name; ?></b>, You have successfully logged in!<br></div>
                </div>
                <section>
  <nav>
    <ul>
      <li><a href="hotelupload.php">Add New Hotel</a></li>
      <li><a href="hotel.php">your Hotels</a></li>
      <li><a href="logoutpage.php">Log out</a></li>
    </ul>
  </nav>
  
  <article>
    <h1>Hotel Management</h1>
    <p>Stay hassle-free and manage multiplework stream on a simple platform. our futuristic tech offerings are designed to manage all aspects of hotel management</p>
    <h1> Guest Experience </h1>
    <p> Infinity provides comprehensive and regular staff training to maintain our operation quality.</p>
  </article>
</section>
            
        </div>
        
        
    </body>
    </html>
   