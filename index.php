<?php

    try {
        // Start or resume session
        session_start();
        // Include database connection 
        include("PHP/DB.php");
        // Get all character 
        $stmt = $dbh->query("SELECT * FROM Characters");
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage();
        die();
    }

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Genshin — Database</title>

        <!-- CSS Import -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="Style/style.css">
    </head>

    <script src="JS/gsap.js"></script>
    <script>
            // On page display 
            window.addEventListener("pageshow", function ( event , ui) {
            // If user return form chracter page, do no replay transiion animation
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

        <?php 
            // include navbar
            include("Navbar.php"); ?>

        <main class="container">
            <div class="card secondary card-body">
                <div class="data-list">

                    <?php 
                        // foreach character
                        foreach ($stmt as $u) { ?>
                        <a class='portrait' data-href='Character.php?Name=<?php echo $u["_ID"] ?>'>
                            <div class="icon" style="background-image: url('Assets/Character/Faces/<?php echo $u["_ID"] ?>.png')"></div>
                            <h2 class='name'><?php echo $u["_ID"] ?></h2>
                        </a>
                    <?php } ?>

                </div>
            </div>
        </main>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <script>

        document.querySelectorAll('[data-href]').forEach(item => {
            item.addEventListener('click', event => {
                const target = event.target.parentNode.attributes[1].value;
                if (target) {
                    gsap.to(".sliderIn--first", { x: "-100%", duration: 0.8, });
                    gsap.to(".sliderIn--second", { x: "-100%", duration: 0.4, onComplete: () => {
                        localStorage.setItem('fromCharacter', true)
                        document.location.href = target;
               }});
                }
            })
        })

    </script>
</html>