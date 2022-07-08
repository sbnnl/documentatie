#language: nl
Functionaliteit: Geef borgstellingen use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "GEEF_BORGSTELLING"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | kredietbank | niet     |
    | sbf         | wel      |
    | sbn         | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "geef borgstelling" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | sbn                                                       | niet     |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | kredietbank_a                                             | niet     |
    | kredietbank_a | kredietbank, kredietbank_b                                | niet     |
    | kredietbank_b | kredietbank, kredietbank_a, kredietbank_c, kredietbank_d  | niet     |
    | kredietbank_a | systeem, kredietbank_a                                    | niet     |
    | kredietbank_a | kredietbank, kredietbank_a                                | niet     |
    | kredietbank_a | kredietbank, kredietbank_a, kredietbank_b, kredietbank_c  | niet     |    
    | kredietbank_a | sbn, kredietbank_a                                        | wel      |    
    | kredietbank_a | sbf, kredietbank_a                                        | wel      |