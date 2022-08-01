<head>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="navbar">
        <div class="navbar__container">
            <ul class="navbar__menu">
            </br>
                <li class="navbar__btn">
                    <a href="/home.html" class="button">
                        Home
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main">
        <div class="main__container-2">
            <div class="main__content">
                <?php
                    include 'connect.php';
                    $conn = OpenCon();
                    $photo = $_POST['photo'];
                    
                    $datetaken = $_POST['datetaken'];
                    $telescopeid = $_POST['telescopid'];

                    if(file_exists($photo) ){
                        echo "<h2>sorry, file already exists.</h2>";
                        exit();
                    }

                    $filename = $_FILES['photo']['name'];
                    $basename = basename($filename);
                    
                    echo "<h3>contents </h3>";
                    $photocontents = file_get_contents($photo);
                    echo "<h3>no error with contents </h3>";
                    $photoencode = base64_encode($photocontents);
                    echo "<h3>no error with encoding </h3>";

                    $check = 0;
                    $result = $conn->query("select count(*) from photosfromtelescope where filename = '.$basename.'");
                    while($row = $result->fetch_assoc()){
                        $check = $check + $row[0];
                    }
                    if($check != 0){
                        echo "<h2> filename '$basename' already taken </h2>".$conn->error;
                    } else {
                        echo "<h2> inserting '$basename'</h2>";
                        $sql = "insert into photosfromtelescope values ('$basename','$photoencode','$telescopeid', '$datetaken');";
                        try{
                            $success = $conn->query($sql);
                            echo "<h3>no error with query </h3>";
                        }catch(Exception $e){
                            echo "<h3>something went wrong with query: '$sql'!</h3>";
                            echo "<h3>exeption", $e->getMessage(), "</h3>";
                        };
                        if ($success === TRUE) { 
                            echo "<h2>Record updated successfully</h2>";
                        } 
                        else {
                            echo "Error updating record:" . $conn->error;
                        }
                    }
                    

                    /*
                    $name = $_POST['name'];
                    $datecreated = $_POST['datecreated'];
                    $operational = $_POST['operational'];
                    $orbitaldistance = $_POST['orbitaldistance'];
                    $orbitalspeed = $_POST['orbitalspeed'];
                    $arrivaldate = $_POST['arrivaldate'];
                    $techid = rand();
                    $largeobjid = $_POST['largeobjid'];

                    $result = $conn->query("select techid from technologylocatedat");
                    while ($row = $result->fetch_assoc()) {
                        unset($id);
                        $id = $row['techid'];
                        if($techid == $id){
                            $techid = rand();
                        }
                    }
                    
                    $sql = "INSERT INTO TechnologyLocatedAt VALUES ('$techid','$name','$datecreated', '$operational','$largeobjid','$orbitaldistance','$orbitalspeed','$arrivaldate');";
                    if ($conn->query($sql) === TRUE) { 
                    } 
                    else {
                        echo "Error updating record: " . $conn->error;
                    }
                    $sql = "INSERT INTO Telescopes VALUES ('$techid')";
                    if ($conn->query($sql) === TRUE) { 
                        echo "<h2>Record updated successfully</h2>";
                    } 
                    else {
                        echo "Error updating record: " . $conn->error;
                    }
                    */
                ?>
            </div>
        </div>
    </div>
</body>