#language: nl
Functionaliteit: Verstuur gebeurtenis use-case (03f60a60c051a0d6706fb0e7d87ed24e)

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "VERSTUUR_GEBEURTENIS"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |
    | kredietbank | niet     |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "verstuur gebeurtenis" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | niet     |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | systeem                                                   | wel      |