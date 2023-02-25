#language: nl
Functionaliteit: Beoordeel maatwerk aanvraag proces (85a3b6b8f72226bec2da5bbf232fd47c)

  Scenario: Aanvraag geaccepteerd route is actief
    Gegeven proces informatie "{ beoordeling: 'geaccepteerd' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-geaccepteerd" actief

  Scenario: Aanvraag afgewezen route is actief
    Gegeven proces informatie "{ beoordeling: 'afgewezen' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-afgewezen" actief

  Scenario: Gefiatteerd route is actief
    Gegeven proces informatie "{ gefiatteerd: 'ja' }"
    Wanneer poort "poort-gefiatteerd" is uitgevoerd
    Dan is route "route-gefiatteerd" actief

  Scenario: Niet gefiatteerd route is actief
    Gegeven proces informatie "{ gefiatteerd: 'niet' }"
    Wanneer poort "poort-gefiatteerd" is uitgevoerd
    Dan is route "route-niet-gefiatteerd" actief