function walidacja() {
    const MAX_DLUGOSC_TYTULU = 100;
    const MAX_DLUGOSC_AUTORA = 46;
    const MIN_DLUGOSC_CENY  = 0;
    const MIN_DLUGOSC_STRON = 0;
    const MAX_DLUGOSC_ISBN = 17;
    const MAX_DLUGOSC_OPISU = 200;


    var pole_tytul = document.getElementById("tytul");
    var pole_autor = document.getElementById("autor");
    var pole_cena = document.getElementById("cena");
    var pole_isbn = document.getElementById("ISBN");
    var pole_ilosc = document.getElementById("ilosc");
    var pole_strony = document.getElementById("strony");
    var pole_opis = document.getElementById("opis");


    if(pole_tytul.value == "" || pole_tytul.value.length > MAX_DLUGOSC_TYTULU) 
    {
        pole_tytul.className = "blad_walidacji";
    }
    else {
        pole_tytul.className = "zawartosc-formularz-pole";
    }
    

    if(pole_autor.value == "" || pole_autor.value.length > MAX_DLUGOSC_AUTORA)
    {
        pole_autor.className = "blad_walidacji";
    }
    else {
        pole_autor.className = "zawartosc-formularz-pole";
    }

    
    if(pole_cena.value == "" || Number(pole_cena.value) < MIN_DLUGOSC_CENY )
    {
        pole_cena.className = "blad_walidacji";
    }
    else {
        pole_cena.className = "zawartosc-formularz-pole";
    }


    if(pole_isbn.value == "" || pole_isbn.value.length > MAX_DLUGOSC_ISBN)
    {
        pole_isbn.className = "blad_walidacji";
    }
    else {
        pole_isbn.className = "zawartosc-formularz-pole";
    }


    if(pole_ilosc.value == "")
    {
        pole_ilosc.className = "blad_walidacji";
    }
    else {
        pole_ilosc.className = "zawartosc-formularz-pole";
    }


    if(pole_strony.value == "" || Number(pole_strony.value) < MIN_DLUGOSC_STRON)
    {
        pole_strony.className = "blad_walidacji";
    }
    else {
        pole_strony.className = "zawartosc-formularz-pole";
    }


    if(pole_opis.value.length > MAX_DLUGOSC_OPISU)
    {
        pole_opis.className = "blad_walidacji";
    }
    else {
        pole_opis.className = "zawartosc-formularz-pole";
    }

    

}