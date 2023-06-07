# language: nl
Functionaliteit: Pro forma aanvragen borgstelling

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling categorie
      | kenmerk          | 100       |
      | premie           | 1%        |
      | accepteren vanaf | € 0,0     |
      | maatwerk vanaf   | € 5000,0  |
      | afwijzen vanaf   | € 10000,0 |
    Gegeven een pro-forma aanvraag bericht
      | kenmerk                | 093e08db-6791-454b-a172-068099514907 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |

  Scenario: Pro-forma aanvraag wordt juist geregistreerd
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "pro-forma aanvraag" juist geregistreerd

  Scenario: Standaard pro-forma aanvraag aanvragen
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "AFGEGEVEN"
    En is "het pro-forma contract" gearchiveerd
    En is het "pro-forma aanvraag afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk pro-forma aanvraag op basis van bruto kredietsom aanvragen
    Gegeven een pro-forma aanvraag bericht
      | bruto kredietsom | € 5000,0 |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk pro-forma aanvraag" taak actief

  Scenario: Pro-forma aanvraag op basis van bruto kredietsom afwijzen
    Gegeven een pro-forma aanvraag bericht
      | bruto kredietsom | € 10000,0 |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk pro-forma aanvraag" taak actief

  Scenario: Maatwerk pro-forma aanvraag op basis van looptijd aanvragen
    Gegeven een pro-forma aanvraag bericht
      | looptijd | 37 maanden |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk pro-forma aanvraag" taak actief

  Scenario: Maatwerk pro-forma aanvraag accepteren
    Gegeven een pro-forma aanvraag bericht
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk pro-forma aanvraag" taak is actief
    Wanneer de "beoordeel maatwerk pro-forma aanvraag" taak is goedgekeurd
    Dan is de status van de "pro-forma aanvraag" "AFGEGEVEN"
    En is "het pro-forma contract" gearchiveerd
    En bevat "het pro-forma contract" het documentId als onze referentie
    En is het "pro-forma aanvraag afgegeven" bericht ontvangen door het Schuldenknooppunt

  Scenario: Maatwerk pro-forma aanvraag op basis van looptijd aanvragen
    Gegeven een pro-forma aanvraag bericht
      | looptijd | 37 maanden |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "BEOORDEEL_AANVRAAG"
    En is er een "beoordeel maatwerk pro-forma aanvraag" taak actief

  Scenario: Maatwerk pro-forma aanvraag afwijzen
    Gegeven een pro-forma aanvraag bericht
      | bruto kredietsom | € 5000,0 |
    En een "beoordeel maatwerk pro-forma aanvraag" taak is actief
    Wanneer de "beoordeel maatwerk pro-forma aanvraag" taak is afgewezen met reden "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    Dan is de status van de "pro-forma aanvraag" "AFGEWEZEN"
    En is "de pro-forma afwijzing" gearchiveerd
    En bevat "de afwijzing" de tekst "89ed237c-5e3e-4dc4-9eef-eb5714671719"
    En is er geen verkoop geregistreerd
    En is het "pro-forma aanvraag afgewezen" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Pro-forma aanvraag met verschillende status grenzen
    Gegeven een borgstelling categorie
      | accepteren vanaf | € <accepteren> |
      | maatwerk vanaf   | € <maatwerk>   |
      | afwijzen vanaf   | € <afwijzen>   |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de "pro-forma aanvraag" "<status>"

    Voorbeelden:
      | accepteren | maatwerk | afwijzen | status             |
      | 0          | 5000     | 0        | AFGEGEVEN          |
      | 0          | 4999,99  | 0        | BEOORDEEL_AANVRAAG |
      | 0          | 0        | 4999,99  | BEOORDEEL_AANVRAAG |

  Abstract Scenario: Pro-forma aanvraag met een onbekende borgstelling categorie
    Gegeven een borgstelling categorie
      | kenmerk | <kenmerk> |
    Wanneer het "pro-forma aanvraag" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de "pro-forma aanvraag" juist geregistreerd

    Voorbeelden:
      | kenmerk |
      | 100     |
      | 200     |
      | 300     |
      | 400     |
      | 500     |