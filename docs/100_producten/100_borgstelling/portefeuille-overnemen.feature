# language: nl
Functionaliteit: Portefeuille overnemen

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling categorie
      | kenmerk          | 100       |
      | premie           | 1%        |
      | accepteren vanaf | € 0,0     |
      | maatwerk vanaf   | € 5000,0  |
      | afwijzen vanaf   | € 10000,0 |
    Gegeven een portefeuille overname bericht
      | kenmerk                | a8afa8cc-9a91-4722-82ca-95cff3770314 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |
      | uitbetaaldatum         | 2023-01-01                           |
      | uitstaand saldo        | € 2000,00                            |
    En portefeuille overname bericht statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname wordt juist geregistreerd
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "portefeuille overname" juist geregistreerd

  Abstract Scenario: Aanvraag borgstelling vanuit een portefeuille overname premie op basis van uitstaand saldo
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 20,0
    En is het "borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

    Voorbeelden:
      | bruto kredietsom | uitstaand saldo | verkoop |
      | € 4999,99        | € 2000          | € 20,0  |
      | € 6000           | € 4999,99       | € 49,99 |

  Scenario: Maatwerk aanvraag borgstelling vanuit een portefeuille overname op basis van verzekerd bedrag aanvragen
    Gegeven een portefeuille overname bericht
      | bruto kredietsom | € 6000 |
      | uitstaand saldo  | € 5001 |
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk aanvraag borgstelling" taak actief

  Scenario: Aanvraag borgstelling vanuit een portefeuille overname op basis van uitbetaaldatum afwijzen
    Gegeven een portefeuille overname bericht
      | uitbetaaldatum | 2002-01-01 |
    Wanneer het "portefeuille overname" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En wachten enkele momenten
    Dan is de status van de borgstelling "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En is er geen verkoop geregistreerd
    En is het "borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt