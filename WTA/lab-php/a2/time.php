<?php
date_default_timezone_set('Asia/Kolkata');

$timestamp = time();
$date_time = date("d-m-Y (D) H:i:s", $timestamp);
echo "Current date and local time on this server is $date_time\n";

$favcolor = rand(1,5);

switch ($favcolor) {
    case 1:
        echo "Hello";
        break;
    case 2:
        echo "Hi";
        break;
    case 3:
        echo "How are you";
        break;
    case 4:
        echo "Good morning";
        break;    
    case 5:
        echo "Good afternoon";
        break;    
    default:
        echo "Good night";
}
$handle = fopen("counter.txt", "r"); if(!$handle){ echo "could not open the file" ; } else { $counter = (int ) fread($handle,20); fclose ($handle); $counter++; echo" <strong><div></div> you are visitor no ". $counter . " </strong> " ; $handle = fopen("counter.txt", "w" ); fwrite($handle,$counter) ; fclose ($handle) ; }

$cookie_name = "user";
$cookie_value = "John Doe";
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");

if(!isset($_COOKIE[$cookie_name])) {
    echo "Cookie named '" . $cookie_name . "' is not set!";
} else {
    echo "Cookie '" . $cookie_name . "' is set!<br>";
    echo "Value is: " . $_COOKIE[$cookie_name] ."<br>";
}

echo "Deleting cookie <br>";
setcookie($cookie_name, "", time() - 3600);

session_start();
$_SESSION["favcolor"] = "green";
$_SESSION["favanimal"] = "cat";
echo "Session variables are set.<br>";
echo "Favorite color is " . $_SESSION["favcolor"] . ".<br>";
echo "Favorite animal is " . $_SESSION["favanimal"] . ".";
session_unset(); 

session_destroy(); 

?>

