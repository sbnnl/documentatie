#language: nl (afca806df95eabfc5502ca91646c3e7e)
Functionaliteit: Beoordeel maatwerk aanvraag proces

  Scenario: Aanvullende vragen route is actief
    Gegeven proces informatie "{ beoordeling: 'aanvullende_vragen' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-aanvullende-vragen" actief

  Scenario: Advies route is actief
    Gegeven proces informatie "{ beoordeling: 'advies' }"
    Wanneer poort "poort-beoordeel-aanvraag-uitkomst" is uitgevoerd
    Dan is route "route-advies" actief  

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