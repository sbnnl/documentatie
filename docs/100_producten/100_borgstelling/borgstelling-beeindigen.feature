# language: nl
Functionaliteit: Borgstelling beëindigen

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
    Dan is de status van de borgstelling "<result>"
    En is "<file>" gearchiveerd
    En is beëindiging juist geregistreerd
    En is het "borgstelling beëindigd" bericht ontvangen door het Schuldenknooppunt

    Voorbeelden:
      | status                              | file                      |  result             |
      | AFGEGEVEN                           | de beëindiging            |  BEEINDIGD          |
      | UITBETAALVERZOEK_AFGEWEZEN          | de beëindiging            |  BEEINDIGD          |
      | BEOORDEEL_AANVRAAG                  | de aanvraag beëindiging   |  AANVRAAG_BEEINDIGD |