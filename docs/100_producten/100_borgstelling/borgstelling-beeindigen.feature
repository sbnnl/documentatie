# language: nl
Functionaliteit: Borgstelling beëindigen

  Achtergrond:
    Gegeven een kredietbank

  Scenario: Borgstelling beëindigen
    Gegeven een beëindiging borgstelling bericht
      | kenmerk       | SK-11111-1 |
      | beeindigingsdatum | 2022-01-01 |
    Wanneer het "beëindiging borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het "beëindiging borgstelling" bericht is verwerkt
    Dan is de status van de borgstelling "BEEINDIGD"
    En is "de beëindiging" gearchiveerd
    En is beëindiging juist geregistreerd
    En is het "borgstelling beëindigd" bericht ontvangen door het Schuldenknooppunt

  Scenario: Borgstelling aanvraag beëindigen
    Gegeven een bruto kredietsom van € 5000
    En het kenmerk "actieve-aanvraag-kenmerk"
    En een "beoordeel maatwerk borgstelling" taak is actief
    En een beeindigdatum van "2022-01-01"
    Wanneer het "beëindiging borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het "beëindiging borgstelling" bericht is verwerkt
    Dan is de status van de borgstelling "AANVRAAG_BEEINDIGD"
    En is "de aanvraag beëindiging" gearchiveerd
    En is de datum beëindiging juist geregistreerd
    En is het "borgstelling aanvraag beëindigd" bericht ontvangen door het Schuldenknooppunt