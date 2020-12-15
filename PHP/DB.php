<?php
    try {
        //  $dbh = new PDO('mysql:host=mysql-genshin.alwaysdata.net;dbname=genshin_db', "genshin", "23w9j423w9j4");
        $dbh = new PDO('mysql:localhost;dbname=Genshin', "root", "23w9j4");
    } catch (PDOException $e) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }
?>