# language: nl
Functionaliteit: Borgstelling aanvragen

  Achtergrond:
    Gegeven het kenmerk "093e08db-6791-454b-a172-068099514907"
    En een bruto kredietsom van € "4999.99"
    En het postcode gebied is "3743"
    En een looptijd van "36" maanden
    En een uitstaand saldo van € "2000"

  Scenario: Aanvraag borgstelling wordt juist geregistreerd
    Wanneer de "aanvraag borgstelling" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En is het kenmerk juist geregistreerd
    En is de bruto kredietsom juist geregistreerd
    En is de looptijd juist geregistreerd
    En is de geregistreerde gemeente "Baarn"

  Scenario: Standaard borgstelling aanvragen
    Wanneer de "aanvraag borgstelling" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "geaccepteerd"
    En is er een verkoop geregistreed van € "49,9999"
    En is het "borgstelling afgegeven bericht" ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € "5000"
    Wanneer de "aanvraag borgstelling" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van "37" maanden
    Wanneer de "aanvraag borgstelling" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

 Scenario: Maatwerk borgstelling accepteren
    Gegeven een bruto kredietsom van € "5000"
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de aanvraag wordt goedgekeurd
    Dan is de status van de borgstelling aanvraag "geaccepteerd"
    En is er een verkoop geregistreed van € "50"
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

 Scenario: Maatwerk borgstelling afwijzen
    Gegeven een bruto kredietsom van € "5000"
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de aanvraag wordt afgewezen
    Dan is de status van de borgstelling aanvraag "afgewezen"
    En is er geen verkoop geregistreed
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer de "aanvraag borgstelling" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het uitstaand saldo juist geregistreerd

  Scenario: Standaard borgstelling aanvragen vanuit een portefeuille overname
    Gegeven een looptijd van "35" maanden
    Wanneer de "portefeuille overname" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "geaccepteerd"
    En is er een verkoop geregistreed van € "20"
    En is het "borgstelling afgegeven bericht" ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € "5000"
    Wanneer de "portefeuille overname" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Verlopen standaard borgstelling aanvragen vanuit een portefeuille overname
    Gegeven een portefeuille overname
    Wanneer de "portefeuille overname" is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling aanvraag "afgewezen"
    En is er geen verkoop geregistreed
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt
    


  