<?php
   $tytul = "";
   $autor = "";
   $cena = "";
   $isbn = "";
   $ilosc = "";
   $strony = "";
   $opis = "";

    $connect = mysqli_connect("localhost", "root", "", "ksiegarnia");

    function zapisz_do_bazy($sql)
    {
        global $connect;
        return mysqli_query($connect, $sql);
    }

    function pobierz_dane_z_formularza($nazwa_pola)
    {
        if(isset($_POST[$nazwa_pola]))
            return $_POST[$nazwa_pola];
    }

    if (isset($_POST["nowa-ksiazka"])) {

        $tytul = pobierz_dane_z_formularza("Tytul");
        $isbn = pobierz_dane_z_formularza("ISBN");
           
        if (!empty($tytul) && !empty($isbn)){
             $sql = "INSERT INTO ksiazki (Tytul, ISBN) VALUES ('$tytul', '$isbn')";
            
            if(zapisz_do_bazy($sql)){
                 $id_ksiazki = mysqli_insert_id($connect);
            }
        }
        
        $autor = pobierz_dane_z_formularza("Autor");

        if(!empty($autor)) {

          $imie_nazwisko = explode(" ", $autor);
          $ilosc_elementow = count($imie_nazwisko);
         
            if($ilosc_elementow == 2)
            {            
              $imie = $imie_nazwisko[0];
              $nazwisko = $imie_nazwisko[1];
            }
           else {
             $imie = implode(" ", array_slice($imie_nazwisko, 0, $ilosc_elementow - 1)); 
             $nazwisko = $imie_nazwisko[$ilosc_elementow - 1];
            }
            $sql = "INSERT INTO autorzy (Imie, Nazwisko) VALUES ('$imie', '$nazwisko')";

            if(zapisz_do_bazy($sql)){
                 $id_autora = mysqli_insert_id($connect);
            }

            if (!empty($id_ksiazki) && !empty($id_autora)) {
                $sql = "INSERT INTO ksiazkazautorem (IDKsiazki, IDAutora) VALUES ('$id_ksiazki', '$id_autora')";
                zapisz_do_bazy($sql);
            }

        }

          $cena = pobierz_dane_z_formularza("Cena");
          $ilosc = pobierz_dane_z_formularza("Ilosc");
           
        if (!empty($cena) && !empty($ilosc)){
             $sql = "INSERT INTO magazyn (IDKsiazki, Cena, Ilosc) VALUES ('$id_ksiazki', '$cena', '$ilosc')";
            
            if(zapisz_do_bazy($sql)){
                 $id_ksiazki = mysqli_insert_id($connect);
            }

        }

        $opis = pobierz_dane_z_formularza("opis");
        $strony = pobierz_dane_z_formularza("opis");

        if(!empty($opis) && !empty($strony)){
           $sql = "INSERT INTO szczegoloweinformacje (IDKsiazki, Opis, Strony) VALUES ('$id_ksiazki', '$opis', '$strony')";

            if(zapisz_do_bazy($sql)){
                 $id_ksiazki = mysqli_insert_id($connect);
            }
             
        }

    }

        

?>
