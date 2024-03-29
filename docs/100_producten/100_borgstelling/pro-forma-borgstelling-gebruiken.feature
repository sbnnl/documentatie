# language: nl
Functionaliteit: Pro-forma borgstelling gebruiken

  Achtergrond:
    Gegeven een kredietbank
    Gegeven een pro-forma borgstelling
      | borgstelling id  | 0955bece-b75a-4368-b9d3-5c5a2596e920 |
      | bruto kredietsom | € 4999,99                            |
      | looptijd         | 36 maanden                           |
      | status           | AFGEGEVEN                            |
    Gegeven een aanvraag borgstelling bericht
      | kenmerk                   | 093e08db-6791-454b-a172-068099514907 |
      | pro-forma borgstelling id | 0955bece-b75a-4368-b9d3-5c5a2596e920 |
      | borgstelling categorie    | 100                                  |
      | bruto kredietsom          | € 4999,99                            |
      | postcode                  | 3743                                 |
      | looptijd                  | 36 maanden                           |
      | soort lening              | SK                                   |
      | contact emailadres        | test@test.nl                         |
    En aanvraag borgstelling bericht statistieken
      | code                | waarde |
      | Bevolkingsgroep     | 1      |
      | Betalende instantie | 2      |
      | Kredietdoel         | 3      |
      | Leeftijdsgroep      | 4      |
      | Soort borgstelling  | 5      |

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag
    Gegeven een pro-forma borgstelling
      | bruto kredietsom | € <pro forma bruto kredietsom> |
      | status           | <pro forma status>             |
    Gegeven een aanvraag borgstelling bericht
      | bruto kredietsom | € <bruto kredietsom> |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "<status>"

    Voorbeelden:
      | pro forma bruto kredietsom | pro forma status | bruto kredietsom | status             |
      | 4999,99                    | AFGEGEVEN        | 4999,99          | AFGEGEVEN          |
      | 5000                       | AFGEWEZEN        | 4999,99          | AFGEGEVEN          |
      | 5000                       | AFGEGEVEN        | 5249             | AFGEGEVEN          |
      | 5000                       | AFGEGEVEN        | 5250             | BEOORDEEL_AANVRAAG |
      | 6000                       | AFGEGEVEN        | 5700             | BEOORDEEL_AANVRAAG |

  Abstract Scenario: Aanvraag borgstelling met pro forma aanvraag met afwijkende looptijden
    Gegeven een pro-forma borgstelling
      | looptijd | <pro forma looptijd> maanden |
    Gegeven een aanvraag borgstelling bericht
      | looptijd | <looptijd> maanden |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "<status>"

    Voorbeelden:
      | pro forma looptijd | looptijd | status             |
      | 36                 | 35       | AFGEGEVEN          |
      | 36                 | 37       | BEOORDEEL_AANVRAAG |
      | 37                 | 36       | AFGEGEVEN          |
      | 37                 | 37       | AFGEGEVEN          |

  Scenario: Pro forma aanvraag eenmalig gebruiken
    Gegeven een pro-forma borgstelling
      | borgstelling id  | 0955bece-b75a-4368-b9d3-5c5a2596e920 |
      | bruto kredietsom | € 7000,00                            |
      | looptijd         | 36 maanden                           |
      | status           | AFGEGEVEN                            |
    Gegeven een aanvraag borgstelling bericht
      | kenmerk                   | 093e08db-6791-454b-a172-068099514907 |
      | pro-forma borgstelling id | 0955bece-b75a-4368-b9d3-5c5a2596e920 |
      | borgstelling categorie    | 100                                  |
      | bruto kredietsom          | € 7001,00                            |
      | postcode                  | 3743                                 |
      | looptijd                  | 36 maanden                           |
      | soort lening              | SK                                   |
      | contact emailadres        | test@test.nl                         |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "AFGEGEVEN"

    Gegeven een aanvraag borgstelling bericht
      | kenmerk                   | 290d9da7-d892-42ff-83a5-0399a03b59b6 |
      | pro-forma borgstelling id | 0955bece-b75a-4368-b9d3-5c5a2596e920 |
      | borgstelling categorie    | 100                                  |
      | bruto kredietsom          | € 7001,00                            |
      | postcode                  | 3743                                 |
      | looptijd                  | 36 maanden                           |
      | soort lening              | SK                                   |
      | contact emailadres        | test@test.nl                         |
    Wanneer het "aanvraag borgstelling" bericht is verstuurd via het Schuldenknooppunt
    En het Schuldenknooppunt bericht is verwerkt
    Dan is de status van de borgstelling "BEOORDEEL_AANVRAAG"
