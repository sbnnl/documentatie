# language: nl
Functionaliteit: Borgstelling aanvragen (626a38df46a222e055b5cb3d192209bf)

  Achtergrond:
    Gegeven het kenmerk "093e08db-6791-454b-a172-068099514907"
    En een kredietbank
    En een exact koppeling
    En een bruto kredietsom van € 4999,99
    En een uitbetaaldatum
    En het postcode gebied is "3743"
    En een looptijd van 36 maanden
    En statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |
    En soort lening is "SK"
    En een contact emailadres "test@test.nl"
    En een uitstaand saldo van € 2000,00

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
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € 5000
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling accepteren
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de maatwerk taak is goedgekeurd
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50,0
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling accepteren
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de maatwerk taak is goedgekeurd
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling afwijzen
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer de maatwerk taak is afgekeurd
    Dan is de status van de borgstelling "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is het uitstaand saldo juist geregistreerd

  Scenario: Standaard borgstelling aanvragen vanuit een portefeuille overname
    Gegeven een looptijd van 35 maanden
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 20
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Standaard borgstelling aanvragen vanuit een portefeuille overname op basis van uitstaand saldo
    Gegeven een looptijd van 35 maanden
    En een bruto kredietsom van € 5000
    En een uitstaand saldo van € 4999,99
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk borgstelling vanuit een portefeuille overname op basis van verzekerd bedrag aanvragen
    Gegeven een looptijd van 35 maanden
    En een bruto kredietsom van € 5000
    En een uitstaand saldo van € 5000
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Maatwerk borgstelling vanuit een portefeuille overname op basis van looptijd afwijzen
    Gegeven een uitbetaaldatum "2002-01-01"
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Standaard borgstelling aanvragen met een borgstelling categorie maatwerk
    Gegeven een borgstelling category "cat1" met premie: 10, en accepteren vanaf 0, en maatwerk vanaf 2000, en afgewezen vanaf 10000
    En een bruto kredietsom van € 3000
    En statistieken
      | code               | waarde |
      | Soort borgstelling | cat1   |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"

  Scenario: Standaard borgstelling aanvragen met een borgstelling categorie geaccepteerd
    Gegeven een borgstelling category "cat1" met premie: 10, en accepteren vanaf 0, en maatwerk vanaf 2000, en afgewezen vanaf 10000
    En een bruto kredietsom van € 1000
    En statistieken
      | code               | waarde |
      | Soort borgstelling | cat1   |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is er een verkoop geregistreerd van € 100,00

  Scenario: Standaard borgstelling aanvragen met een borgstelling categorie afgwezen
    Gegeven een borgstelling category "cat1" met premie: 10, en accepteren vanaf 0, en maatwerk vanaf 2000, en afgewezen vanaf 10000
    En een bruto kredietsom van € 10000
    En statistieken
      | code               | waarde |
      | Soort borgstelling | cat1   |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"

  Scenario: Standaard borgstelling aanvragen met een borgstelling categorie afgwezen zonder maatwerk mogelijkheid
    Gegeven een borgstelling category "cat1" met premie: 10, en accepteren vanaf 0, en maatwerk vanaf 2000, en afgewezen vanaf 0
    En een bruto kredietsom van € 2000
    En statistieken
      | code               | waarde |
      | Soort borgstelling | cat1   |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"

