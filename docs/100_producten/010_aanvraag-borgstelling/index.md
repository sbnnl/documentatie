# Aanvraag borgstelling

## Product

@Frank, graag hier het doel van het product beschrijven:

Een registratie van een nieuw verstrekt saneringskrediet waarvoor het Wsk borg staat. 

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde van de lijst -->

* [Dashboard](product.dashboard.yml)
* [Formulier](product.user-task.yml)
* [API](product.openapi.yml)
* [Acceptatie criteria](product.feature)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Registreer aanvraag

Registreer aanvraag wordt vanuit de REST adapter aangeroepen. De use-case is verantwoordelijk voor:

* autorisatie controle:
    * de gebruiker moet beschikken over **"REGISTREER_AANVRAAG"** permissie;
    * de gebruiker moet beschikken over een **kredietbank claim** die overeenkomt met de kredietbank uit de aanvraag;
* registratie van de aanvraag;
* starten van het proces;

<!-- einde -->

* [Acceptatie criteria](registreer-aanvraag-use-case.feature)

### Beoordeel aanvraag

De aanvraag wordt automatisch beoordeeld op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* maatwerk

<!-- einde -->

* [Acceptatie criteria](beoordeel-aanvraag.feature)

:::info

**Vragen:**

* @Frank hoeveel (absoluut of percentage) mag de bruto kredietsom afwijken van een geaccepteerde pro forma aanvraag om ook geaccepteerd te worden?

:::

### Beoordeel maatwerk aanvraag

Voor de invulling van beoordeel maatwerk aanvraag bestaan twee opties:

* [optie 1 (simpel)](beoordeel-maatwerk-aanvraag-simpel/index.md)
* [optie 2 (uitgebreid)](beoordeel-maatwerk-aanvraag-uitgebreid/index.md)

### Maak contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt.

* [Document](contract.message.md)
* [Acceptatie criteria](maak-contract.feature)

### Activeer borgstelling

Verander de status van de borgstelling aanvraag in actief.

### Registreer verkoop

Wsf maakt gebruik van Exact online. Voor **1% van de bruto kredietsom** van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

**pseudo code**:

[pseudo code](RegistreerBorgstellingVerkoopUseCase.java)


Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.

:::info

* @Frank zou je kunnen uitzoeken hoe verzamelfacturen in exact werken? Ik ben uitgekomen op een sales order en ik verwacht dat je meerdere sales oders aan een factuur kan koppelen....

:::

### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Aanvraag goedgekeurd

De aanvraag goedgekeurd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |