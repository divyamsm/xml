<html>
    <head>
        <title>
            Bill
        </title>
    </head>
    
    <body>
        <?php
        echo "<div>Hello ".$_POST["first_name"]." ".$_POST["last_name"]."</div>";
        echo "<div> Number of tickets  ";
        echo $_POST["no"];
        echo "</div>";
        echo "<div> Shirt Size  ";
        echo $_POST["shirt"];
        echo "</div>";
        $ans = 100 * (int)$_POST["no"];
        $ans = $ans + 0.12 * $ans;
        echo "<div> bill  ";
        echo $ans;
        echo "</div>";
        echo "<div> Confirmation email is sent to ";
        echo $_POST["email"];
        echo "</div>";
        
        ?>
    </body>
</html>