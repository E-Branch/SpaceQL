<head>
    <link rel="stylesheet" href="styles.css?v=1" type="text/css">
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

    <?php
        include 'connect.php';
        $conn = OpenCon();
    ?>

    <div class="main">
        <div class="main__container-2">
            <form action="processdeletemeteors.php" method="post" class="main__content">
                <h1>Delete meteors entities</h1>
                <h3>Select which meteors to delete:</h3>
                <?php
                    $result = $conn->query("select meteorid from meteors");
                    echo "<select name='meteorid'>";
                    while($row = $result->fetch_assoc()) {
                        unset($meteorid);
                        $meteorid = $row['meteorid'];
                        unset($result2);
                        $result2 = $conn->query("select name from discoveredminorobjects where $meteorid=minobjid");
                        $row2 = $result2->fetch_assoc();
                        unset($name);
                        $meteorid = $row['meteorid'];
                        $name = $row2['name'];
                        //echo '<option value="'.$meteorid.'">'.$name.'</option>';
                        echo "<option value=\"$meteorid\">$meteorid $name</option>";
                    }
                    echo "</select>";
                ?>

                <input type="submit" value="Delete" name="submit">
            </form>
        </div>
    </div>