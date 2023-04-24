# Pro-forma aanvragen borgstelling

## Beschrijving

Voordat er een saneringskrediet aanvraag gestart kan worden door de kredietbank moet de kredietbank weten of een mogelijke aanvraag geborgd gaat worden door het Wsk.

Via een pro-forma aanvraag kan de kredietbank laten toetsen of het Wsk de afloscapaciteit van de client wil borgen. De pro-forma aanvraag maakt onderdeel uit van het voortraject van de schuldhulpverlening en dit traject kan door de kredietbank of door de schuldhulpverlener uitgevoerd worden. Wanneer de kredietbank niet zelf het voortraject uitvoert dan kan het via de [pro-forma aanvraag adapter](../../adapters/pro-forma-aanvraag-adapter/index.md) een pro-forma aanvraag door een schuldhulpverlener laten aanvragen.

Een pro-forma aanvraag is alleen relevant voor maatwerk-aanvragen. Onderzoek heeft uitgewezen dat dit ongeveer 8% van de aanvragen zijn.

<!-- einde -->

[Formulier](product.user-task.yml)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Pro-forma aanvragen borgstelling

Registreert de pro-forma aanvraag en start het pro-forma aanvragen borgstelling proces.

<!-- einde -->

* [Acceptatie criteria](../010_aanvragen-borgstelling/010_afhandelen-aanvraag-borgstelling/aanvragen-borgstelling.feature)

### Accepteer automatisch

De informatie van de aanvraag wordt automatisch geaccepteerd op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* geaccepteerd
* maatwerk

<!-- einde -->

* [Acceptatie criteria](../010_aanvragen-borgstelling//010_afhandelen-aanvraag-borgstelling/accepteer-automatisch.feature)

### Accepteren maatwerk aanvraag

[Zie het accepteren maatwerk aanvraag product voor meer informatie.](../aanvragen-borgstelling/afhandelen-aanvraag-borgstelling/accepteren-maatwerk-aanvraag/index.md)

### Archiveer pro-forma aanvraag

Nadat de aanvraag is goedgekeurd wordt er een pro-forma aanvraag aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](pro-forma_aanvraag.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Pro-forma borgstelling afgegeven

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de pro-forma borgstelling wijzigt in **afgegeven**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

### Archiveer afwijzing

Nadat de aanvraag is afgewezen wordt er een afwijzing aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Pro-forma aanvraag afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de pro-forma borgstelling wijzigt in **afgewezen**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

## Business requirements

| Nummer | Omschrijving                                                                                                                         | Eigenaar       |
| -------| ------------------------------------------------------------------------------------------------------------------------------------ | -------------- |
| 1      | Een pro-forma aanvraag moet via een web formulier aangevraagd kunnen worden.                                                            | Frank Dijkstra |
| 2      | Er moet ruimte zijn voor maatwerk in de beoordeling.                                                                                 | Frank Dijkstra |
| 3      | Het resultaat van de pro-forma aanvraag moet gebruikt kunnen voor de acceptatie van een borgstelling.                                  | Frank Dijkstra |
| 5      | Aanvragen tot € 5.000,- en een looptijd t/m 36 maanden moeten automatisch geaccepteerd worden.                                       | Frank Dijkstra |
| 6      | Aanvragen vanaf € 5.000,- of met een looptijd langer dan 36 maanden moeten handmatig beoordeeld worden.                              | Frank Dijkstra |
| 7      | Handmatige beoordelingen moeten gefiatteerd worden door het Sbf.                                                                     | Frank Dijkstra |
| 8      | Beslisregegels moeten configureerbaar zijn zodat die eenvoudig kunnen wijzigen.                                                      | Frank Dijkstra |
| 9      | Gemeente moet afgeleid worden op basis van postcode gebied. Het postcode gebied mag niet worden opgeslagen.                          | Frank Dijkstra |
| 10     | De aanvraag wordt afgewezen wanneer de afgeleide gemeente niet in de lijst van aangesloten gemeenten van de kredietbank voorkomt.   | Frank Dijkstra |
