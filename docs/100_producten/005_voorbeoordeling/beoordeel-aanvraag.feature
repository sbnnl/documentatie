#language: nl
Functionaliteit: Beoordeel aanvraag use-case

  Abstract Scenario: Beoordeel aanvraag: "<reden>"
    Gegeven aanvraag
    En bruto kredietsom is <kredietsom>
    En afloscapaciteit is <afloscapaciteit> per maand    
    En looptijd is <looptijd> maanden
    Wanneer beoordeeld
    Dan is de uitkomst "<uitkomst>"

    Voorbeelden:
    | kredietsom | afloscapaciteit | looptijd | uitkomst     | reden                                                                      |
    | 4968       | 138             | 36       | geaccepteerd | Totale afloscapaciteit (>= kredietsom en < 5000) en looptijd <= 36 maanden |
    | 4969       | 138             | 36       | maatwerk     | Totale afloscapaciteit < kredietsom                                        |
    | 5004       | 139             | 36       | maatwerk     | Totale afloscapaciteit is groter dan 5000                                  |
    | 4969       | 138             | 37       | maatwerk     | Looptijd is > 36 maanden                                                   |

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
  