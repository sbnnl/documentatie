# Voorbeoordeling

## Product

Voordat er een saneringskrediet aanvraag gestart kan worden door de kredietbank moet de kredietbank weten of een mogelijke aanvraag geborgd gaat worden door het Wsk. 

Via een voorbeoordeling kan de kredietbank laten toetsen of het Wsk de afloscapaciteit van de client wil borgen.

<!-- einde -->

* [Formulier](product.user-task.yml)
* [API](product.openapi.yml)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Voorbeoordelen

Registreert de voorbeoordeling en start het voorbeoordelen proces.

<!-- einde -->

* [Acceptatie criteria](voorbeoordelen.feature)

### Beoordeel aanvraag

De informatie van de aanvraag wordt automatisch beoordeeld op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* geaccepteerd
* maatwerk

<!-- einde -->

* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Beoordelen maatwerk aanvraag

[Zie het beoordelen maatwerk aanvraag product voor meer informatie.](../aanvragen-borgstelling/beoordelen-maatwerk-aanvraag/index.md)

### Archiveer voorbeoordeling

Nadat de aanvraag is goedgekeurd wordt er een voorbeoordeling aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](voorbeoordeling.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Voorbeoordeling goedgekeurd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **goedgekeurd**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

### Archiveer afwijzing

Nadat de aanvraag is afgewezen wordt er een afwijzing aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Voorbeoordeling afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **afgewezen**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

## Business requirements

| Nummer | Omschrijving                                                                                                                         | Eigenaar       |
| -------| ------------------------------------------------------------------------------------------------------------------------------------ | -------------- |
| 1      | Een voorbeoordeling moet via een web formulier aangevraagd kunnen worden.                                                            | Frank Dijkstra |
| 2      | Er moet ruimte zijn voor maatwerk in de beoordeling.                                                                                 | Frank Dijkstra |
| 3      | Het resultaat van de voorbeoordeling moet gebruikt kunnen voor de beoordeling van een borgstelling.                                  | Frank Dijkstra |
| 5      | Aanvragen tot € 5.000,- en een looptijd t/m 36 maanden moeten automatisch geaccepteerd worden.                                       | Frank Dijkstra |
| 6      | Aanvragen vanaf € 5.000,- of met een looptijd langer dan 36 maanden moeten handmatig beoordeeld worden.                              | Frank Dijkstra |
| 7      | Handmatige beoordelingen moeten gefiatteerd worden door het Sbf.                                                                     | Frank Dijkstra |
| 8      | Beslisregegels moeten configureerbaar zijn zodat die eenvoudig kunnen wijzigen.                                                      | Frank Dijkstra |