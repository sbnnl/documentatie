#language: nl (025ced024264f5462de47dc47a519b5d)
Functionaliteit: Geef aanvullende informatie use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "GEEF_ADVIES"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | sbn         | niet     |
    | sbf         | niet     |
    | kredietbank | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    En een aanvraag van "<kredietbank>"
    Wanneer use-case "geef advies" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                     | wel-niet |
    | kredietbank_a |                            | niet     |
    | kredietbank_a | systeem                    | niet     |
    | kredietbank_a | sbn                        | niet     |
    | kredietbank_a | sbf                        | niet     |
    | kredietbank_a | kredietbank                | niet     |
    | kredietbank_a | kredietbank_a              | niet     |
    | kredietbank_a | kredietbank, kredietbank_a | niet     |
    | kredietbank_a | kredietbank, kredietbank_b | wel      |
    