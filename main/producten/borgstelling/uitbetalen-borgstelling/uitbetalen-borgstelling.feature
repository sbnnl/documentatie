#language: nl
Functionaliteit: Uitbetalen borgstelling use-case (e99245f64afc261db1935da5ddbb8240)

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "UITBETALEN_BORGSTELLING"

    Voorbeelden:
    | rollen      | wel-niet |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | niet     |
    | kredietbank | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een aanvraag van "<kredietbank>"
    En een gebruiker met de rollen "<rollen>"
    Wanneer use-case "uitbetalen borgstelling" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                                                    | wel-niet |
    | kredietbank_a | systeem                                                   | niet     |
    | kredietbank_a | sbn                                                       | niet     |
    | kredietbank_a | sbf                                                       | niet     |
    | kredietbank_a | kredietbank                                               | niet     |
    | kredietbank_a | kredietbank_a                                             | niet     |
    | kredietbank_a | kredietbank, kredietbank_b                                | niet     |
    | kredietbank_b | kredietbankkredietbank_a, kredietbank_c, kredietbank_d    | niet     |    
    | kredietbank_a | kredietbank, kredietbank_a                                | wel      |
    | kredietbank_a | kredietbank, kredietbank_a, kredietbank_b, kredietbank_c  | wel      |