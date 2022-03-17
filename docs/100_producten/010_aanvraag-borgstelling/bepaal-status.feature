#language: nl
Functionaliteit: Bepaal status

  Scenario: Reguliere borgstelling aanvraag beneden 5000 euro wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999, status: 'goedgekeurd' }"

  Scenario: Reguliere borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000, status: 'maatwerk' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000. maanden_actief: 35 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, status: 'goedgekeurd' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, maanden_actief: 36 }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, status: 'afgewezen' }"

   Abstract Scenario: Reguliere borgstelling aanvraag vanaf 5000 euro met een pro forma aanvraag
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: <bruto_kredietsom>, pro_forma_aanvraag: { bruto_kredietsom: <pro_forma_bruto_kredietsom>, status: '<pro_forma_status>'  } }"
    Wanneer taak "taak-bepaal-status" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: <bruto_kredietsom>, status: '<status>' }"

  Voorbeelden:
  | bruto_kredietsom | pro_forma_bruto_kredietsom | pro_forma_status | status      |
  | 5000             | 5000                       | goedgekeurd      | goedgekeurd |
  | 4999             | 5000                       | afgewezen        | goedgekeurd |
  | 5499             | 5000                       | goedgekeurd      | goedgekeurd |
  | 5500             | 5000                       | goedgekeurd      | maatwerk    |
  