#language: nl
Functionaliteit: Uitebataling borgstelling proces

  Scenario: Uitbetaling geaccepteerd route is actief
    Gegeven proces informatie "{ beoordeling: 'geaccepteerd' }"
    Wanneer poort "poort-beoordeling" is uitgevoerd
    Dan is route "route-geaccepteerd" actief

  Scenario: Uitbetaling afgewezen route is actief
    Gegeven proces informatie "{ beoordeling: 'afgewezen' }"
    Wanneer poort "poort-beoordeling" is uitgevoerd
    Dan is route "route-afgewezen" actief

  Scenario: Uitbetaling gefiatteerd route is actief
    Gegeven proces informatie "{ gefiatteerd: 'ja' }"
    Wanneer poort "poort-gefiatteerd" is uitgevoerd
    Dan is route "route-gefiatteerd" actief

  Scenario: Uitbetaling niet gefiatteerd route is actief
    Gegeven proces informatie "{ gefiatteerd: 'niet' }"
    Wanneer poort "poort-gefiatteerd" is uitgevoerd
    Dan is route "route-niet-gefiatteerd" actief