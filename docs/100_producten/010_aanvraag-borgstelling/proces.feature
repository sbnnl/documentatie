#language: nl
Functionaliteit: Proces

  Scenario: Reguliere borgstelling aanvraag beneden 5000 euro wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999, status: 'goedgekeurd' }"

  Scenario: Reguliere borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000, status: 'maatwerk' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan xxx dagen heeft gelopen wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000. dagen_actief: 100 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, status: 'goedgekeurd' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan xxx dagen heeft gelopen wordt afgewezen
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000. dagen_actief: 101 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, status: 'afgewezen' }"

  Scenario: Goedgekeurd
    Gegeven proces informatie "{ status: 'goedgekeurd' }"
    Wanneer poort "gateway-status" is uitgevoerd
    Dan is route "flow-goedgekeurd" actief

  Scenario: Maatwerk
    Gegeven proces informatie "{ status: 'maatwerk' }"
    Wanneer poort "poort-status" is uitgevoerd
    Dan is route "flow-maatwerk" actief

  Scenario: Afgewezen
    Gegeven proces informatie "{ status: 'afgewezen' }"
    Wanneer poort "poort-afgewezen" is uitgevoerd
    Dan is route "flow-afgewezen" actief
  