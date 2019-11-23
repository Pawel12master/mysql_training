-- ###### baza employees ###### 

-- wyszukaj wszystkie niepowtarzalne tytuly stanowisk i posortuj je alfabetycznie

-- zlicz ilość wystąpień tytułów stanowisk, grupowanie

-- dla każdego niepowtarzalnego tytułu stanowiska policz dlugość tego tytułu i wg tej wartości posegreguj malejąco

-- wyświetl listę wszystkich pracowników (imię, nazwisko), którzy nosili tytuł xyz - można samemu zdecydować jaki się chce

-- policz jaką średnią wartość wynagrodzenia mają procownicy na poszczególnych stanowiskach, w wersji bardziej zaawansowanej należy zbadać
-- wartość średnią w podanym miesiącu/roku

-- dla każdego pracownika należy podać wartość wynagrodzenia MIN i MAX wraz ze wskazaniem na jakim wtedy stanowisku pracował, 
-- bardziej zaawansowana wersja podaje również okres w jakim to było

-- dla każdego pracownika podaj pierwszy departament zatrudnienia i stawkę wynagrodzenia (ref.1)

-- zbadaj czy istnieje pracownik/pracownicy ze zniżką wynagrodzenia 

-- wykonaj update wynagrodzenia dla praconików, których imie zawiera dokładnie 3 litery, wzrost wynagorzenia o 5%

-- znajdz tych pracowników, którzy awansowali 3 i więcej razy

-- znajdz pracownika, który pracuje najdłużej na stanowisku, może to być dla pojedyńczego stanowiska-wybranego
-- bardziej zaawansowana zakłada wyświetlenie dla wszystkich stanowisk z podaniem długości trwania, np 5 lat 4 m-ce

-- dla wszyskich stanowisk 'Senior' znajdz osobę która na tym stanowisku zarabia najmiej i osobę która zarabia najwięcej

-- wykonaj uaktualnienie tabeli employees aby data zatrudnia było by default ustawiana na bierzącą przy wykonaniu instert
-- wykonaj kilka poleceń inster aby sprawdzić czy zmiana działa poprawnie

-- wykonaj uaktualnienie tabeli employees aby zwiększyć drukronie pojemność columeny last_name

-- stwórz tabele address aby przechowywać adresy lokalizacji biura, powiązanie 1:1 z tabelą departments, dokonaj 
-- odpowiedniego powiązanie przez referencję klucza obcego, pamiętaj o opcji cascade all

-- stwórz widok dla zapytania oznaczonego ref.1

-- stórz widok, w którym prezentujesz aktualnego kierownika departamentu

-- na tabeli pracowników dodau indeks na kolumnę last_name

-- napisz procedurę, która będzie tworzyła nową tabelę z imieniem i nazwiskiem pracownika oraz adresem email w domenie @example.com
-- i hasłem startowym-losowe znaki, w wersji trudniejszej należy zapobiegać duplikacji adresów email.

-- napisz funkcję, która będzie liczyła premię świąteczną 5% na podstawie ostatatniej wypłaty, w wersji trudniejszej
-- należy podstawę obliczyć z ostatnich 12 miesięcy

-- napisz funkcję przeliczającą wartość wynagrodzenia z obecnej waluty na inną wg przelicznika, a wynik jest podawany
-- wzoru obowiązującego w danym systemie, np. PL: 1 234 zł a USD: $ 1.234 

-- dla tabeli pracowników napisz trigger na update, który robi kopię starego rekordu do tabeli bck i dodaje timestamp wykonania operacji

-- napisz trigger na tabelę titles, która gdy pracownik otrzymuje update nazwy stanowiska wykonuje update dla tego pracownika w columne to_date
-- i wstawia dzień poprzeni jako datę zakończenia pracy na tym stanowisku i dodaje nowy rekord z nowym stanowiskiem od dnia bierzącego (ref.2)

-- stworzona procedura działa zgodnie z opisanym triggerem ref.2 ale pozwala podać datę jako parametr od kiedy pracownik rozpoczyna swoją
-- pracę na nowym stanowisku, procedura również optrzymuje id pracownika, dla którego należy wykonać operację.


-- ###### baza world ###### 

-- zaimportuj dane do bazy world, baza testowa mysql, URL https://dev.mysql.com/doc/index-other.html

-- wyświetl wszyskie nazwy kontynentów z bazy, niepowtarzalne wartości

-- wyświetl wszystkie państwa z kontunentu, np. Azja

-- wyświetl kraje, kontynent, które mają populację większą niż 100 mln obywateli w porządku malejącym wg populacji

-- podaj zaagregowaną informację ile państw znajduje się na poszczególnych kontynentach, porządek malejący wg kolumny z wyliczeniem

-- podaj zaagregowaną sumę ludzi mieszkających na poszczególnych kontynentach, porządek malejący wg kolumny z wyliczeniem

-- podaj średnie zagęszczenie mieszkańców na km^2 w każdym państwie, porządek malejący wg kolumny z wyliczeniem

-- dla każdego państwa wybierz i zaprezentuj miasto w którym mieszka najwięcej obywateli, podaj wartość ile to procent całej populacji kraju

-- wyświetl kraje w których stolica państwa zawiera nazwę państwa

-- wyświetl 10 państw, których żyje się najdłużej

-- wyświetl 10 państw, których żyje się najkrócej

-- podaj język urzędowy dla każdego państwa

-- podaj listę krajów, które mają więcej niż 1 język urzędowy

-- podaj listę krajów, które mają więcej niż 5 języków na obsarze swojego kraju

-- w jednym wyniku podaj nazwę kraju, język urzędowy, procent os mówiących tym językiem
-- a w kolejnej częsci język nieurzędowy z największym odsetkiem os nim mówiącym, tutaj nelży wykorzystać 'union'
-- w wersji zaawanosowanej można spr złączyć te informację i podać jako pojedyńczy wiersz

-- dla Polski należy policzyć sumę mieszkańców miast w poszczególnych województwach, podać ile to procent całej populacji

-- napisz procedurę, która do nowej tabeli wstawi wszystkie kraje, które uzyskały niepodległość z dekady dla której podajemy rok
-- np rok 1918 to dekada 1910-1919, rok 1881 to dekada 1880-1889

-- z każdego kontynentu wyświetl państwo z najwyższym PKB (GNP), w wersji trudniejsz 5 państw z najwyższym PKB














