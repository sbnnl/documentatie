# language: nl
Functionaliteit: Borgstelling aanvragen

  Achtergrond: 
    Gegeven het kenmerk "093e08db-6791-454b-a172-068099514907"
    En een bruto kredietsom van € "4999.99"
    En het postcode gebied is "3743"
    En een looptijd van "36" maanden
    En soort lening is "SK"
    En statistieken
      | code                | waarde |
      | Bevolkingsgroep     |      1 |
      | Betalende instantie |      2 |
      | Kredietdoel         |      3 |
      | Leeftijdsgroep      |      4 |
      | Soort borgstelling  |      5 |
    En een contact emailadres "test@test.nl"
    En een uitstaand saldo van € "2000"

  Scenario: Aanvraag borgstelling wordt juist geregistreerd
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het kenmerk juist geregistreerd
    En is de bruto kredietsom juist geregistreerd
    En is de looptijd juist geregistreerd
    En is het soort lening juist geregistreerd
    En zijn de statistieken juist geregistreerd
    En is het contact emailadres juist geregistreerd
    En is de geregistreerde gemeente "Baarn"

  Scenario: Standaard borgstelling aanvragen
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "afgegeven"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € "50.0"
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € "5000"
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van "37" maanden
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling accepteren
    Gegeven een bruto kredietsom van € "5000"
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de aanvraag wordt goedgekeurd
    Dan is de status van de borgstelling "afgegeven"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € "50.0"
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling afwijzen
    Gegeven een bruto kredietsom van € "5000"
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de aanvraag wordt afgewezen
    Dan is de status van de borgstelling "afgewezen"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het uitstaand saldo juist geregistreerd

  Scenario: Standaard borgstelling aanvragen vanuit een portefeuille overname
    Gegeven een looptijd van "35" maanden
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "afgegeven"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € "20.0"
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling vanuit een portefeuille overname op basis van bruto kredietsom aanvragen
    Gegeven een looptijd van "35" maanden
    En een bruto kredietsom van € "5000"
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "maatwerk"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling vanuit een portefeuille overname op basis van looptijd afwijzen
    Gegeven een portefeuille overname
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "afgewezen"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt
