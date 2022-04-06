#language: nl
Functionaliteit: Aanvraag borgstelling proces

  Scenario: Aanvraag geaccepteerd route is actief
    Gegeven proces informatie "{ beoordeling: 'geaccepteerd' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-geaccepteerd" actief

  Scenario: Aanvraag maatwerk route is actief
    Gegeven proces informatie "{ beoordeling: 'maatwerk' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-maatwerk" actief

  Scenario: Aanvraag afgewezen route is actief
    Gegeven proces informatie "{ beoordeling: 'afgewezen' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-afgewezen" actief

  Scenario: Voorbeoordeling route is actief
    Gegeven proces informatie "{ voorbeoordeling: 'ja' }"
    Wanneer poort "poort-voorbeoordeling" is uitgevoerd
    Dan is route "route-voorbeoordeling" actief

  Scenario: Geen voorbeoordeling route is actief
    Gegeven proces informatie "{ voorbeoordeling: 'nee' }"
    Wanneer poort "poort-voorbeoordeling" is uitgevoerd
    Dan is route "route-geen-voorbeoordeling" actief