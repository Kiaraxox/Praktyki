1.SELECT Tytul FROM ksiazki WHERE Tytul LIKE 'ASP.NET%';

2.SELECT Tytul FROM ksiazki WHERE Tytul LIKE '%ASP.NET%';

2a. SELECT Tytul FROM ksiazki WHERE Tytul LIKE 'ASP$NET';

3.SELECT * FROM autorzy WHERE Imie LIKE 'R%';

4.SELECT * FROM autorzy WHERE Imie LIKE 'J%' OR Imie LIKE 'L%';

5.SELECT kza.IDAutora, kza.IDKsiazki, a.Nazwisko, K.Tytul, m.Cena
FROM ksiazkazautorem kza
INNER JOIN autorzy a ON kza.IDAutora = a.ID 
INNER JOIN ksiazki K ON kza.IDKsiazki = K.ID
INNER JOIN magazyn m ON k.ID = m.IDKsiazki
WHERE Nazwisko LIKE 'K%';

6.SELECT Tytul FROM ksiazki K
INNER JOIN magazyn m ON m.IDKsiazki = K.ID
WHERE Ilosc > 0;

7.SELECT SUM(magazyn.Cena * magazyn.Ilosc) 
  FROM ksiazki 
  JOIN magazyn ON ksiazki.ID=magazyn.IDKsiazki 
  WHERE ksiazki.Tytul LIKE '%SQL%';

8.SELECT AVG(Cena) FROM magazyn;

9.SELECT ksiazki.Tytul, autorzy.Nazwisko, ksiazki.ISBN, szczegoloweinformacje.Opis, magazyn.Cena 
  FROM ksiazki 
  JOIN ksiazkazautorem ON ksiazki.ID = ksiazkazautorem.IDKsiazki 
  JOIN autorzy ON ksiazkazautorem.IDAutora = autorzy.ID 
  JOIN szczegoloweinformacje ON ksiazki.ID = szczegoloweinformacje.IDKsiazki 
  JOIN magazyn ON ksiazki.ID = magazyn.IDKsiazki 
  WHERE ksiazki.ID = 6;

10.SELECT  ksiazki.ID, ksiazki.Tytul, autorzy.Imie, autorzy.Nazwisko, ksiazki.ISBN, szczegoloweinformacje.Opis, magazyn.Cena, magazyn.Ilosc 
  FROM ksiazki 
  JOIN ksiazkazautorem ON ksiazki.ID = ksiazkazautorem.IDKsiazki 
  JOIN autorzy ON ksiazkazautorem.IDAutora = autorzy.ID 
  JOIN szczegoloweinformacje ON ksiazki.ID = szczegoloweinformacje.IDKsiazki 
  JOIN magazyn ON ksiazki.ID = magazyn.IDKsiazki;



INSERT INTO autorzy (Imie, Nazwisko) VALUES ('Edyta', 'Świętek'), 
('J.K', 'Rowling'),
('Antoine', 'de Saint-Exupéry'), 
('Katarzyna', 'Małecka'), 
('Agnieszka', 'Jeż'), 
('Monika', 'Magoska-Suchar'), 
('Leszek', 'Orłowski'), 
('Cat', 'Gray'), 
('A.P', 'Mist'), 
('Hanna', 'Szczukowska-Białys'), 
('Anna', 'Charzanowska'), 
('Andrzej', 'Kopacki'), 
('Lucy Maud', 'Montgomery'), 
('Adalyn', 'Grace'), 
('John', 'Ajvide Lindqvist');


INSERT INTO ksiazki (Tytul, ISBN) VALUES ('Cień burzowych chmur', '9788327746849'),
('Harry Potter i Komnata Tajemnic', '9788382659726'),
('Mały Książę', '9788368132281'),
('Bound to the King', '9788384183458'),
('Śmierć w skalnym lesie', '9788368381665'),
('Mój stalker', '9788397460638'),
('Barca. Burzliwa dekada', '9788383307664'),
('Łowca dusz z Elbow Alley', '9788381419468'),
('Szept przeszłości', '9788382908541'),
('Przetok', '9788384061954'),
('Odnaleziony uśmiech', '9788384230688'),
('Ta ciemna ćma', '9788367948357'),
('Anne z Zielonych Szczytów', '9788367022637'),
('Foxglove', '9788383197791'),
('Pozwól mi wejść', '9788383356761');



