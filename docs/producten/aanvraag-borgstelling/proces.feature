#language: nl
Functionaliteit: Proces

  Scenario: Borgstelling aanvraag beneden 5000 euro vraag geen maatwerk
    Gegeven proces informatie "{ Bedrag: 4999 }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 4999, Maatwerk: false }"

  Scenario: Borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven proces informatie "{ Bedrag: 5000 }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 5000, Maatwerk: true }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname vraag nooit om maatwerk
    Gegeven proces informatie "{ Bedrag: 5000, AanmaakReden: 'Overname' }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ Bedrag: 5000, AanmaakReden: 'Overname', Maatwerk: false }"

  Scenario: Maatwerk
    Gegeven proces informatie "{ Maatwerk: true }"
    Wanneer poort "gateway-maatwerk" is uitgevoerd
    Dan is route "flow-maatwerk" actief

  Scenario: Geen maatwerk
    Gegeven proces informatie "{ Maatwerk: false }"
    Wanneer poort "gateway-maatwerk" is uitgevoerd
    Dan is route "flow-geen-maatwerk" actief
  