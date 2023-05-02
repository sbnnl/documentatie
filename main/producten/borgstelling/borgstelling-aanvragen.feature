# language: nl
Functionaliteit: Borgstelling aanvragen (626a38df46a222e055b5cb3d192209bf)

  Achtergrond: 
    Gegeven een kredietbank
    Gegeven een exact koppeling
    Gegeven borgstelling categorie met kenmerk 100
    En borgstelling categorie premie is 10%
    En borgstelling categorie accepteren vanaf € 0,00
    En borgstelling categorie maatwerk vanaf € 5000,00
    En borgstelling categorie afwijzen vanaf € 10000,00
    Gegeven een pro forma borgstelling aanvraag met kenmerk "a8afa8cc-9a91-4722-82ca-95cff3770314"
    En pro forma borgstelling aanvraag borgstelling categorie is 100
    En pro forma borgstelling aanvraag bruto kredietsom van € 4999,99
    En pro forma borgstelling aanvraag postcode gebied is "3743"
    En pro forma borgstelling aanvraag looptijd van 36 maanden
    En pro forma borgstelling aanvraag statistieken
      | code                | waarde |
      | Bevolkingsgroep     |      1 |
      | Betalende instantie |      2 |
      | Kredietdoel         |      3 |
      | Leeftijdsgroep      |      4 |
      | Soort borgstelling  |      5 |
    En pro forma borgstelling aanvraag soort lening is "SK"
    En pro forma borgstelling aanvraag contact emailadres "test@test.nl"
    Gegeven een borgstelling aanvraag
    En het kenmerk "093e08db-6791-454b-a172-068099514907"
    En de borgstelling categorie is 100
    En een bruto kredietsom van € 4999,99
    En het postcode gebied is "3743"
    En een looptijd van 36 maanden
    En statistieken
      | code                | waarde |
      | Bevolkingsgroep     |      1 |
      | Betalende instantie |      2 |
      | Kredietdoel         |      3 |
      | Leeftijdsgroep      |      4 |
      | Soort borgstelling  |      5 |
    En soort lening is "SK"
    En een contact emailadres "test@test.nl"
    Gegeven een portefeuille overname
    En een uitbetaaldatum
    En een uitstaand saldo van € 2000,00

  Scenario: Aanvraag borgstelling wordt juist geregistreerd
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het kenmerk juist geregistreerd
    En de borgstelling categorie juist geregistreerd
    En is de bruto kredietsom juist geregistreerd
    En is de looptijd juist geregistreerd
    En is het soort lening juist geregistreerd
    En zijn de statistieken juist geregistreerd
    En is het contact emailadres juist geregistreerd
    En is de geregistreerde gemeente "Baarn"

  Scenario: Aanvraag borgstelling aanvragen
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "Aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Aanvraag borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € 5000
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Aanvraag borgstelling op basis van bruto kredietsom afwijzen
    Gegeven een bruto kredietsom van € 10000
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "AFGEWEZEN"
    En is er geen verkoop geregistreerd
    En is het "Aanvraag borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk Aanvraag borgstelling" taak actief

  Scenario: Maatwerk Aanvraag borgstelling accepteren
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk Aanvraag borgstelling" taak is actief
    Wanneer de maatwerk "Aanvraag borgstelling" taak is goedgekeurd
    Dan is de status van de "Aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50,0
    En is het "Aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk Aanvraag borgstelling" taak actief

  Scenario: Maatwerk Aanvraag borgstelling afwijzen
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk Aanvraag borgstelling" taak is actief
    Wanneer de "Aanvraag borgstelling" maatwerk taak is afgewezen met reden "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    Dan is de status van de "Aanvraag borgstelling" "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En bevat het document de tekst "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    En is er geen verkoop geregistreerd
    En is het "{type}} afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Aanvraag borgstelling met verschillende status grenzen
    Gegeven borgstelling categorie accepteren vanaf € <accepteren>
    En borgstelling categorie maatwerk vanaf € <maatwerk>
    En borgstelling categorie afwijzen vanaf € <afwijzen>
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Aanvraag borgstelling" "AFGEWEZEN"

    Voorbeelden: 
      | accepteren | maatwerk | afwijzen | status    |
      |          0 |     5000 |        0 | AFGEGEVEN |
      |          0 |  4999,99 |        0 | MAATWERK  |
      |          0 |        0 |  4999,99 | AFGEWEZEN |

  Scenario: Aanvraag borgstelling met een onbekende borgstelling categorie
    Gegeven "Aanvraag borgstelling" borgstelling categorie is -1
    Wanneer het "Aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    Dan is het Schuldenknooppunt bericht niet geaccepteerd

  Scenario: Pro forma aanvraag borgstelling wordt juist geregistreerd
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het kenmerk juist geregistreerd
    En de borgstelling categorie juist geregistreerd
    En is de bruto kredietsom juist geregistreerd
    En is de looptijd juist geregistreerd
    En is het soort lening juist geregistreerd
    En zijn de statistieken juist geregistreerd
    En is het contact emailadres juist geregistreerd
    En is de geregistreerde gemeente "Baarn"

  Scenario: Pro forma aanvraag borgstelling aanvragen
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "Pro forma aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Pro forma aanvraag borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een bruto kredietsom van € 5000
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Pro forma aanvraag borgstelling op basis van bruto kredietsom afwijzen
    Gegeven een bruto kredietsom van € 10000
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "AFGEWEZEN"
    En is er geen verkoop geregistreerd
    En is het "Pro forma aanvraag borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Pro forma aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk Pro forma aanvraag borgstelling" taak actief

  Scenario: Maatwerk Pro forma aanvraag borgstelling accepteren
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk Pro forma aanvraag borgstelling" taak is actief
    Wanneer de maatwerk "Pro forma aanvraag borgstelling" taak is goedgekeurd
    Dan is de status van de "Pro forma aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50,0
    En is het "Pro forma aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk Pro forma aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een looptijd van 37 maanden
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "MAATWERK"
    En is er een "beoordeel maatwerk Pro forma aanvraag borgstelling" taak actief

  Scenario: Maatwerk Pro forma aanvraag borgstelling afwijzen
    Gegeven een bruto kredietsom van € 5000
    En een "beoordeel maatwerk Pro forma aanvraag borgstelling" taak is actief
    Wanneer de "Pro forma aanvraag borgstelling" maatwerk taak is afgewezen met reden "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    Dan is de status van de "Pro forma aanvraag borgstelling" "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En bevat het document de tekst "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    En is er geen verkoop geregistreerd
    En is het "{type}} afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Pro forma aanvraag borgstelling met verschillende status grenzen
    Gegeven borgstelling categorie accepteren vanaf € <accepteren>
    En borgstelling categorie maatwerk vanaf € <maatwerk>
    En borgstelling categorie afwijzen vanaf € <afwijzen>
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de "Pro forma aanvraag borgstelling" "AFGEWEZEN"

    Voorbeelden: 
      | accepteren | maatwerk | afwijzen | status    |
      |          0 |     5000 |        0 | AFGEGEVEN |
      |          0 |  4999,99 |        0 | MAATWERK  |
      |          0 |        0 |  4999,99 | AFGEWEZEN |

  Scenario: Pro forma aanvraag borgstelling met een onbekende borgstelling categorie
    Gegeven "Pro forma aanvraag borgstelling" borgstelling categorie is -1
    Wanneer het "Pro forma aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    Dan is het Schuldenknooppunt bericht niet geaccepteerd

  Abstract Scenario: Aanvraag borgstelling met verschillende premies
    Gegeven een bruto kredietsom van € <bruto kredietsom>
    En borgstelling categorie premie is <premie>%
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    En is er een verkoop geregistreerd van € <verkoop>

    Voorbeelden: 
      | bruto kredietsom | premie | verkoop |
      |          4999,99 |     10 |   49,99 |
      |          2000,00 |     10 |   20,00 |
      |          2000,00 |      5 |   10,00 |

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de uitbetaaldatum juist geregistreerd
    En is het uitstaand saldo juist geregistreerd

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname premie op basis van uitstaand saldo
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 20
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk aanvraag borgstelling vanuit een portefeuille overname op basis van verzekerd bedrag aanvragen
    Gegeven een bruto kredietsom van € 5000
    En een uitstaand saldo van € 4999,99
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk borgstelling" taak actief

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname op basis van uitbetaaldatum afwijzen
    Gegeven een uitbetaaldatum "2002-01-01"
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag
    Gegeven pro forma borgstelling aanvraag bruto kredietsom van € <pro forma bruto kredietsom>
    En bruto kredietsom van € <bruto kredietsom>
    En is de status van de pro forma borgstelling "<pro forma status>"
    Gegeven aanvraag borgstelling met pro forma aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "<status>"

    Voorbeelden: 
      | pro forma bruto kredietsom | pro forma status | bruto kredietsom | status    |
      |                    4999,99 | AFGEGEVEN        |          4999,99 | AFGEGEVEN |
      |                       5000 | AFGEWEZEN        |          4999,99 | AFGEGEVEN |
      |                       5000 | AFGEGEVEN        |             5249 | AFGEGEVEN |
      |                       5000 | AFGEGEVEN        |             5250 | MAATWERK  |
      |                       6000 | AFGEGEVEN        |             5700 | MAATWERK  |

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag met afwijkende looptijden
    Gegeven pro forma borgstelling aanvraag looptijd van <pro forma looptijd> maanden
    En een looptijd van <looptijd> maanden
    Gegeven aanvraag borgstelling met pro forma aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "<status>"

    Voorbeelden: 
      | pro forma looptijd | looptijd | status    |
      |                 36 |       35 | AFGEGEVEN |
      |                 36 |       37 | MAATWERK  |
      |                 37 |       36 | AFGEGEVEN |

  Scenario: Borgstelling aanvraag met lopende borgstelling aanvraag
    Gegeven een actieve borgstelling
    En een bruto kredietsom van € 2000,00
    En een "beoordeel maatwerk borgstelling" taak is actief
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    En "beoordeel maatwerk borgstelling" taak is afgerond
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 2 keer ontvangen door het Schuldenknooppunt

  Scenario: Borgstelling aanvraag met afgeronde borgstelling aanvraag
    Gegeven een afgegeven borgstelling
    En een bruto kredietsom van € 2000,00
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is geen "het contract" gearchiveerd 
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 1 keer ontvangen door het Schuldenknooppunt


