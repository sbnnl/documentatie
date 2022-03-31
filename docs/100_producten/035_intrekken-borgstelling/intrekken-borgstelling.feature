#language: nl
Functionaliteit: Intrekken borgstelling use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "INTREKKEN_BORGSTELLING"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | niet     |
    | sbn         | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "intrrekken borgstelling" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | wel                                                       | niet     |