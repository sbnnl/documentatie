# language: nl
Functionaliteit: Borgstelling aanvullen (89cda69f7dfb1baa0141743fd647f6a0)

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling
      | kenmerk | SK-1232432-2 |
    Gegeven een borgstelling
      | kenmerk | SK-323232-1 |
    Gegeven kredietinformatie bericht
      | kenmerk                       | SK-1232432-2 |
      | uitbetaaldatum                | 2022-06-01   |
      | bruto kredietsom              | € 1825,34    |
      | netto kredietsom              | € 1550,77    |
      | laatste aflosdatum            | 2022-08-01   |
      | betaling aflossing            | € 300,47     |
      | betaling kredietvergoeding    | € 24,45      |
      | betaling vertragingsrente     | € 4,45       |
      | betaling boete rente          | € 1,12       |
      | achterstand aflossing         | € 100,17     |
      | achterstand kredietvergoeding | € 5,87       |
      | achterstand vertragingsrente  | € 0,78       |
      | achterstand boete rente       | € 0,02       |
      | voorstand                     | € 10,15      |
      | betalingsregeling             | ja           |
      | dubieus                       | ja           |
    Gegeven kredietinformatie bericht
      | kenmerk                       | SK-323232-1 |
      | uitbetaaldatum                | 2022-01-05  |
      | bruto kredietsom              | € 2300,98   |
      | netto kredietsom              | € 2198,34   |
      | laatste aflosdatum            | 2022-09-02  |
      | betaling aflossing            | € 233,64    |
      | betaling kredietvergoeding    | € 12,34     |
      | betaling vertragingsrente     | € 2,01      |
      | betaling boete rente          | € 0,23      |
      | achterstand aflossing         | € 99,23     |
      | achterstand kredietvergoeding | € 2,23      |
      | achterstand vertragingsrente  | € 0,2       |
      | achterstand boete rente       | € 0,12      |
      | voorstand                     | € 1,23      |
      | betalingsregeling             | nee         |
      | dubieus                       | nee         |

  Scenario: Borgstelling bijwerken wordt juist geregistreerd
    Wanneer het "bijwerken borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan zijn de borgstellingen juist aangevuld