#language: nl
Functionaliteit: Wjjs borgstelling uitbetaling af use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "VERSTUUR_UITBETALING_AFGEWEZEN"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |
    | kredietbank | niet     |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "verstuur uitbetaling afgewezen" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | sbn                                                       | niet     |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | systeem                                                   | wel      |