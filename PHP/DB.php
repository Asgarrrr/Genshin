<?php
    try {
        $dbh = new PDO('mysql:host=mysql-genshin.alwaysdata.net;dbname=genshin_db', "genshin", "23w9j423w9j4");
        //$dbh = new PDO('mysql:host=localhost;dbname=genshin_db', "root", "root");
    } catch (PDOException $e) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }


    function group_by($key, $data) {
        $result = array();

        foreach($data as $val) {
            if(array_key_exists($key, $val)){
                $result[$val[$key]][] = $val;
            }else{
                $result[""][] = $val;
            }
        }

        return $result;
    }
?>
