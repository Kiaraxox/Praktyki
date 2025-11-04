<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Magazyn</title>
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
        <h2>Magazyn</h2>
    </div>

    <div class="tabela">

    <table>

        <caption><strong>stan magazynu na dzień 27.10.2025</strong></caption> 
        
        <thead>
            <th>ID</th>
            <th>Tytuł</th>
            <th>ISBN</th>
            <th>Ilość</th>
        </thead>

        <tbody>
            <?php
            $connect = mysqli_connect("localhost", "root", "", "ksiegarnia");
            $sql = "SELECT kza.IDKsiazki, k.Tytul, k.ISBN, m.Ilosc
            FROM ksiazki k
            JOIN ksiazkazautorem kza ON k.ID = kza.IDKsiazki
            JOIN magazyn m ON kza.IDKsiazki = m.IDKsiazki;";

            $result = mysqli_query($connect, $sql);

            $wiersz = mysqli_fetch_all($result, MYSQLI_ASSOC);

            for($i = 0; $i < count($wiersz); $i++) {
                echo '<tr>';
                echo '<td>' . $wiersz[$i]["IDKsiazki"] . '</td>';
                echo '<td>' . $wiersz[$i]["Tytul"] . '</td>';
                echo '<td>' . $wiersz[$i]["ISBN"] . '</td>';
                echo '<td>' . $wiersz[$i]["Ilosc"] . '</td>';
            echo '</tr>';
            }
            
            ?>
        </tbody>
    </table>
    <div class="przycisk">
    <button>Aktualizuj</button>
    </div>
    </div>
</body>