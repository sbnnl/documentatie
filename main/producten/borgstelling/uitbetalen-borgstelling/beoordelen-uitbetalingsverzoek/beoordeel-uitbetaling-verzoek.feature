#language: nl (3e331d4fe1504f41320b4c135b4923d2)
Functionaliteit: Beoordeel uitbetaling verzoek use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "BEOORDEEL_UITBETALING_VERZOEK"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | kredietbank | niet     |
    | wsk         | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    En een aanvraag van "<kredietbank>"
    Wanneer use-case "beoordeel uitbetaling verzoek" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                     | wel-niet |
    | kredietbank_a |                            | niet     |
    | kredietbank_a | systeem                    | niet     |
    | kredietbank_a | kredietbank                | niet     |
    | kredietbank_a | kredietbank, kredietbank_a | niet     |
    | kredietbank_a | sbf                        | niet     |
    | kredietbank_a | sbn                        | wel      |