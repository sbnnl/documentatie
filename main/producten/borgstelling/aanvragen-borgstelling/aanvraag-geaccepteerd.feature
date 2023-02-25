#language: nl (6b6a2c5784ae44acba939f3388962442)
Functionaliteit: Aanvraag goedgekeurd use-case
  
  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "VERSTUUR_AANVRAAG_GEACCEPTEERD"

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "verstuur aanvraag geaccepteerd" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | sbn         | niet     |
    | sbf         | niet     |
    | systeem     | wel      |