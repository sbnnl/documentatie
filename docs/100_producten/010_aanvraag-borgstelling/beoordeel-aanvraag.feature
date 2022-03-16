#language: nl
Functionaliteit: Beoordeel aanvraag taak

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "BEOORDEEL_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | kredietbank | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    En een aanvraag van "<kredietbank>"
    Wanneer use-case "beoordeel aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                     | wel-niet |
    | kredietbank_a |                            | niet     |
    | kredietbank_a | systeem                    | niet     |
    | kredietbank_a | kredietbank                | niet     |
    | kredietbank_a | kredietbank_a              | niet     |
    | kredietbank_a | kredietbank, kredietbank_a | niet     |
    | kredietbank_a | kredietbank, kredietbank_b | wel      |