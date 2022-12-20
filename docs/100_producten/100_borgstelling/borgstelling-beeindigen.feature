# language: nl
Functionaliteit: Borgstelling beëindigen

  Achtergrond: 
    Gegeven het kenmerk "093e08db-6791-454b-a172-068099514907"

  Scenario: Borgstelling beëindigen
    Gegeven een afgegeven borgstelling
    Wanneer het "beëindiging borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "beëindigd"
    En is "de beëindiging" gearchiveerd
    En is de datum beëindiging juist geregistreerd
    En is het "borgstelling beëindigd" bericht ontvangen door het Schuldenknooppunt