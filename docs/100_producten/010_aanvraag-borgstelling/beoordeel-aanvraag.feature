#language: nl
Functionaliteit: Beoordeel aanvraag use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "BEOORDEEL_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | wsk         | niet     |
    | kredietbank | niet     |
    | systeem     | wel      |
    

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "registreer aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | wsk         | niet     |
    | systeem     | wel      |

  Scenario: Reguliere borgstelling aanvraag beneden 5000 euro wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999 }"
    Wanneer taak "taak-bepaal-beoordeling" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 4999, beoordeling: 'goedgekeurd' }"

  Scenario: Reguliere borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000 }"
    Wanneer taak "taak-bepaal-beoordeling" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: 5000, beoordeling: 'maatwerk' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt goedgekeurd
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000. maanden_actief: 35 }"
    Wanneer taak "taak-bepaal-beoordeling" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, beoordeling: 'goedgekeurd' }"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, maanden_actief: 36 }"
    Wanneer taak "taak-bepaal-beoordeling" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'overname', bruto_kredietsom: 5000, beoordeling: 'afgewezen' }"

   Abstract Scenario: Reguliere borgstelling aanvraag vanaf 5000 euro met een pro forma aanvraag
    Gegeven proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: <bruto_kredietsom>, pro_forma_aanvraag: { bruto_kredietsom: <pro_forma_bruto_kredietsom>, beoordeling: '<pro_forma_beoordeling>' } }"
    Wanneer taak "taak-bepaal-beoordeling" is uitgevoerd
    Dan is proces informatie "{ soort_aanvraag: 'regulier', bruto_kredietsom: <bruto_kredietsom>, beoordeling: '<beoordeling>' }"

  Voorbeelden:
  | bruto_kredietsom | pro_forma_bruto_kredietsom | pro_forma_beoordeling | beoordeling      |
  | 5000             | 5000                       | goedgekeurd           | goedgekeurd |
  | 4999             | 5000                       | afgewezen             | goedgekeurd |
  | 5499             | 5000                       | goedgekeurd           | goedgekeurd |
  | 5500             | 5000                       | goedgekeurd           | maatwerk    |
  