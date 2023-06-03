# language: nl
Functionaliteit: Borgstelling beëindigen (e46fcf7a5d093c1bac9f806c01738cbe)

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling
      | kenmerk | SK-11111-1 |

  Abstract Scenario: Borgstelling beëindigen
    Gegeven een borgstelling
      | status | <status> |
    Gegeven een beëindiging borgstelling bericht
      | kenmerk           | SK-11111-1 |
      | beeindigingsdatum | 2022-01-01 |
    Wanneer het "beëindiging borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "BEEINDIGD"
    En is "de beëindiging" gearchiveerd
    En is beëindiging juist geregistreerd
    En is het "borgstelling beëindigd" bericht ontvangen door het Schuldenknooppunt

    Voorbeelden:
      | status             |
      | AFGEGEVEN          |
      | BEOORDEEL_AANVRAAG |
      | BEEINDIGD          |