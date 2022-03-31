# Beëindiging borgstelling

## Context

Het doel van een beëindiging van de borgstelling is het bestand met borgstellingen actueel te houden.

<!-- einde -->

* [Scherm](product.user-task.yml)
* [API](product.openapi.yml)

## Proces

* [Proces](proces.bpmn)

## Use-case

### Beëindigen borgstelling

Start het proces beëindigen borgstelling.

* [Acceptatie criteria](beeindigen-borgstelling.feature)

### Archiveer

Slaat alle relevante informatie op in een document. Het document wordt in Exact online gearchiveerd als bron van waarheid voor de borgstelling.

* [Document](bevestging.message.md)
* [Acceptatie criteria](archiveer.feature)

### Consolideer

Relevante (@Frank, welke informatie?) borgstelling informatie wordt toegevoegd aan een geconsolideerde verzameling zodat het gebruikt kan worden voor:

* @Frank?

<!-- einde -->

* [Acceptatie criteria](consolideer.feature)

### Beëindig

Beëindigt de borgstelling door alle proces informatie te verwijderen en de status te wijzigen in beëindigd.

* [Acceptatie criteria](beeindig.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |