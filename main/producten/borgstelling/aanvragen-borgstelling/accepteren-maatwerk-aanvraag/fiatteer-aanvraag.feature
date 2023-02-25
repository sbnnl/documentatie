#language: nl (4889e825bded86c87101421bdbf9fec0)
Functionaliteit: Beoordeel aanvraag use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "FIATTEER_MAATWERK_AANVRAAG"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | kredietbank | niet     |
    | sbn         | niet     |
    | sbf         | wel      |

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
    | kredietbank_a | sbn                        | niet     |
    | kredietbank_a | sbf                        | niet     |