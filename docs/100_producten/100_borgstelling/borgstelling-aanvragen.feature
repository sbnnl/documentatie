# language: nl
Functionaliteit: Borgstelling aanvragen

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling categorie
      | kenmerk          | 100       |
      | premie           | 1%        |
      | accepteren vanaf | € 0,0     |
      | maatwerk vanaf   | € 5000,0  |
      | afwijzen vanaf   | € 10000,0 |
    Gegeven een aanvraag borgstelling bericht
      | kenmerk                | 093e08db-6791-454b-a172-068099514907 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |
    En aanvraag borgstelling bericht statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |

  Scenario: aanvraag borgstelling wordt juist geregistreerd
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "aanvraag borgstelling" juist geregistreerd

  Scenario: Standaard aanvraag borgstelling aanvragen
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 49,99
    En is het "aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk aanvraag borgstelling op basis van bruto kredietsom aanvragen
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 5000,0 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk aanvraag borgstelling" taak actief

  Scenario: aanvraag borgstelling op basis van bruto kredietsom afwijzen
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 10000,0 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "AFGEWEZEN"
    En is er geen verkoop geregistreerd
    En is het "aanvraag borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een aanvraag borgstelling bericht
      | looptijd | 37 maanden |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En is er een "beoordeel maatwerk aanvraag borgstelling" taak actief

  Scenario: Maatwerk aanvraag borgstelling accepteren
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk aanvraag borgstelling" taak is actief
    Wanneer de "beoordeel maatwerk aanvraag borgstelling" taak is goedgekeurd
    Dan is de status van de "aanvraag borgstelling" "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er een verkoop geregistreerd van € 50,0
    En is het "aanvraag borgstelling afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk aanvraag borgstelling op basis van looptijd aanvragen
    Gegeven een aanvraag borgstelling bericht
      | looptijd | 37 maanden |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk aanvraag borgstelling" taak actief

  Scenario: Maatwerk aanvraag borgstelling afwijzen
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk aanvraag borgstelling" taak is actief
    Wanneer de "beoordeel maatwerk aanvraag borgstelling" taak is afgewezen met reden "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    Dan is de status van de "aanvraag borgstelling" "AFGEWEZEN"
    En is "de afwijzing" gearchiveerd
    En bevat "de afwijzing" de tekst "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    En is er geen verkoop geregistreerd
    En is het "aanvraag borgstelling afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: aanvraag borgstelling met verschillende status grenzen
    Gegeven een borgstelling categorie
      | accepteren vanaf | € <accepteren> |
      | maatwerk vanaf   | € <maatwerk>   |
      | afwijzen vanaf   | € <afwijzen>   |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "<status>"

    Voorbeelden:
      | accepteren | maatwerk | afwijzen | status             |
      | 0          | 5000     | 0        | AFGEGEVEN          |
      | 0          | 4999,99  | 0        | BEOORDEEL_AANVRAAG |
      | 0          | 0        | 4999,99  | AFGEWEZEN          |

  Abstract Scenario: aanvraag borgstelling met een onbekende borgstelling categorie
    Gegeven een borgstelling categorie
      | kenmerk | <kenmerk> |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "aanvraag borgstelling" juist geregistreerd

    Voorbeelden:
      | kenmerk |
      | 100     |
      | 200     |
      | 300     |
      | 400     |
      | 500     |

  Abstract Scenario: Aanvraag borgstelling met verschillende premies
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € <bruto kredietsom> |
    Gegeven een borgstelling categorie
      | premie | <premie>% |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "aanvraag borgstelling" "AFGEGEVEN"
    En is er een verkoop geregistreerd van € <verkoop>

    Voorbeelden:
      | bruto kredietsom | premie | verkoop |
      | 4999,99          | 10     | 499,99  |
      | 2000,00          | 10     | 200,00  |
      | 2000,00          | 5      | 100,00  |