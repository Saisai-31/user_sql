<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php
    $cnx = mysqli_connect("localhost", "toto", "tatashow", "mabaseauto");

    if(mysqli_connect_errno()){
    echo "Erreur de connexion à la base ".mysqli_connect_error();
    }



    $sql="select * from personnes";




    mysqli_close($cnx);

?>





</body>
</html>