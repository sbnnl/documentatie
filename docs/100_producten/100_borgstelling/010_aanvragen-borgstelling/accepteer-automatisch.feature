#language: nl
Functionaliteit: Accepteer automatisch use-case

  Abstract Scenario: Beoordeel aanvraag zonder pro-forma aanvraag: "<reden>"
    Gegeven aanvraag met buto kredietsom <kredietsom> en looptijd <looptijd> maanden
    Wanneer beoordeeld
    Dan is de uitkomst "<uitkomst>"

    Voorbeelden:
    | kredietsom | looptijd | uitkomst     | reden                                       |
    | 4999,99    | 36       | geaccepteerd | Bruto kredietsom < 5000 en looptijd <= 36 maanden |
    | 5000       | 36       | maatwerk     | Bruto kredietsom > 5000                           |
    | 4999,99    | 37       | maatwerk     | Looptijd is > 36 maanden                    |

  Abstract Scenario: Beoordeel aanvraag met pro-forma aanvraag: "<reden>"
    Gegeven pro-forma aanvraag met bruto kredietsom <pro-forma aanvraag_kredietsom> en looptijd <pro-forma aanvraag_looptijd> maanden en uitkomst "<pro-forma aanvraag_uitkomst>"
    En aanvraag met bruto kredietsom <kredietsom> en looptijd <looptijd> maanden
    Dan is de uitkomst "<uitkomst>"

    Voorbeelden:
    | pro-forma aanvraag_kredietsom | pro-forma aanvraag_looptijd | pro-forma aanvraag_uitkomst | kredietsom | looptijd | uitkomst     | reden                                                         |
    | 5000                          | 36                          | geaccepteerd                | 5000       | 36       | geaccepteerd | Aanvraag is gelijk aan pro-forma aanvraag                     |
    | 5000                          | 36                          | afgewezen                   | 4999,99    | 36       | geaccepteerd | Standaard aanvraag                                            |
    | 5000                          | 36                          | geaccepteerd                | 5249       | 36       | geaccepteerd | Bruto kredietsom wijkt minder dan 5% af van de pro-forma aanvraag   |
    | 5000                          | 36                          | afgewezen                   | 5249       | 36       | afgewezen    | Bruto kredietsom wijkt minder dan 5% af van de pro-forma aanvraag   |
    | 5000                          | 36                          | geaccepteerd                | 5250       | 36       | maatwerk     | Bruto kredietsom wijkt meer dan 5% af van de pro-forma aanvraag     |
    | 5000                          | 36                          | geaccepteerd                | 5000       | 37       | maatwerk     | Looptijd wijkt af en > 36                                     |
    | 5250                          | 36                          | afgewezen                   | 5000       | 36       | maatwerk     | Bruto kredietsom wijkt meer dan 5% af van de pro-forma aanvraag     |
  
  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt geaccepteerd
    Gegeven overname
    En bruto kredietsom is "4999,99"
    En maanden actief is "35"
    Wanneer beoordeeld
    Dan is de beoordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven overname
    En bruto kredietsom is "4999,99"
    En maanden actief is "36"
    Wanneer beoordeeld
    Dan is de beoordeling "afgewezen"

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "BEOORDEEL_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | niet     |
    | sbf         | niet     |
    | kredietbank | niet     |
    | systeem     | wel      |
    

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "registreer aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |
  