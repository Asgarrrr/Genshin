<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="index.php">
            <img src="Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#extend" aria-expanded="false" >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="extend">
            <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" id="index" href="index.php">Character</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Weapons" href="Weapons.php">Weapons</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Artifacts" href="Artifacts.php">Artifacts</a>
                </li>

                <li class="nav-item">
                    <?php if(isset($_SESSION["_ID"]) && $_SESSION["_ID"]) { ?>
                        <a class="nav-link" id="User" href="User.php"><?php echo $_SESSION["pseudo"]; ?> </a>
                    <?php } else { ?>
                        <a class="userAdd nav-link" href="Login.php">+</a>
                    <?php } ?>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script>

    const url = window.location.pathname;

    document.getElementById(
        url.substring(
            url.lastIndexOf("/") + 1,
            url.lastIndexOf(".")
        )
    ).classList.add("active");


</script>