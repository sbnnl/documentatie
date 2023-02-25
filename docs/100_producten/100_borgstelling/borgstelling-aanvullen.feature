# language: nl
Functionaliteit: Borgstelling aanvullen

  Achtergrond:
    Gegeven een kredietbank
    En een afgegeven borgstelling
    En een uitbetaaldatum "2022-06-01"
    En een bruto kredietsom van € 1825,34
    En een netto kredietsom van € 1550,77
    En een laatste aflosdatum "2022-08-01"
    En een betaling aflossing is 300,47
    En een betaling kredietvergoeding is 24,45
    En een betaling vertragingsrente is 4,45
    En een betaling boete rente is 1,12
    En een achterstand aflossing is 100,17
    En een achterstand kredietvergoeding is 5,87
    En een achterstand vertragingsrente is 0,78
    En een achterstand boete rente is 0,02
    En voorstand is 10,15
    En betalingsregeling is "ja"
    En dubieus is "ja"

  Scenario: Borgstelling bijwerken wordt juist geregistreerd
    Wanneer het "bijwerken borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de uitbetaaldatum juist geregistreerd
    En is de kredietsom juist geregistreerd
    En zijn de betalingen juist geregistreerd
    En zijn de achterstanden juist geregistreerd
    En is de voorstand juist geregistreerd
    En is de betalingsregeling juist geregistreerd
    En is dubieus juist geregistreerd