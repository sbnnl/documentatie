#language: nl
Functionaliteit: Geef gebeurtenissen use-case (3ba5161b1f8bc57b4852f5677033347d)

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "GEEF_GEBEURTENISSEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | sbn         | niet     |
    | sbf         | niet     |
    | kredietbank | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    En een aanvraag van "<kredietbank>"
    Wanneer use-case "geef gebeurtenissen" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                     | wel-niet |
    | kredietbank_a |                            | niet     |
    | kredietbank_a | systeem                    | niet     |
    | kredietbank_a | sbn                        | niet     |
    | kredietbank_a | sbf                        | niet     |
    | kredietbank_a | kredietbank                | niet     |
    | kredietbank_a | kredietbank_a              | niet     |
    | kredietbank_a | kredietbank, kredietbank_b | niet     |
    | kredietbank_a | kredietbank, kredietbank_a | wel      |