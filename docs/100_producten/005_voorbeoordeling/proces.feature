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