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
                <h1>Add new entity</h1>
                <h2>Scroll down for more information</h2>
            </div>
        </div>
    </div>

    <?php
        include 'connect.php';
        $conn = OpenCon();
    ?>
    <!-- <div class="services">
        <div class="services__container">
            <div class="services__card services__card-4 noHover">
                <form action="process-add.php" method="post">
                    <input name="name" type="text" placeholder="Name">
                    <input name="diameter" type="text" placeholder="Diameter (integer)">
                    <input name="mass" type="text" placeholder="Mass">
                    <input name="discoverdate" type="text" placeholder="Discover Date YYYY-MM-DD">
                    <input name="orbitalperiod" type="text" placeholder="Orbital Period (float)">
                    <input name="rotationalperiod" type="text" placeholder="Rotational Period (float)">
                    <h3>SpaceAgencyID<h3>
                    <input type="submit" value="Insert">
                    <h2>Add Planet<h2>
                </form>
            </div>
        </div>
    </div>
    -->
    <div class="services">
        <div class="services__container">

            <form action="process-addplanet.php" method="post" class="services__card services__card-4">
                <input name="name" type="text" placeholder="Name">
                <input name="diameter" type="text" placeholder="Diameter (integer)">
                <input name="mass" type="text" placeholder="Mass">
                <input name="discoverdate" type="text" placeholder="Discover Date YYYY-MM-DD">
                <input name="orbitalperiod" type="text" placeholder="Orbital Period (float)">
                <input name="rotationalperiod" type="text" placeholder="Rotational Period (float)">
                <h3>Select the space agency that made the discovery:<h3>
                <?php
                    $result = $conn->query("select spaceagencyid, name from spaceagencies");
                    echo "<select name='spaceagencyid'>";
                    while($row = $result->fetch_assoc()) {
                        unset($spaceagencyid,$name);
                        $spaceagencyid = $row['spaceagencyid'];
                        $name = $row['name'];
                        echo '<option value="'.$spaceagencyid.'">'.$name.'</option>';
                    }
                ?>
                <input type="submit" value="Insert">
                <h2>Add planet</h2>
            </form>

            <form action="process-add.php" class="services__card services__card-4">
                <input name="name" type="text" placeholder="Name">
                <input name="diameter" type="text" placeholder="Diameter (integer)">
                <input name="mass" type="text" placeholder="Mass">
                <input name="discoverdate" type="text" placeholder="Discover Date YYYY-MM-DD">
                <input name="composition" type="text" placeholder="Composition">
                <h3>SpaceAgencyID<h3>
                <?php
                    $result = $conn->query("select spaceAgencyid, name from spaceagencies");
                    echo "<select name='spaceagencyid'>";
                    while($row = $result->fetch_assoc()) {
                        unset($spaceagencyid,$name);
                        $spaceagencyid = $row['spaceagencyid'];
                        $name = $row['name'];
                        echo '<option value="'.$spaceagencyid.'">'.$name.'</option>';
                    }
                ?>
                <input type="submit" value="Insert">
                <h2>Add star</h2>
            </form>

            
            <form action="process-addgalaxy.php" class="services__card services__card-4">
                <input name="name" type="text" placeholder="Name">
                <input name="diameter" type="text" placeholder="Diameter (integer)">
                <input name="mass" type="text" placeholder="Mass">
                <input name="discoverdate" type="text" placeholder="Discover Date YYYY-MM-DD">
                <input name="composition" type="text" placeholder="Composition">
                <h3>SpaceAgencyID<h3>
                <?php
                    $result = $conn->query("select spaceAgencyid, name from spaceagencies");
                    echo "<select name='spaceagencyid'>";
                    while($row = $result->fetch_assoc()) {
                        unset($spaceagencyid,$name);
                        $spaceagencyid = $row['spaceagencyid'];
                        $name = $row['name'];
                        echo '<option value="'.$spaceagencyid.'">'.$name.'</option>';
                    }
                ?>
                <input type="submit" value="Insert">
                <h2>Add star</h2>
            </form>
            
        </div>
    </div>

</body>