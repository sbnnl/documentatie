# Uitbetalen borgstelling

## Product

Het doel van uitbetalen borgstelling is om tot een beoordeling te komen of de borgstelling van een saneringskrediet uitbetaald mag worden.

<!-- einde -->

* [API](product.openapi.yml)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Uitbetalen borgstelling

Start het proces uitbetalen borgstelling.

* [Acceptatie criteria](uitbetalen-borgstelling.feature)

### Beoordelen uitbetalingsverzoek

Voor de invulling van beoordelen uitbetalingsverzoek bestaan twee opties:

* [optie 1 (simpel)](beoordelen-uitbetalingsverzoek-simpel/index.md)
* [optie 2 (uitgebreid)](beoordelen-uitbetalingsverzoek-uitgebreid/index.md)

### Betaal borgstelling uit

Sbf maakt gebruik van Exact online. Voor het vastgestelde borgstelling bedrag wordt er automatisch via de API van Exact online een credit factuur en een betaalopdracht aangemaakt.

* [Acceptatie criteria](betaal-borgstelling-uit.feature)

### Archiveer uitbetaling

Nadat de borgstelling is uitbetaald wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](uitbetaling.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling uitbetaald

De borgstelling uitbetaald gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **uitbetaald**.

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

### Archiveer afwijzing

Nadat het verzoek is afgewezen wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Uitbetalingsverzoek afgewezen

De Uitbetalingsverzoek afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **uitbetalingsverzoek afgewezen**.

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

## Business requirements

| Nummer | Omschrijving                                                                                                                         | Eigenaar                  |
| -------| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| 1      | Financiële mutaties moeten in Exact online vastgelegd worden.                                                                        | Frank Dijkstra |
| 2      | Er moet ruimte zijn voor maatwerk in de beoordeling.                                                                                 | Frank Dijkstra |
| 3      | Goedgekeurde uitbetalingen moeten gefiatteerd worden door het Sbf.                                                                   | Frank Dijkstra |
