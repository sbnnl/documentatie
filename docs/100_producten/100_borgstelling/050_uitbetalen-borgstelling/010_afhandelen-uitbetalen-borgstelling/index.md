# Uitbetalen borgstelling

## Product

Het doel van uitbetalen borgstelling is om tot een beoordeling te komen of de borgstelling van een saneringskrediet uitbetaald mag worden.

## Proces

[Proces](proces.bpmn)

## Use-cases

### Uitbetalen borgstelling

Start het proces uitbetalen borgstelling.

### Beoordelen uitbetalingsverzoek

[Zie het beoordelen uitbetalingsverzoek product voor meer informatie.](beoordelen-uitbetalingsverzoek/index.md)

### Betaal borgstelling uit

Sbf maakt gebruik van Exact online. Voor het vastgestelde borgstelling bedrag wordt er automatisch via de API van Exact online een credit factuur en een betaalopdracht aangemaakt.

### Archiveer uitbetaling

Nadat de borgstelling is uitbetaald wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

[Document](uitbetaling.message.md)

### Borgstelling uitbetaald

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **uitbetaald**.

### Archiveer afwijzing

Nadat het verzoek is afgewezen wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

[Document](afwijzing.message.md)

### Uitbetalingsverzoek afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **uitbetalingsverzoek afgewezen**.

## Business requirements

| Nummer | Omschrijving                                                                                                                         | Eigenaar                  |
| -------| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| 1      | Financiële mutaties moeten in Exact online vastgelegd worden.                                                                        | Frank Dijkstra |
| 2      | Er moet ruimte zijn voor maatwerk in de beoordeling.                                                                                 | Frank Dijkstra |
| 3      | Goedgekeurde uitbetalingen moeten gefiatteerd worden door het Sbf.                                                                   | Frank Dijkstra |
| 4      | Vertragingsrente wordt niet vergoedt.                                                                                                | Frank Dijkstra |
