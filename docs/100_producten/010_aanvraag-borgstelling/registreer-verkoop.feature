#language: nl
Functionaliteit: Registreer verkoop use-case
  
  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "REGISTREER_VERKOOP"

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | wsk         | niet     |
    | systeem     | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "registreer aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | wsk         | niet     |
    | systeem     | wel      |