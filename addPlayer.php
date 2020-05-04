<?php 

require_once('connection.php');

        echo "<form method='post' action='addPlayer.php'>";
        echo "<table style='border: solid 1px black;'>";
        echo "<tbody>";
        echo "<tr><td>Jersey number</td><td><input name='jersey_number' type='integer' size='25'></td></tr>";
        echo "<tr><td>First name</td><td><input name='first_name' type='text' size='25'></td></tr>";
        echo "<tr><td>Last name</td><td><input name='last_name' type='text' size='25'></td></tr>";
        echo "<tr><td>Position</td><td><input name='position' type='text' size='25'></td></tr>";
        echo "<tr><td>Height</td><td><input name='height' type='text' min='0.01' step='0.01' size='8'></td></tr>";
      echo "<tr><td>Weight</td><td><input name='weight' type='number' min='0.01' step='0.01' size='8'></td></tr>";
        echo "<tr><td>Class</td><td><input name='class' type='text' min='0.01' step='0.01' size='8'></td></tr>";
        echo "<tr><td>Birth place</td><td><input name='birthplace' type='text' min='0.01' step='0.01' size='8'></td></tr>";
         try {
                $stmt = prepare("INSERT INTO employees (jersey_number, first_name, last_name,position, height, class, birthplace)
                VALUES (:jersey_number,:first_name, :last_name,:position, :height,:class, :birthplace)");
        
                                       
                $stmt->bindValue(':jersey_number', $_POST['jersey_number']);
                $stmt->bindValue(':first_name', $_POST['first_name']);
                $stmt->bindValue(':last_name', $_POST['last_name']);
                $stmt->bindValue(':position', $_POST['position']);
                $stmt->bindValue(':height', $_POST['height']);
                $stmt->bindValue(':class', $_POST['class']);
                $stmt->bindValue(':birthplace', $_POST['birthplace']);
   
                
                $stmt->execute();
            } 
        
            echo "Success";
        
      
    
?>

</select>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
</body>
</html>
