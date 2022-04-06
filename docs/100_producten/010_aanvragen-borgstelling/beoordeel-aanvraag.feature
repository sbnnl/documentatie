#language: nl
Functionaliteit: Beoordeel aanvraag use-case

  Scenario: Borgstelling aanvraag beneden 5000 euro wordt geaccepteerd
    Gegeven aanvraag
    En bruto kredietsom is "4999"
    Wanneer beoordeeld
    Dan is de beoordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven aanvraag
    En bruto kredietsom is "5000"
    Wanneer beoordeeld
    Dan is de beoordeling "maatwerk"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt geaccepteerd
    Gegeven overname
    En bruto kredietsom is "5000"
    En maanden actief is "35"
    Wanneer beoordeeld
    Dan is de beoordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven overname
    En bruto kredietsom is "5000"
    En maanden actief is "36"
    Wanneer beoordeeld
    Dan is de beoordeling "afgewezen"

  Abstract Scenario: Borgstelling aanvraag met een voorbeoordeling: <opmerking>

    Gegeven aanvraag
    En bruto kredietsom is "<bruto_kredietsom>"
    En bruto kredietsom van de voorbeoordeling "<voorbeoordeling_bruto_kredietsom>"
    En de beoordeling was "<voorbeoordeling_beoordeling>"
    Wanneer beoordeeld
    Dan is de beoordeling "<beoordeling>"

    Voorbeelden:
    | voorbeoordeling_bruto_kredietsom | voorbeoordeling_beoordeling | bruto_kredietsom | beoordeling  | opmerking                                       |
    | 5000                             | geaccepteerd                | 5000             | geaccepteerd | pro-voorbeoordeling is identiek aan de aanvraag. |
    | 5000                             | afgewezen                   | 4999             | geaccepteerd | kredietsom valt onder maatwerk grens. |
    | 5000                             | geaccepteerd                | 5249             | geaccepteerd | kredietsom wijkt minder dan 5% af van de voorbeoordeling. |
    | 5000                             | geaccepteerd                | 5250             | maatwerk     | kredietsom wijkt 5% of meer af van de voorbeoordeling. |

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "BEOORDEEL_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | niet     |
    | sbf         | niet     |
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
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |
  