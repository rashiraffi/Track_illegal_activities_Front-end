<?php
    include('PHP/config.php');
    $records=mysqli_query($conn,"SELECT * from Smk_Record");

?>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="CSS/index.css">
    </head>
    <body>
        <?php
            if(mysqli_num_rows($records)==0)
            {
                echo "<h1> No Records Found </h1>";
            }
            while ($rec = mysqli_fetch_assoc($records))
            {
                echo "<div class='row'>";
                echo "<div class='card'>";
                    echo "<img src='".$rec['pat']."/".$rec['name']."' alt='Image' style='width:100%'>";
                    echo "<div class='container'>";
                        echo "<h4><b>Smoking</b></h4>";
                        echo "<p>City Hall</p> ";
                    echo "</div>";
                echo "</div>";
                echo "</div>";
            }
        ?>
    </body>

</html>