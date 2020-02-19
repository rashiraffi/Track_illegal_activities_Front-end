<?php
    include('PHP/config.php');
    $records=mysqli_query($conn,"SELECT * from Smk_Record order by id desc");
    #header("Refresh: 2;");
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="CSS/index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class='container'>
        <h2> hai </h2>
        <?php
            if(mysqli_num_rows($records)==0)
            {
                echo "<h1> No Records Found </h1>";
            }
            $i=0;
            while ($rec = mysqli_fetch_assoc($records))
            {   if($i==0)
                    {echo "<div class='row'>";}
                        echo "<div class='col-sm gy'>";
                            echo "<img src='images/".$rec['name']."' style='width:100%'>";
                            echo "<h5><b>Smoking ".$rec['percentage']." %</b></h5>";
                            echo "<h5>Location: ".$rec['loc']."</h6>";
                        echo "</div>";
                        $i=($i+1)%3;
                if($i==0)    
                    {echo "</div>";}
            }
        ?>
        </div>
    </body>

</html>