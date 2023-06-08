# language: nl
Functionaliteit: Borgstelling uitbetalen (d7ac116abf35ba5767ade17946628144)

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling
      | kenmerk | SK-11111-1 |
      | status  | AFGEGEVEN  |
    Gegeven een uitbetalen borgstelling bericht
      | kenmerk | SK-11111-1 |

  Scenario: Borgstelling uitbetaling aanvragen
    Wanneer het "uitbetalen borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "BEOORDEEL_UITBETALING"
    En is er een "beoordeel uitbetaling" taak actief

  Scenario: Borgstelling uitbetaling aanvraag goedkeuren
    Wanneer het "uitbetalen borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "BEOORDEEL_UITBETALING"
    En is er een "beoordeel uitbetaling" taak actief
    Wanneer de "beoordeel uitbetaling" taak is goedgekeurd
      | netto_kredietsom  | € 1550,77 |
      | aflossing         | € 300,47  |
      | kredietvergoeding | € 24,45   |
      | lopende_rente     | € 0,12    |
      | voorstand         | € 10,15   |
    Dan is de status van de borgstelling "UITBETAALD"
    En is "de uitbetaling" gearchiveerd
    En is er een uitbetaling geregistreerd van € 1264,72
    En is het "borgstelling uitbetaald" bericht ontvangen door het Schuldenknooppunt

  Scenario: Borgstelling uitbetaling aanvraag afwijzen
    Wanneer het "uitbetalen borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "BEOORDEEL_UITBETALING"
    En is er een "beoordeel uitbetaling" taak actief
    Wanneer de "beoordeel uitbetaling" taak is afgewezen
      | reden | 879a7226-eb98-43d5-a32b-63227e868cc8 |
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is "de uitbetaling afwijzing" gearchiveerd
    En bevat "de uitbetaling afwijzing" de tekst "879a7226-eb98-43d5-a32b-63227e868cc8"
    En is het "uitbetaaling afwijzing" bericht ontvangen door het Schuldenknooppunt

  Abstract Scenario: Borgstelling uitbetaling aanvragen met een onjuiste status
    Gegeven een borgstelling
      | status | <status> |
    Wanneer het "uitbetalen borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is het Schuldenknooppunt bericht niet geaccepteerd

    Voorbeelden:
      | status                |
      | AFGEWEZEN             |
      | AANVRAAG_BEEINDIGD    |
      | BEEINDIGD             |
      | BEOORDEEL_AANVRAAG    |
      | INGETROKKEN           |
      | WORDT_INGETROKKEN     |
