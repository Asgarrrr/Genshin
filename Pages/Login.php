<?php include "../PHP/DB.php";
    session_start();
    if(isset($_SESSION["_ID"])){
         echo "<meta http-equiv='refresh' content='0;url=../' />";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter</title>
    <link rel="stylesheet" href="../Style/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#extend" aria-expanded="false" >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="extend">
                <ul class="navbar-nav mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../">Characters</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Weapon.php">Weapons</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Artifacts.php">Artifacts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=""><?php echo $_SESSION['username']; ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row loginform">
        <div class="col p-0 text-center d-flex justify-content-center align-items-center display-none"
            style="background-color: #01060E;">
            <img src="../Assets/login.svg" class="w-75">
        </div>
        <div class="col p-0 d-flex justify-content-center align-items-center flex-column w-100">
            <form class="w-75" action="#" method="post">
                <h2>Login</h2>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" name="username" placeholder="username"
                        required="">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="password"
                        required="">
                </div>
                <p class="text-end">No account yet ? <a href="register.php">Register</a></p>
                <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block mt-3">Login Now</button>
            </form>
        </div>
    </div>

    <?php
        if(!isset($_SESSION["_ID"])){
            if((isset($_POST['password'])) && (isset($_POST['username']))){
                $request = $dbh->query('SELECT * FROM `User` WHERE `Pseudo` ="'.$_POST["username"].'" AND `Password` = "'.$_POST["password"].'"');
                $dataRequest = $request->fetch();
                if(($_POST['username'] = $dataRequest['Pseudo']) && ($_POST['password'] = $dataRequest['Password'])){
                    session_start();
                    $_SESSION["username"] = $_POST["username"];
                    $_SESSION["_ID"] = $dataRequest['_ID'];
                    echo "<meta http-equiv='refresh' content='0;url=../' />";
                }
                elseif(!$dataRequest){
                    echo"<p>Vos identifiants sont erronés</p>";
                }  
            }
        }
    ?>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
</script>

</html>
