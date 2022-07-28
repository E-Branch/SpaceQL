<?php
    include 'connect.php';
    $conn = OpenCon();
    $name = $_POST['name'];
    $diameter = $_POST['diameter'];
    $mass = $_POST['mass'];
    $discoverdate = $_POST['discoverdate'];
    $orbitalperiod = $_POST['orbitalperiod'];
    $rotationalperiod = $_POST['rotationalperiod'];
    $discoverspaceagency = $_POST['spaceagencyid'];
    $largeobjid = rand();

    $result = $conn->query("select largeobjid from discoveredlargeobjects");
    while ($row = $result->fetch_assoc()) {
        unset($id);
        if($largeobjid == $id){
            $largeobjid = rand();
        }
    }

    $sql = "INSERT INTO DiscoveredLargeObjects VALUES ('$largeobjid','$name','$diameter','$mass','$discoverspaceagency','$discoverdate');";
    if ($conn->query($sql) === TRUE) { 
        echo "Record updated successfully";
    } 
    else {
        echo "Error updating record: " . $conn->error;
    }


?>