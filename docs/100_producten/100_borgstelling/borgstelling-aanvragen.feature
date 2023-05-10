# language: nl
Functionaliteit: Borgstelling aanvragen

  # Opmerkinen:
  # wachten enkele momenten functionliteit verplaatsen naar is de status van de "{{type}}" "AFGEGEVEN"
  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling categorie
      | kenmerk          | 100       |
      | premie           | 10%       |
      | accepteren vanaf | € 0,0     |
      | maatwerk vanaf   | € 5000,0  |
      | afwijzen vanaf   | € 10000,0 |
    Gegeven een pro forma borgstelling aanvraag
      | kenmerk                | a8afa8cc-9a91-4722-82ca-95cff3770314 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |
    En pro forma borgstelling aanvraag statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |
    Gegeven een borgstelling aanvraag
      | kenmerk                | 093e08db-6791-454b-a172-068099514907 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |
    En borgstelling aanvraag statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |
    Gegeven een portefeuille overname
      | uitbetaaldatum  | 01-01-2023 |
      | uitstaand saldo | € 2000,00  |
  #{{#types}}

  Scenario: {{type}} wordt juist geregistreerd
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "{{type}}" juist geregistreerd

  Scenario: Standaard {{type}} aanvragen
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "{{type}}" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "{{type}} afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk {{type}} op basis van bruto kredietsom aanvragen
    Gegeven een {{type}}
      | bruto kredietsom | € 5000,0 |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "{{type}}" "MAATWERK"
    En is er een "beoordeel maatwerk {{type}}" taak actief

  Scenario: {{type}} op basis van bruto kredietsom afwijzen
    Gegeven een {{type}}
      | bruto kredietsom | € 10000,0 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "{{type}}" "AFGEWEZEN"
    En is er geen verkoop geregistreerd
    En is het "{{type}} afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk {{type}} op basis van looptijd aanvragen
    Gegeven een {{type}}
      | looptijd | 37 maanden |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    En is er een "beoordeel maatwerk {{type}}" taak actief

  Scenario: Maatwerk {{type}} accepteren
    Gegeven een {{type}}
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk {{type}}" taak is actief
    Wanneer de "beoordeel maatwerk {{type}}" taak is goedgekeurd
    Dan is de status van de "{{type}}" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50,0
    En is het "{{type}} afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk {{type}} op basis van looptijd aanvragen
    Gegeven een {{type}}
      | looptijd | 37 maanden |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "{{type}}" "MAATWERK"
    En is er een "beoordeel maatwerk {{type}}" taak actief

  Scenario: Maatwerk {{type}} afwijzen
    Gegeven een {{type}}
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk {{type}}" taak is actief
    Wanneer de "beoordeel maatwerk {{type}}" taak is afgewezen met reden "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    Dan is de status van de "{{type}}" "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En bevat "de afwijzing" de tekst "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    En is er geen verkoop geregistreerd
    En is het "{type}} afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: {{type}} met verschillende status grenzen
    Gegeven borgstelling categorie
      | accepteren vanaf | € <accepteren> |
      | maatwerk vanaf   | € <maatwerk>   |
      | afwijzen vanaf   | € <afwijzen>   |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "{{type}}" "AFGEWEZEN"

    Voorbeelden:
      | accepteren | maatwerk | afwijzen | status    |
      | 0          | 5000     | 0        | AFGEGEVEN |
      | 0          | 4999,99  | 0        | MAATWERK  |
      | 0          | 0        | 4999,99  | AFGEWEZEN |

  Abstract Scenario: {{type}} met een onbekende borgstelling categorie
    Gegeven borgstelling categorie
      | kenmerk | <kenmerk> |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    Dan is het Schuldenknooppunt bericht geaccepteerd

    Voorbeelden:
      | kenmerk |
      | 100     |
      | 200     |
      | 300     |
      | 400     |
      | 500     |

  Scenario: {{type}} met een onbekende borgstelling categorie
    Gegeven borgstelling categorie
      | kenmerk | -1 |
    Wanneer het "{{type}}" bericht is verstuurd via het Schuldenknooppunt
    Dan is het Schuldenknooppunt bericht niet geaccepteerd
  #{{/types}}

  Abstract Scenario: Aanvraag borgstelling met verschillende premies
    Gegeven een {{type}}
      | bruto kredietsom | € <bruto kredietsom> |
    Gegeven borgstelling categorie
      | premie | <premie>% |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "Aanvraag borgstelling" "AFGEGEVEN"
    En is er een verkoop geregistreerd van € <verkoop>

    Voorbeelden:
      | bruto kredietsom | premie | verkoop |
      | 4999,99          | 10     | 49,99   |
      | 2000,00          | 10     | 20,00   |
      | 2000,00          | 5      | 10,00   |

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "portefeuille overname" juist geregistreerd

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname premie op basis van uitstaand saldo
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 20,0
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk aanvraag borgstelling vanuit een portefeuille overname op basis van verzekerd bedrag aanvragen
    Gegeven een {{type}}
      | bruto kredietsom | € 5000,0 |
    Gegeven een portefeuille overname
      | uitstaand saldo | € 4999,99 |
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "MAATWERK"
    En is er een "beoordeel maatwerk aanvraag borgstelling" taak actief

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname op basis van uitbetaaldatum afwijzen
    Gegeven een portefeuille overname
      | uitbetaaldatum | 2002-01-01 |
    Wanneer het "aanvraag overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag
    Gegeven een pro forma borgstelling aanvraag
      | bruto kredietsom | € <pro forma bruto kredietsom> |
      | status | <pro forma status> |
    Gegeven een borgstelling aanvraag
      | bruto kredietsom | € <bruto kredietsom> |
    Gegeven aanvraag borgstelling met pro forma aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "<status>"

    Voorbeelden:
      | pro forma bruto kredietsom | pro forma status | bruto kredietsom | status    |
      | 4999,99                    | AFGEGEVEN        | 4999,99          | AFGEGEVEN |
      | 5000                       | AFGEWEZEN        | 4999,99          | AFGEGEVEN |
      | 5000                       | AFGEGEVEN        | 5249             | AFGEGEVEN |
      | 5000                       | AFGEGEVEN        | 5250             | MAATWERK  |
      | 6000                       | AFGEGEVEN        | 5700             | MAATWERK  |

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag met afwijkende looptijden
    Gegeven een pro forma borgstelling aanvraag
      | looptijd | <pro forma looptijd> maanden |
    Gegeven een borgstelling aanvraag
      | looptijd | <looptijd> maanden |
    Gegeven aanvraag borgstelling met pro forma aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "<status>"

    Voorbeelden:
      | pro forma looptijd | looptijd | status    |
      | 36                 | 35       | AFGEGEVEN |
      | 36                 | 37       | MAATWERK  |
      | 37                 | 36       | AFGEGEVEN |

  Scenario: Borgstelling aanvraag met lopende borgstelling aanvraag
    Gegeven een borgstelling aanvraag
      | bruto kredietsom  | € 5000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "Maatwerk"
    Gegeven een borgstelling aanvraag
      | bruto kredietsom  | € 2000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan zijn er 2 borgstelling aanvragen actief
    En is de status van de borgstelling "Wachten op afhandeling"
    Wanneer de "beoordeel maatwerk borgstelling aanvraag" taak is goedgekeurd
    En is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 2 keer ontvangen door het Schuldenknooppunt

  Scenario: Borgstelling aanvraag met afgeronde borgstelling aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    an is de status van de borgstelling "AFGEGEVEN"
    Gegeven een borgstelling aanvraag
      | bruto kredietsom  | € 2000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 2 keer ontvangen door het Schuldenknooppunt
