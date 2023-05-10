# language: nl
Functionaliteit: Herfiatteren

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een borgstelling categorie
      | kenmerk          | 100       |
      | premie           | 10%       |
      | accepteren vanaf | € 0,0     |
      | maatwerk vanaf   | € 5000,0  |
      | afwijzen vanaf   | € 10000,0 |
    Gegeven een aanvraag borgstelling bericht
      | kenmerk                | 093e08db-6791-454b-a172-068099514907 |
      | borgstelling categorie | 100                                  |
      | bruto kredietsom       | € 4999,99                            |
      | postcode               | 3743                                 |
      | looptijd               | 36 maanden                           |
      | soort lening           | SK                                   |
      | contact emailadres     | test@test.nl                         |
    En aanvraag borgstelling bericht statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |

  Scenario: Borgstelling aanvraag met lopende borgstelling aanvraag
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 5000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "MAATWERK"
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 2000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan zijn er 2 borgstelling aanvragen actief
    En is de status van de borgstelling "WACHTEN"
    Wanneer de "beoordeel maatwerk borgstelling aanvraag" taak is goedgekeurd
    En is de status van de borgstelling "AFGEGEVEN"
    En is "het contract" gearchiveerd
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 2 keer ontvangen door het Schuldenknooppunt

  Scenario: Borgstelling aanvraag met afgeronde borgstelling aanvraag
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    En is de status van de borgstelling "AFGEGEVEN"
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € 2000,00 |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "AFGEGEVEN"
    En is er één verkoop geregistreerd van € 49,99
    En is er geen verkoop geregistreerd van € 20,00
    En is het "borgstelling afgegeven" bericht 2 keer ontvangen door het Schuldenknooppunt