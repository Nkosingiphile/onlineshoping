

<?php
#database user declaration
$dbUser ="root";
$dbPass =""; #password not requred as long db is local
$dbName ="WillcomStaff";
$dbhost = "localhost";

#create connection
$dbConn = mysqli_connect($dbhost,$dbUser, $dbPass,$dbName);
// Check connection
if (!$dbConn) {
      die("Connection failed: " . mysqli_connect_error());  
}
 else {
   # mysql_select_db($dbName);
    #echo "Connected successfully\n";
    #echo "Connect Successfully. Host info: " . mysqli_get_host_info($dbConn);
    
 
// Close connection
#mysqli_close($dbConn);
  
}

?>