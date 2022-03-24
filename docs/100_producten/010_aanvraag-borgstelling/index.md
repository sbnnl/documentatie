# Aanvraag borgstelling

## Product

Een aanvraag van een borgstelling door een kredietbank voor een saneringskrediet waarvoor het Wsk borg staat. De volgende aanvraag borgstelling producten kunnen afgenomen worden:

* aanvraag borgstelling;
* aanvraag vanuit een portefeuille overname;

<!-- einde -->

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde -->

* [Formulier](product.user-task.yml)
* [API](product.openapi.yml)
* [Acceptatie criteria](product.feature)
* [Dashboard](product.dashboard.yml)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Aanvragen borgstelling

Aanvragen borgstelling wordt vanuit de REST adapter aangeroepen. De use-case is verantwoordelijk voor:

* autorisatie controle:
    * de gebruiker moet beschikken over **"REGISTREER_AANVRAAG"** permissie;
    * de gebruiker moet beschikken over een **kredietbank claim** die overeenkomt met de kredietbank uit de aanvraag;
* registratie van de aanvraag;
* starten van het proces, een voorbeoordeling die eventueel in een eerder stadium met hetzelfde kenmerk is uitgevoerd moet aan de procesinformatie toegevoegd worden.

<!-- einde -->

* [Acceptatie criteria](aanvragen-borgstelling.feature)

### Beoordeel aanvraag

De informatie van de aanvraag wordt automatisch beoordeeld op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* maatwerk

Een voorbeoordeling met hetzelfde kenmerk die in een eerder stadium is uitgevoerd maakt ook deel uit van de informatie.

<!-- einde -->

* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Beoordeel maatwerk aanvraag

Voor de invulling van beoordeel maatwerk aanvraag bestaan twee opties:

* [optie 1 (simpel)](beoordeel-maatwerk-aanvraag-simpel/index.md)
* [optie 2 (uitgebreid)](beoordeel-maatwerk-aanvraag-uitgebreid/index.md)

### Archiveer contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt en opgeslagen in het archief van Exact online. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

<!-- einde -->

* [Document](contract.message.md)
* [Pseudo code](ArchiveerContractUseCase.java)
* [Acceptatie criteria](archiveer-contract.feature)

### Activeer borgstelling

Verander de status van de borgstelling aanvraag in actief.

<!-- einde -->

* [Acceptatie criteria](activeer-borgstelling.feature)

### Registreer verkoop

Wsf maakt gebruik van Exact online. Voor **1% van de bruto kredietsom** van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

<!-- einde -->

* [Pseudo code](RegistreerBorgstellingVerkoopUseCase.java)
* [Acceptatie criteria](registreer-verkoop.feature)

Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.

### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

<!-- einde -->

* [Acceptatie criteria](aanvraag-afgewezen.feature)

### Aanvraag goedgekeurd

De aanvraag goedgekeurd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

<!-- einde -->

* [Acceptatie criteria](aanvraag-goedgekeurd.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
