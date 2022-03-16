#language: nl
Functionaliteit: Registreer aanvraag use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "REGISTREER_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | wel      |
    | systeem     | niet     |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "registreer aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | kredietbank, kredietbank_a                                | wel      |
    | kredietbank_a | kredietbank, kredietbank_a, kredietbank_b, kredietbank_c  | wel      |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | kredietbank_a                                             | niet     |
    | kredietbank_a | kredietbank, kredietbank_b                                | niet     |
    | kredietbank_b | kredietbankkredietbank_a, kredietbank_c, kredietbank_d    | niet     |