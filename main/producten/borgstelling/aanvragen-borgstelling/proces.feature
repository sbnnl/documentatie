#language: nl (30ceab1b218349262bad13c809d3f25b)
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
    Gegeven proces informatie "{ pro-forma aanvraag: 'ja' }"
    Wanneer poort "poort-pro-forma aanvraag" is uitgevoerd
    Dan is route "route-pro-forma aanvraag" actief

  Scenario: Geen pro-forma aanvraag route is actief
    Gegeven proces informatie "{ pro-forma aanvraag: 'nee' }"
    Wanneer poort "poort-pro-forma aanvraag" is uitgevoerd
    Dan is route "route-geen-pro-forma aanvraag" actief