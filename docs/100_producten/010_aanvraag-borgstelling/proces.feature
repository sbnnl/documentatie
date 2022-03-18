#language: nl
Functionaliteit: Aanvraag borgstelling proces

  Scenario: Goedgekeurd route is actief
    Gegeven proces informatie "{ status: 'goedgekeurd' }"
    Wanneer poort "poort-status" is uitgevoerd
    Dan is route "route-goedgekeurd" actief

  Scenario: Maatwerk route is actief
    Gegeven proces informatie "{ status: 'maatwerk' }"
    Wanneer poort "poort-status" is uitgevoerd
    Dan is route "route-maatwerk" actief

  Scenario: Afgewezen route is actief
    Gegeven proces informatie "{ status: 'afgewezen' }"
    Wanneer poort "poort-status" is uitgevoerd
    Dan is route "route-afgewezen" actief

  Scenario: Pro forma route is actief
    Gegeven proces informatie "{ pro_forma: true }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-pro-forma-aanvraag" actief

  Scenario: Geen pro forma route is actief
    Gegeven proces informatie "{ pro_forma: false }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-geen-pro-forma-aanvraag" actief
  

  