# Aanvragen borgstelling

## Beschrijving

Een aanvraag van een borgstelling door een kredietbank voor een saneringskrediet waarvoor het Wsk borg staat. De volgende aanvraag borgstelling producten kunnen afgenomen worden:

* aanvraag borgstelling;
* aanvraag vanuit een portefeuille overname;

Het doel van de aanvraag borgstelling is om tot een beoordeling te komen of er voor een saneringskrediet een borgstelling kan worden afgegeven en om het verzekerd bedrag vast te stellen.

Uit onderzoek is gebleken dat 92% van de aanvragen standaard aanvragen zijn. Deze aanvragen worden via een STP proces automatisch verwerkt waardoor er binnen enkele seconden een resultaat naar de kredietverstrekker verstuurd wordt.

Voor een maatwerk aanvraag borgstelling kan optioneel een verwijzing naar een pro-forma aanvraag opgegeven worden. Wanneer deze verwijzing bestaat dan mag die eenmalig meewegen in de acceptatie van de aanvraag.

<!-- einde -->

[Formulier](product.user-task.yml)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Aanvragen borgstelling

Registreert de aanvraag borgstelling met de status **aangevraagd** en start het aanvragen borgstelling proces.

Aan de hand van het postcode gebied wordt de gemeente code vastgesteld. Het postcode gebied wordt niet opgeslagen, de gemeente code wel.

<!-- einde -->

* [Acceptatie criteria](aanvragen-borgstelling.feature)

### Bepaal pro-forma borgstelling

Zoekt o.b.v. het "pro-forma borgstelling kenmerk" de pro-forma borgstelling op. De gevonden pro-forma borgstelling wordt toegevoegd aan het proces zodat het mee kan meewegen in de acceptatie van de aanvraag.

* [Acceptatie criteria](bepaal-pro-forma_borgstelling.feature)

### Accepteer automatisch

De informatie van de aanvraag wordt automatisch geaccepteerd op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* geaccepteerd
* afgewezen
* maatwerk

<!-- einde -->

* [Acceptatie criteria](accepteer-automatisch.feature)

### Accepteren maatwerk aanvraag

[Zie het accepteren maatwerk aanvraag product voor meer informatie.](accepteren-maatwerk-aanvraag/index.md)

### Archiveer contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

Er bestaan twee soorten contracten:

1. aanvraag: bruto kredietsom is verzekerd bedrag.
2. portefuille overname: uitstaand saldo is het verzekerd bedrag en de looptijd is de resterende looptijd zijn op basis van de uitbetaaldatum en looptijd.

<!-- einde -->

* [Document](contract.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Registreer verkoop

Sbf maakt gebruik van Exact online.  Voor **1% van het verzekerd bedrag** van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

<!-- einde -->

* [Pseudo code](RegistreerBorgstellingVerkoopUseCase.java)
* [Acceptatie criteria](registreer-verkoop.feature)

Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.

### Borgstelling afgegeven

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **afgegeven**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

### Archiveer afwijzing

Nadat de aanvraag is afgewezen wordt er een afwijzing aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling aanvraag afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **afgewezen**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

### Archiveer beëindiging

Nadat de aanvraag is beëindigd wordt er een beëindiging aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](beeindiging.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling aanvraag beëindigd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **beëindigd**.

<!-- einde -->

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

## Business requirements

| Nummer | Omschrijving                                                                                                                         | Eigenaar                  |
| -------| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| 1      | Financiële mutaties moeten in Exact online vastgelegd worden.                                                                        | Frank Dijkstra |
| 2      | Er moet ruimte zijn voor maatwerk in de beoordeling.                                                                                 | Frank Dijkstra |
| 3      | Een afgegeven borgstelling moet automatisch in rekening gebracht worden.                                                             | Frank Dijkstra |
| 4      | Aanvragen tot € 5.000,- en een looptijd t/m 36 maanden moeten automatisch geaccepteerd worden.                                       | Frank Dijkstra |
| 5      | Aanvragen vanaf € 5.000,- of met een looptijd langer dan 36 maanden moeten handmatig beoordeeld worden.                              | Frank Dijkstra |
| 6      | Aanvragen vanaf € 5.000,- die minder dan 5% hoger zijn dan een afgegeven pro-forma botgstelling moeten automatisch geaccepteerd worden. | Frank Dijkstra |
| 7      | Handmatige beoordelingen moeten gefiatteerd worden door het Sbf.                                                                     | Frank Dijkstra |
| 8      | Het moet eenvoudig mogelijk zijn om verschillende soorten aanvragen met verschillende informatie modellen te introduceren.           | Frank Dijkstra |
| 9      | Beslisregegels moeten configureerbaar zijn zodat die eenvoudig kunnen wijzigen.                                                      | Frank Dijkstra |
| 10     | Facturatie percentage moet configureerbaar zijn zodat die eenvoudig kan wijzigen.                                                    | Frank Dijkstra |
| 11     | Een pro-forma borgstelling mag maar 1 keer gebruikt worden in een aanvraag.                                                                 | Frank Dijkstra |
| 12      | Gemeente moet afgeleid worden op basis van postcode gebied. Het postcode gebied mag niet worden opgeslagen.                          | Frank Dijkstra |
| 13     | De aanvraag wordt een maatwerk aanvraag wanneer de afgeleide gemeente niet in de lijst van aangesloten gemeenten van de kredietbank voorkomt.   | Frank Dijkstra |
