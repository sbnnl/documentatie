#language: nl
Functionaliteit: Proces

  Scenario: Borgstelling aanvragen beneden 5000 euro worden geaccepteerd
    Gegeven proces informatie "{ Bedrag: 4999 }"
    Wanneer business rule task "activiteit-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 4999, Maatwerk: false }"

  Scenario: Borgstelling aanvragen vanaf 5000 euro vragen om maatwerk
    Gegeven proces informatie "{ Bedrag: 5000 }"
    Wanneer business rule task "activiteit-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 5000, Maatwerk: true }"

  Scenario: Borgstelling aanvragen vanaf vanuit portefeuille overname worden altijd geaccepteerd
    Gegeven proces informatie "{ Bedrag: 5000, AanmaakReden: 'Overname' }"
    Wanneer business rule task "activiteit-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 5000, AanmaakReden: 'Overname', Maatwerk: false }"