# Aanvragen borgstelling

## Product

Een aanvraag van een borgstelling door een kredietbank voor een saneringskrediet waarvoor het Wsk borg staat. De volgende aanvraag borgstelling producten kunnen afgenomen worden:

* aanvraag borgstelling;
* aanvraag vanuit een portefeuille overname;

Het doel van de aanvraag borgstelling is om tot een beoordeling te komen of er voor een saneringskrediet een borgstelling kan worden afgegeven.

<!-- einde -->

* [Formulier](product.user-task.yml)
* [API](product.openapi.yml)
<!-- * [Acceptatie criteria](product.feature)
* [Dashboard](product.dashboard.yml) -->

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Aanvragen borgstelling

Registreert de aanvraag borgstelling met de status **aangevraagd** en start het aanvragen borgstelling proces.

<!-- einde -->

* [Acceptatie criteria](aanvragen-borgstelling.feature)

### Bepaal voorbeoordeling

Zoekt o.b.v. het kenmerk van de klant naar een bestaande voorbeoordeling. Wanneer gevonden wordt deze toegevoegd aan het proces.

### Beoordeel aanvraag

De informatie van de aanvraag wordt automatisch beoordeeld op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* geaccepteerd
* afgewezen
* maatwerk

<!-- einde -->

* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Beoordeel maatwerk aanvraag

Voor de invulling van beoordeel maatwerk aanvraag bestaan twee opties:

* [optie 1 (simpel)](beoordelen-maatwerk-aanvraag-simpel/index.md)
* [optie 2 (uitgebreid)](beoordelen-maatwerk-aanvraag-uitgebreid/index.md)

### Archiveer contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](contract.message.md)
<!-- * [Pseudo code](ArchiveerContractUseCase.java) -->
* [Acceptatie criteria](../archiveer.feature)

### Activeer borgstelling

Verander de status van de borgstelling in actief.

<!-- einde -->

* [Acceptatie criteria](activeer-borgstelling.feature)

### Registreer verkoop

Sbf maakt gebruik van Exact online. Voor **1% van de bruto kredietsom** van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

<!-- einde -->

* [Pseudo code](RegistreerBorgstellingVerkoopUseCase.java)
* [Acceptatie criteria](registreer-verkoop.feature)

Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.

### Aanvraag geaccepteerd

De aanvraag geaccepteerd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **actief**.

<!-- einde -->

* [Acceptatie criteria](aanvraag-geaccepteerd.feature)

### Archiveer afwijzing

Nadat de aanvraag is afgewezen wordt er een afwijzing aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **afgewezen**.

<!-- einde -->

* [Acceptatie criteria](aanvraag-afgewezen.feature)

### Archiveer beëindiging

Nadat de aanvraag is beëindigd wordt er een beëindiging aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](beeindiging.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Aanvraag beëindigd

De aanvraag beëindigd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **beëindigd**.

<!-- einde -->

* [Acceptatie criteria](aanvraag-beeindigd.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
