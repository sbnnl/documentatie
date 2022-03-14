#language: nl
Functionaliteit: Proces

  Scenario: Borgstelling aanvraag beneden 5000 euro vraag geen maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999 }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999, maatwerk: false }"

  Scenario: Borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000 }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000, maatwerk: true }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname vraag nooit om maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000 }"
    Wanneer taak "activity-bepaal-maatwerk" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, maatwerk: false }"

  Scenario: Maatwerk
    Gegeven proces informatie "{ maatwerk: true }"
    Wanneer poort "gateway-maatwerk" is uitgevoerd
    Dan is route "flow-maatwerk" actief

  Scenario: Geen maatwerk
    Gegeven proces informatie "{ maatwerk: false }"
    Wanneer poort "gateway-maatwerk" is uitgevoerd
    Dan is route "flow-geen-maatwerk" actief
  