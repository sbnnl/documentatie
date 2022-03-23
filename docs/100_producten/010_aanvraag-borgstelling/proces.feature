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

  Scenario: Pro forma route is actief
    Gegeven proces informatie "{ soort_aanvraag: 'pro_forma_aanvraag' }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-pro-forma-aanvraag" actief

  Scenario: Geen pro forma route is actief
    Gegeven proces informatie "{ soort_aanvraag: 'aanvraag' }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-geen-pro-forma-aanvraag" actief
  

  