INSERT INTO magazyn (IDKsiazki, Cena, Ilosc) VALUES (13, 24.81, 190),
(14, 19.99, 2387),
(15, 7.32, 4343),
(16, 30.64, 4),
(17, 28, 0),
(18, 39.99, 4),
(19, 34.34, 0),
(20, 23.49, 2),
(21, 32.69, 6),
(22, 31.49, 5),
(23, 16.96, 0),
(24, 27.79, 0),
(25, 14.79, 2711),
(26, 25.51, 150),
(27, 43.19, 95);

INSERT INTO ksiazkazautorem (IDKsiazki, IDAutora) VALUES (13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27,27);

INSERT INTO szczegoloweinformacje (IDKsiazki, Opis) VALUES (13, 'Epicka saga rodzinna osadzona w dramatycznych realiach powojennej Polski.
Druga wojna światowa dobiegła końca, jednak na małopolskiej wsi wciąż czuć strach i niepewność. Bronek – najstarszy z szóstki rodzeństwa – z dumą pracuje w rodzinnym gospodarstwie, które przed laty niemal dorównywało majątkom ziemiaństwa. Gdy ojciec poległ na froncie, to właśnie on musiał się stać głową rodziny.
Nadeszła jednak nowa władza i nastały nowe porządki. Reforma rolna, bezwzględny zarządca spółdzielni Bartłomiej Marczak oraz osobiste konflikty sprawiają, że Bronek traci dorobek pokoleń. Zmuszony do ucieczki z rodzinnej wsi podejmuje pracę przy budowie Nowej Huty – symbolu rodzącej się Polski Ludowej. Wkrótce dołącza do niego młodsza siostra Julia uciekająca przed obsesyjną nienawiścią Marczaka.
Czy rodzeństwo zdoła ocalić siebie i odnaleźć nadzieję w brutalnej powojennej rzeczywistości? A może przeszłość dopadnie ich nawet wśród rusztowań i cegieł powstającej Nowej Huty.
W tej porywającej opowieści o miłości, zemście i walce o przetrwanie autorka mistrzowsko maluje obraz życia w cieniu wczesnego PRL-u. To historia rodzinna, w której każdy wybór ma swoją cenę.'),

(14, '"Harry Potter i Komnata Tajemnic" w wyjątkowym wydaniu z kultowymi ilustracjami Mary GrandPré!
Wydanie jubileuszowe to ukłon w stronę nostalgii i powrót do estetyki, którą wielu dorosłych czytelników pamięta ze swoich pierwszych egzemplarzy Harry’ego Pottera.
Z okazji dwudziestopięciolecia pierwszego polskiego wydania serii o młodym czarodzieju przygotowano specjalną edycję z oryginalną okładką Mary GrandPré.
Wyrusz w sentymentalną podróż z książką, która stała się globalnym fenomenem i do dziś rozpala wyobraźnię milionów czytelników.
To doskonała okazja, by ponownie zanurzyć się w pełnej tajemnic i przygód historii, która zachwyca czytelników od pokoleń i na zawsze odmieniła literaturę fantasy dla młodzieży.'),

(15, 'Ekskluzywne wydanie z barwionymi brzegami.
Poetycka opowieść o miłości, przyjaźni i odpowiedzialności Antoine''a de Saint-Exupéry''ego została przetłumaczone na ponad 270 języków i należy do klasyki literatury światowej. Historia wrażliwego złotowłosego chłopca, wzbogacona pięknymi ilustracjami autora, od lat wzrusza dzieci i dorosłych na całym świecie.'),

(16, 'Dwudziestosześcioletnia Reva Mariana Souza ma w życiu jeden cel – chce walczyć z przestępczością w rodzinnym Rio de Janeiro. Szkolona przez ojca, wyrasta na odważną i nieugiętą kobietę. Jako agentka elitarnej jednostki policji żyje w tempie niepozwalającym jej na chwilę wytchnienia.
Choć praca jest jej pasją, Reva zmaga się z oczekiwaniami rodziców, którzy nie mogą pogodzić się z tym, że córka wykazuje brak zainteresowania sprawami sercowymi. Pod wpływem nacisków kobieta zgadza się przyjąć oświadczyny swojego chłopaka, choć nie czuje się przekonana do małżeństwa.
Wszystko zmienia się w dniu, gdy jej oddział wpada w zasadzkę, a Reva zostaje porwana i trafia w szpony Saverio Bragi – legendy brazylijskiego świata przestępczego. Mężczyzna ma swoje powody, by młodziutka agentka trafiła pod jego dach.
Reva nie jest kobietą, która chowa się w kącie. Walczy o swoją wolność, ale im dłużej przebywa w towarzystwie Saviero, tym bardziej zaczyna dostrzegać, że pod maską brutala kryje się coś, czego nie spodziewała się ujrzeć.
Książka zawiera treści nieodpowiednie dla osób poniżej osiemnastego roku życia.'),

(17, 'Kiedyś
Kiedy Anka poznaje Staszka, cieślę z Podhala, który przyjechał do jej rodzinnego miasta za pracą, od razu się w nim zakochuje. Niedługo potem zachodzi w ciążę. Para bierze ślub i zamieszkuje w domu babki Staszka na Nędzówce. Anka zaczyna pracę w pensjonacie w Kościelisku, a na świecie pojawiają się kolejne dzieci. Tymczasem Staszek coraz częściej zagląda do kieliszka. Kobieta zmuszona jest wziąć na siebie odpowiedzialność za dom i finanse.
Pewnego dnia Staszek znika. Żona twierdzi, że jak zwykle wyjechał do pracy i pewnie nie wróci przez dłuższy czas. Mimo to ludzie zaczynają plotkować...
Teraz
Para turystów wyrusza na wędrówkę po Tatrzańskim Parku Narodowym. Młodzi postanawiają zejść ze szlaku, by zobaczyć miejsce owiane legendą – Wantule, tajemniczy las w Dolinie Miętusiej. Mówi się, że dawno temu zbocza okolicznych turni osunęły się, by pogrzebać niegodziwych gazdów pod zwałami kamieni. Uwagę pary przykuwa błyszczący przedmiot w strumieniu. Postanawiają zabrać go ze sobą do Kościeliska, by znaleźć jego właściciela.
Tymczasem na Podhale trafiają komisarze z Archiwum X, chcący rozwiązać sprawę tajemniczego zaginięcia sprzed lat. Przypadkiem spotykają turystów, którzy pokazują im znalezisko z Wantul. Okazuje się, że to obrączka Staszka, co przekonuje Archiwum, że poszukiwany nie zniknął tak po prostu. Śledczy zagłębiają się w sprawę o wiele bardziej zawiłą i mroczną, niż ktokolwiek mógł przypuszczać...'),

(18, 'Matt Willis po utracie pracy w policji układa sobie życie jako prywatny detektyw. Jego skuteczność, dyskrecja oraz dawne kontakty zapewniają mu pracę u najbardziej wpływowych i bogatych mieszkańców Los Angeles. Jeden z jego klientów zleca mu niecodzienne zadanie – Matt ma śledzić jego nieślubną córkę Pamelę, z którą mężczyzna nie miał do tej pory kontaktu. Ma też strzec jej cnoty do czasu, aż do kraju wróci kandydat, którego ojciec wybrał jej na męża. Początkowo detektyw nie jest przekonany do tego zlecenia, ale szybko zmienia zdanie, gdy okazuje się, że dziewczyna jest bardzo w jego typie.
Pamela wychowała się bez ojca i w dzieciństwie przeszła przez piekło przemocy domowej za sprawą matki, która wikłała się w kolejne toksyczne związki. Dorosła Pam jest więc przekonana, że mężczyźni to zło i lepiej ich unikać. Jednak pewnego dnia jej sąsiadem zostaje charyzmatyczny bad boy, któremu dziewczyna nie umie się oprzeć. Tylko czy powinna mu ufać?
– Wróciłaś... – mruknąłem do siebie, nakierowując obiektyw lunety obserwacyjnej na okno sypialni należącej do Pameli, które nie było zasłonięte firanką ani roletą. – Pokaż mi się, skarbie, ładnie proszę...
Powieść spodoba się fankom motywów forbidden romance, age gap oraz stalkera.'),

(19, 'Od Messiego do Yamala – historia kryzysu i odrodzenia Barcelony
Gdy Barça pod wodzą Luisa Enrique sięgnęła po potrójną koronę, dokładając do Pucharu Króla i mistrzostwa Hiszpanii zwycięstwo w Lidze Mistrzów, wydawało się, że nie ma siły, która mogłaby ją powstrzymać. Tymczasem niedługo później rozpoczął się powolny i bolesny okres zawirowań. Góry przepalonych pieniędzy, fatalne decyzje transferowe, nietrafieni trenerzy, afery na boisku i poza nim, w końcu wyjątkowo nieudolne zarządzanie – to wszystko niemal doprowadziło do katastrofy. Leszek Orłowski postanowił dokładnie zbadać, dlaczego do tego doszło i komu Barcelona zawdzięcza ocalenie.
Czy Iniesta, Busquets, Piqué i Jordi Alba byli współodpowiedzialni za problemy finansowe klubu? Czy sam Leo Messi nie stał się w pewnym momencie przyczyną regresu drużyny? W jaki sposób Robert Lewandowski stanął na czele odbudowy zespołu, którą przeprowadził Hansi Flick? Komu przeszkadzało, że Wojciech Szczęsny popalał papierosy? I za co Lamine Yamal uwielbiał Ronaldinho Gaúcho?
Jeden z największych polskich znawców hiszpańskiej piłki wybiera się w długą podróż przez labirynty najnowszych dziejów Dumy Katalonii. W pełnej anegdot, spisków i nieoczywistych wniosków opowieści w bezkompromisowy sposób przedstawia dziesięć lat Barçy, która pod wodzą Josepa Marii Bartomeu o mało co nie zsunęła się na dno. Jednocześnie ukazuje momenty, w których do gry wkroczyli Joan Laporta i nowi bohaterowie, dzięki którym Blaugrana w cudowny sposób się odrodziła, dając radość milionom kibiców.
Choć nie wiadomo, czy ta bajkowa historia zakończy się szczęśliwie, nowa fala wychowanków z Lamine’em Yamalem na czele ma szansę ponownie wprowadzić Barcelonę tam, gdzie jest jej miejsce: na futbolowy szczyt.'),

(20, 'Dwunastoletni Pipp Ruskin przeprowadza się z rodzicami do Londynu. Ojciec ma tu prowadzić sklep ze starociami w starej kamienicy przy Elbow Alley 32. W dniu przyjazdu Pipp poznaje dziewczynę z sąsiedztwa, Fliss, która go ostrzega: „Jeśli tu zostaniecie, wydarzy się coś złego”. Tej samej nocy w mieszkaniu zaczynają się dziać dziwne rzeczy, a nad ranem Pipp odkrywa, że ktoś musiał podmienić mu rodziców, bo nagle stają się nieobecni; żadne nie zwraca na niego uwagi. Okazuje się, że Elbow Alley to nie miejsce dla zwykłych ludzi. Tutaj żyją wyłącznie wiedźmy, duchy, wampiry, banshee, upiory. Od jakiegoś czasu po dzielnicy krąży łowca dusz. Poluje na dusze tych, którzy mimo ostrzeżeń tu zamieszkają. Łowca wysysa dusze, zabierając całą osobowość człowieka, a puste ciała porzuca jak wydrążone muszle. Właśnie to przydarzyło się rodzicom Pippa. A przecież Fliss ostrzegała!'),

(21, 'Mia trafia do niewielkiego hotelu w górskim miasteczku, gdzie błaga o zatrudnienie i wynajęcie pokoju. Ostatecznie właścicielka, która nigdy nie odmawia pomocy, pozwala jej zostać, czując, że za dziewczyną ciągnie się mroczna historia.
Bojąca się własnego cienia młoda kobieta, pomimo powściągliwości i wyraźnego braku zaufania do kogokolwiek, zostaje przyjęta przez lokalną, wąską społeczność.
Zaczyna wkupywać się w łaski wszystkich odwiedzających hotelową knajpkę, lecz jeden ze stałych klientów – Mason – jest wyraźnie przeciwny jej obecności w tym miejscu.
Wszystko zmienia się w chwili, gdy to on staje się tym, którego pomocy Mia potrzebuje, a ratunek, który jej niesie, znacznie przekracza granice jego kompetencji.'),

(22, 'Czasem największe zbrodnie rodzą się z miłości – „Przetok” Hanny Szczukowskiej-Białys to naładowany emocjami thriller psychologiczny, który zapada w pamięci na długo.
Dominika próbuje poradzić sobie z żałobą po śmierci matki i odbudować życie, które legło w gruzach. Jakub zmaga się z dramatem nieuleczalnej choroby ojca i decyzjami, które na zawsze zmienią ich relację. Los splata ich drogi w najmniej oczekiwany sposób, a wspólne cierpienie prowadzi ku granicy, za którą kończy się moralność i zaczyna ciemna strona ludzkiej natury.
Mateusz wraca do rodzinnego miasta, próbując zacząć wszystko od nowa. Gdy podejmuje pracę kierowcy charyzmatycznego księdza Wirtela, jego życie niespodziewanie wkracza na niebezpieczne tory. Duchowny skrywa mroczną tajemnicę, a próba odkrycia prawdy okaże się początkiem śmiertelnie niebezpiecznej gry.
„Przetok” to thriller psychologiczny pełen napięcia, tajemnic i emocji. To historia o wierze, winie, granicach moralności i o tym, że zło potrafi narodzić się tam, gdzie najmniej się go spodziewamy.
„Duszny klimat, pogłębiająca się niepewność i finał tak bolesny, że będziecie o nim myśleć jeszcze długo po odłożeniu książki. Świetny thriller!” – Klaudia Muniak'),

(23, 'Czasem wystarczy jedno „cześć”, żeby odmienić wszystko!
Karol właśnie się przeprowadził. Nowe miasto, nowa szkoła, nowi ludzie… A on czuje się bardzo, bardzo samotny. Do czasu. Pewnego dnia spotyka kota o niezwykle inteligentnym spojrzeniu i jego właścicielkę – pannę Zuzannę, zgryźliwą staruszkę, którą dzieci z osiedla nazywają „wiedźmą”. Właśnie to dziwne spotkanie staje się początkiem wielkiej zmiany – nie tylko w życiu Karola, ale też całej okolicy!
„Odnaleziony uśmiech” to pełna ciepła i humoru opowieść o sile przyjaźni, magii codziennych chwil i o tym, że czasem zgubić można coś bardzo ważnego… a potem – niespodziewanie – znów to odnaleźć.
Dla młodych osób, które mierzą się z nowym początkiem. I dla dorosłych, którzy chcą im w tym towarzyszyć.'),

(24, 'Wiersze na resztkę życia. Czyli? Takie, które krążą wokół życiowej kulminacji i tego, co przychodzi w ślad za nią, złowróżbnie i niechybnie: schyłek życia, na koniec śmierć.
„Co z tym począć – pyta Andrzej Kopacki – że starość jest nie tylko przyjemnym matem wrześniowego słońca, ale też dotkliwym antagonizmem: między poczuciem bogactwa rzekomo pouczających przeżyć a ich zbędnością? Między spektakularną manifestacją potrzeb witalnych a natrętną refleksją nad życiowym kresem? […] Tu właśnie jesteś, starcze, staruszko: pomiędzy”. Śmierć wyziera z życiowego tła, a wiersz i namysł nad nim każą pamiętać o tkance doświadczeń: o „twarzach życia”, o figurach dziewczęcia i mędrca, dzieciaka i narcyza.
One także, obok motywów czysto tanatycznych, jak grecki młodzian z opuszczoną pochodnią czy danse macabre, należą do pejzażu nad rzeką pogranicza między życiem a śmiercią.
Niniejsza książka jest wybiórczą relacją z lirycznych wędrówek po tym dorzeczu: od wczesnonowoczesnych wierszy niemieckich przez niemieckojęzyczną lirykę XX wieku po całkiem spory suplement polski, który dostarcza materii porównawczej. A ćma?
W jednym z wierszy siedzi na ścianie, niby pospolita, a przecież zagadkowa.
Czym albo kim jest? Literatura próbuje dać odpowiedź. Ta ciemna ćma o tych próbach opowiada.'),

(25, 'Jedna z najbardziej kultowych powieści wszech czasów teraz w nowym – najbliższym oryginałowi – tłumaczeniu.
Pierwsza część niezwykle popularnego cyklu powieści o przygodach rudowłosej Anne Shirley. Akcja powieści toczy się na Wyspie Księcia Edwarda w latach siedemdziesiątych XIX wieku. Jedenastoletnia Anne opuszcza sierociniec i trafia do państwa Cuthbertów. Ich pierwsze spotkanie jest pełne emocji, ponieważ Anne miała być chłopcem i została adoptowana, aby pomagać w gospodarstwie. Marilla Cuthbert początkowo chce odesłać dziewczynkę, ale gadatliwa, obdarzona niezwykłą wyobraźnią Anne szybko zaskarbia sobie sympatię mrukliwego Matthew Cuthberta i ostatecznie zostaje w ich domu. Niedługo później poznaje Dianę Barry, z którą się zaprzyjaźnia, zaskakuje wszystkich przefarbowaniem włosów na zielono i dodaniem do ciasta waleriany zamiast wanilii. W jej życiu pojawia się także Gilbert Blythe, ale po tym, jak przezywa ją „Marchewka”, nie może liczyć na zbyt wiele. Dodatkowo między nim a Anne trwa rywalizacja o tytuł najlepszego ucznia. Losy Anne to wiele zabawnych i zaskakujących sytuacji, które do dziś wywołują uśmiech na twarzach starszych i młodszych czytelniczek.
Pierwszy tom przygód Anne Shirley ukazał się w 1908 roku. Wielkim wielbicielem powieści był między innymi Mark Twain.'),

(26, 'Intrygująca, magiczna, gotycka opowieść, rozgrywająca się wśród szelestu jedwabi, lśniących posadzek sal balowych i ogrodów rodzących śmiercionośne rośliny.
Właściciel Thorn Grove, Elijah Hawthorne zostaje oskarżony o zabójstwo.
Los, perfidny brat Śmierci, zamieszkał w pobliskiej posiadłości. W przeszłości boleśnie skrzywdzony, za wszelką cenę pragnie zemsty i zadośćuczynienia, którym ma być... Signa Farrow. Zaangażowane w ratowanie Hawthorne’a dziewczyna i jej kuzynka Blythe podejmują ryzykowną grę. Odkrywają nowe, nieznane wcześniej moce, które zmieniają bieg wydarzeń w Thorn Grove. Szukając mordercy, wikłają się w sieć dworskich intryg i złowrogich tajemnic, przez co ich przyjaźń zawiśnie na włosku.'),

(27, 'Ciemność zaprasza. Ale nie każdego. Czy odważysz się otworzyć drzwi… i wpuścić ją do środka?
Blackeberg, spokojne przedmieście Sztokholmu, skrywa coś więcej niż nudę codzienności. Nieśmiały i zakompleksiony dwunastoletni Oskar mieszka z matką. Nie ma przyjaciół, w szkole jest przedmiotem nieustannych drwin i szyderstw, koledzy dręczą go i prześladują. Pewnego dnia do sąsiedniego mieszkania wprowadza się Eli. Jest rówieśniczką Oskara, ale nie chodzi do szkoły. I opuszcza dom tylko po zmroku. Chłopiec dostrzega w niej bratnią duszę — inność, samotność i tajemnicę. Jednak Eli nie jest taka jak inni… Nagle w okolicy zostaje znalezione ciało nastolatka – bez kropli krwi. Lecz Oskara bardziej intryguje fakt, że ofiara to jego prześladowca. A przecież jest ich wielu…
Pozwól mi wejść to mroczna, hipnotyzująca opowieść o dojrzewaniu, potrzebie bliskości i granicach człowieczeństwa. John Ajvide Lindqvist, nazywany „szwedzkim Stephenem Kingiem”, splata grozę z melancholią w sposób, który zapada głęboko w pamięć.
„Cudownie ponura i oszczędna w emocjach. Kapitalne połączenie horroru z thrillerem i opowieścią o dojrzewaniu” „Kirkus Reviews”');






