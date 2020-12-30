<?php

    try {
        include("../PHP/DB.php");
        $stmt = $dbh->query("SELECT * FROM Weapons")->fetchAll(\PDO::FETCH_ASSOC);
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }

    $grouped = group_by("Type", $stmt);

    function weaponList($type) {

        try {

            global $grouped;

            $thisWeapon = $grouped[$type];
            $i = 0;

            array_multisort(array_column($thisWeapon, '_ID'), SORT_ASC, $thisWeapon);

            echo "<div class='data-list'>";

            foreach ($thisWeapon as $data) {

                $cleanName = str_replace(' ', '_', $data["Name"]) ?>

                <a class='portrait' data-href='Pages/Character.php?Name=<?php echo $data["Name"] ?>'>
                    <img class="icon" src="https://rerollcdn.com/GENSHIN/Weapon/NEW/<?php echo $cleanName; ?>.png">
                    <h2 class='name'><?php echo $data["Name"] ?></h2>
                </a>

                <?php $i++;
            }

            echo "</div>";
        } catch (\Throwable $th) {
            echo $th;
        }

    }

?>

<!DOCTYPE html>
<html lang="fr">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — Database</title>

        <!-- —— CSS ———————————————————————————————————————————————————————— -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="../Style/style.css">

    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0">

                        <li class="nav-item">
                            <a class="nav-link" href="../">Characters</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Weapon.php">Weapons</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Artifacts.php">Artifacts</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="container">
            <div class="card secondary card-body">

                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation"><a class="nav-link active" id="toWeapon1" data-bs-toggle="pill" href="#Weapon1" role="tab" aria-controls="Weapon1" aria-selected="false">Sword</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" id="toWeapon2" data-bs-toggle="pill" href="#Weapon2" role="tab" aria-controls="Weapon2" aria-selected="false">Claymore</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" id="toWeapon3" data-bs-toggle="pill" href="#Weapon3" role="tab" aria-controls="Weapon3" aria-selected="false">Bow</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" id="toWeapon4" data-bs-toggle="pill" href="#Weapon4" role="tab" aria-controls="Weapon4" aria-selected="false">Polearm</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" id="toWeapon5" data-bs-toggle="pill" href="#Weapon5" role="tab" aria-controls="Weapon5" aria-selected="true">Catalyst</a></li>
                </ul>

                <div class="tab-content" id="WeaponTypeList">
                    <div class="tab-pane fade show active" id="Weapon1" role="tabpanel" aria-labelledby="pills-Weapon1-tab"> <?php weaponList(0); ?> </div>
                    <div class="tab-pane fade" id="Weapon2" role="tabpanel" aria-labelledby="pills-Weapon2-tab"> <?php weaponList(1); ?> </div>
                    <div class="tab-pane fade" id="Weapon3" role="tabpanel" aria-labelledby="pills-Weapon3-tab"> <?php weaponList(2); ?> </div>
                    <div class="tab-pane fade" id="Weapon4" role="tabpanel" aria-labelledby="pills-Weapon4-tab"> <?php weaponList(3); ?> </div>
                    <div class="tab-pane fade" id="Weapon5" role="tabpanel" aria-labelledby="pills-Weapon5-tab"> <?php weaponList(4); ?> </div>
                </div>

            </div>
        </main>
    </body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("weaponType1");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

</html>