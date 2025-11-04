<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Szczegóły</title>
</head>
<body>
     <header>
       <h1>Ksiegarnia</h1>
    </header>

    <nav>
            <a class="odsylacz" href="index.php">Dostępne książki</a>
            
            <a class="odsylacz" href="add_book.php">Dodaj Książkę</a>

            <a href="store.php">Magazyn</a>
    </nav>

    <div class="ksiazki">
        <h2>Dostępne książki</h2>
    </div>

    <div class="zawartosc">
        <?php
        $connect = mysqli_connect("localhost", "root", "", "ksiegarnia");
        $id = $_GET["id"];
        
        $sql = "SELECT k.Tytul, sz.Okladka, sz.Opis, m.Cena, a.Imie, a.Nazwisko, m.Ilosc, sz.Strony, K.ISBN
        FROM ksiazki k 
        JOIN ksiazkazautorem kza ON k.ID = kza.IDKsiazki
        JOIN szczegoloweinformacje sz ON k.ID = sz.IDKsiazki
        JOIN autorzy a ON kza.IDAutora = a.ID
        JOIN magazyn m ON k.ID = m.IDKsiazki
        WHERE k.ID = $id;";
        
        $result = mysqli_query($connect, $sql);

        $wiersz = mysqli_fetch_assoc($result);

        echo '<div class="ksiazka">';

        echo '<div class="okladka">';

        echo '<img src="img/' . $wiersz["Okladka"] . '" alt="Okładka">';

        echo '</div>';

        echo '<div class="info">';

        echo '<h3 class="title">' . $wiersz["Tytul"] . '</h3>';
        echo '<p><strong>Autor: </strong>' . $wiersz["Imie"] . ' ' . $wiersz["Nazwisko"] . '</p>';
        echo '<p><strong>Cena: </strong>' . $wiersz["Cena"] . ' zł</p>';
        echo '<p><strong>ISBN: </strong>' . $wiersz["ISBN"] . '</p>';
        echo '<p><strong>Ilość: </strong>' . $wiersz["Ilosc"] . '</p>';
        echo '<p><strong>Strony: </strong>' . $wiersz["Strony"] . '</p>';
        echo '<p><strong>Opis: </strong>' . $wiersz["Opis"] . '</p>';

        echo '</div>';


        ?>

       
</body>
