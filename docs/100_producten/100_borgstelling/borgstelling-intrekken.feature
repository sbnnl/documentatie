# language: nl
Functionaliteit: Borgstelling ingetrokken

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling
      | kenmerk | SK-11789-4 |

  Abstract Scenario: Borgstelling ingetrokken
    Gegeven een borgstelling
      | status | <status> |
    Gegeven een intrekken borgstelling process is gestart
      | kenmerk | SK-11789-4 |
    Dan is de status van de borgstelling "INGETROKKEN"
    En is "de intrekking" gearchiveerd
    En is het "borgstelling ingetrokken" bericht ontvangen door het Schuldenknooppunt

    Voorbeelden:
      | status             |
      | AFGEGEVEN          |