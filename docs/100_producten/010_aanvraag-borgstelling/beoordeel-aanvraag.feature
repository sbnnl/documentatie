#language: nl
Functionaliteit: Beoordeel aanvraag use-case

  Scenario: Borgstelling aanvraag beneden 5000 euro wordt geaccepteerd
    Gegeven aanvraag
    En bruto kredietsom is "4999"
    Wanneer beoordeeld
    Dan is de beeordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanaf 5000 euro vraagt om maatwerk
    Gegeven aanvraag
    En bruto kredietsom is "5000"
    Wanneer beoordeeld
    Dan is de beeordeling "maatwerk"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet korter dan 36 maanden heeft gelopen wordt geaccepteerd
    Gegeven overname
    En bruto kredietsom is "5000"
    En maanden actief is "35"
    Wanneer beoordeeld
    Dan is de beeordeling "geaccepteerd"

  Scenario: Borgstelling aanvraag vanuit een portefeuille overname waarbij het saneringskrediet langer dan 36 maanden heeft gelopen wordt afgewezen
    Gegeven overname
    En bruto kredietsom is "5000"
    En maanden actief is "36"
    Wanneer beoordeeld
    Dan is de beeordeling "afgewezen"

  Abstract Scenario: Borgstelling aanvraag vanaf 5000 euro met een pro forma aanvraag
    Gegeven overname
    En bruto kredietsom is "<bruto_kredietsom>"
    En pro-forma-aanvraag bruto kredietsom was "<pro_forma_bruto_kredietsom>"
    En pro-forma-aanvraag beoordeling was "<pro_forma_beoordeling>"
    Wanneer beoordeeld
    Dan is de beeordeling "<beoordeling>"

    Voorbeelden:
    | pro_forma_bruto_kredietsom | pro_forma_beoordeling | bruto_kredietsom | beoordeling | 
    | 5000                       | geaccepteerd          | 5000             | geaccepteerd  |
    | 5000                       | afgewezen             | 4999             | geaccepteerd  |
    | 5000                       | geaccepteerd          | 5499             | geaccepteerd  |
    | 5000                       | geaccepteerd          | 5500             | maatwerk      |

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
  