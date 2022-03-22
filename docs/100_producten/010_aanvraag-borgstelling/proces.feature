#language: nl
Functionaliteit: Aanvraag borgstelling proces

  Scenario: Pro forma route is actief
    Gegeven proces informatie "{ soort_aanvraag: 'pro_forma_aanvraag' }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-pro-forma-aanvraag" actief

  Scenario: Geen pro forma route is actief
    Gegeven proces informatie "{ soort_aanvraag: 'aanvraag' }"
    Wanneer poort "poort-pro-forma-aanvraag" is uitgevoerd
    Dan is route "route-geen-pro-forma-aanvraag" actief
  

  