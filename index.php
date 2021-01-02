<?php

    try {
        session_start();
        include("PHP/DB.php");
        $stmt = $dbh->query("SELECT * FROM Characters");
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — Database</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link rel="stylesheet" href="Style/style.css">
    </head>
    <script src="JS/gsap.js"></script>
    <script>
            window.addEventListener("pageshow", function ( event , ui) {

            if(localStorage.getItem('fromCharacter')) {
                sessionStorage.removeItem('fromCharacter');
                document.getElementsByClassName("sliderIn--first")[0].style.transform = "translate(-0%)";
                document.getElementsByClassName("sliderIn--second")[0].style.transform = "translate(-0%)";
            }
        })
        </script>
    <body>

        <div class="slider sliderIn--first"></div>
        <div class="slider sliderIn--second"></div>

        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Characters</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Pages/Weapon.php">Weapons</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Pages/Artifacts.php">Artifacts</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="container">
            <div class="card secondary card-body">
                <div class="data-list">

                    <?php foreach ($stmt as $u) { ?>
                        <a class='portrait' data-href='Pages/Character.php?Name=<?php echo $u["_ID"] ?>'>
                            <div class="icon" style="background-image: url('Assets/Character/Faces/<?php echo $u["_ID"] ?>.png')"></div>
                            <h2 class='name'><?php echo $u["_ID"] ?></h2>
                        </a>
                    <?php } ?>

                </div>
            </div>
        </main>
    </body>


    <!-- <script src="JS/script.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <script>

        document.querySelectorAll('[data-href]').forEach(item => {
            item.addEventListener('click', event => {
                console.log();
                gsap.to(".sliderIn--first", { x: "-100%", duration: 0.8, });
                gsap.to(".sliderIn--second", { x: "-100%", duration: 0.4, onComplete: () => {
                    localStorage.setItem('fromCharacter', true)
                    document.location.href = "http://localhost/Genshin/" + event.srcElement.offsetParent.dataset.href
                }});
            })
        })

    </script>
</html>