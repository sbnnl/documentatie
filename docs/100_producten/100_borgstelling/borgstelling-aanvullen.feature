# language: nl
Functionaliteit: Borgstelling aanvullen

  Achtergrond: 
    Gegeven het kenmerk "093e08db-6791-454b-a172-068099514907"
    En uitbetaaldatum is "2022-06-1"
    En kredietsom is bruto "1825.34" en netto "1550.77"
    En betalingen laatste aflosdatum is "2022-08-01" en aflossing is "300.47" en kredietvergoeding is "24.45" en vertragingsrente is "4.45" en boete rente is "1.12"
    En achterstanden aflossing is "100.17" en kredietvergoeding is "5.87" en vertragingsrente is "0.78" en boete rente is "0.02"
    En voorstand is "10.15"
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