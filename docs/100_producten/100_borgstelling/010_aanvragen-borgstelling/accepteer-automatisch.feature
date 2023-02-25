# language: nl
Functionaliteit: Accepteer automatisch use-case

  Abstract Scenario: Beoordeel aanvraag zonder pro-forma aanvraag: "<reden>"
    Gegeven aanvraag waarbij de gemeente <in gemeentelijst> voorkomt in de lijst van aangesloten gemeenten met buto kredietsom <kredietsom> en looptijd <looptijd> maanden
    En geaccepteerd vanaf <geaccepteerd_vanaf>
    En maatwerk vanaf <maatwerk_vanaf>
    En afgewezen vanaf <afgewezen_vanaf>
    Wanneer beoordeeld
    Dan is de uitkomst "<uitkomst>"

    Voorbeelden: 
      | kredietsom | looptijd | in gemeentelijst | geaccepteerd_vanaf | maatwerk_vanaf | afgewezen_vanaf | uitkomst     | reden                                                                                 |
      |    4999,99 |       36 | niet             |                  0 |           5000 |           10000 | maatwerk     | De gemeente komt niet voor in de gemeentelijst van de kredietbank                     |
      |    4999,99 |       36 | wel              |                  0 |           5000 |           10000 | geaccepteerd | Verzekerd bedrag >= geaccepteerd_vanaf en < maatwerk_vanaf en looptijd <= 36 maanden  |
      |       5000 |       36 | wel              |                  0 |           5000 |           10000 | maatwerk     | Verzekerd bedrag >= geaccepteerd_vanaf en < afgewezen_vanaf en looptijd <= 36 maanden |
      |      10000 |       36 | wel              |                  0 |           5000 |           10000 | afgewezen    | Verzekerd bedrag >= afgewezen_vanaf                                                   |
      |    1999,99 |       36 | wel              |                  0 |           2000 |               0 | geaccepteerd | Verzekerd bedrag >= geaccepteerd_vanaf en < maatwerk_vanaf en looptijd <= 36 maanden  |
      |       2000 |       36 | wel              |                  0 |           2000 |               0 | afgewezen    | Verzekerd bedrag >= afgewezen_vanaf (pilot JPF)                                       |
      |    4999,99 |       37 | wel              |                  0 |           5000 |           10000 | maatwerk     | Looptijd is > 36 maanden                                                              |

  Abstract Scenario: Beoordeel aanvraag met pro-forma aanvraag: "<reden>"
    Gegeven pro-forma aanvraag met verzekerd bedrag <pro-forma aanvraag_kredietsom> en looptijd <pro-forma aanvraag_looptijd> maanden en uitkomst "<pro-forma aanvraag_uitkomst>"
    En aanvraag met verzekerd bedrag <kredietsom> en looptijd <looptijd> maanden
    Dan is de uitkomst "<uitkomst>"

    Voorbeelden: 
      | pro-forma aanvraag_kredietsom | pro-forma aanvraag_looptijd | pro-forma aanvraag_uitkomst | kredietsom | looptijd | uitkomst     | reden                                                             |
      |                          5000 |                          36 | geaccepteerd                |       5000 |       36 | geaccepteerd | Aanvraag is gelijk aan pro-forma aanvraag                         |
      |                          5000 |                          36 | afgewezen                   |    4999,99 |       36 | geaccepteerd | Standaard aanvraag                                                |
      |                          5000 |                          36 | geaccepteerd                |       5249 |       36 | geaccepteerd | Verzekerd bedrag wijkt minder dan 5% af van de pro-forma aanvraag |
      |                          5000 |                          36 | afgewezen                   |       5249 |       36 | afgewezen    | Verzekerd bedrag wijkt minder dan 5% af van de pro-forma aanvraag |
      |                          5000 |                          36 | geaccepteerd                |       5250 |       36 | maatwerk     | Verzekerd bedrag wijkt meer dan 5% af van de pro-forma aanvraag   |
      |                          5000 |                          36 | geaccepteerd                |       5000 |       37 | maatwerk     | Looptijd wijkt af en > 36                                         |
      |                          5250 |                          36 | afgewezen                   |       5000 |       36 | maatwerk     | Verzekerd bedrag wijkt meer dan 5% af van de pro-forma aanvraag   |

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt geaccepteerd
    Gegeven overname
    En verzekerd bedrag is "4999,99"
    En maanden actief is "35"
    Wanneer beoordeeld
    Dan is de beoordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven overname
    En verzekerd bedrag is "4999,99"
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
