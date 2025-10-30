<?php
$connect = mysqli_connect("localhost", "root", "", "ksiegarnia");

   $tytul = "";
   $autor = "";
   $cena = "";
   $isbn = "";
   $ilosc = "";
   $strony = "";
   $opis = "";

    if (isset($_POST["nowa-ksiazka"])) {

        if (isset($_POST["Tytul"]) && (isset($_POST["ISBN"]))){
            $tytul = $_POST["Tytul"];
            $isbn = $_POST["ISBN"];
            $sql = "INSERT INTO `ksiazki`(Tytul, ISBN) VALUES ('$tytul', '$isbn');";
             mysqli_query($connect,$sql);
        }
        
        if(isset($_POST["Autor"])){
            $autor = $_POST["Autor"];
        }

        if(isset($_POST["Cena"]) && (isset($_POST["Ilosc"]))){
            $ilosc = $_POST["Ilosc"];
            $cena = $_POST["Cena"];
            $sql = "INSERT INTO `magazyn`(Cena, Ilosc) VALUES ('$cena', '$ilosc');";
            mysqli_query($connect,$sql);
        }

        if(isset($_POST["strony"])){
            $strony = $_POST["strony"];
        }

        if(isset($_POST["opis"])){
            $opis = $_POST["opis"];
            $sql = "INSERT INTO `szczegoloweinformacje`(Opis) VALUES ('$opis');";
             mysqli_query($connect,$sql);
        }

        }

        
?>