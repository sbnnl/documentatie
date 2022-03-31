# Uitbetalen borgstelling

## Context

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

### Geef aanvullende informatie

Vraagt de aanvragende kredietbank om aanvullende informatie aan te leveren.

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel uitbetaling verzoek

Beoordeelt het verzoek tot uitbetaling van de borgstelling en stelt het uit te betalen bedrag vast.

* [Formulier](beoordeel-uitbetaling-verzoek.user-task.yml)
* [API](beoordeel-uitbetaling-verzoek.openapi.yml)
* [Acceptatie criteria](beoordeel-uitbetaling-verzoek.feature)

### Fiatteer uitbetaling

Elk geaccepteerd verzoek tot uitbetaling van de borgstelling moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

* [Formulier](fiatteer-uitbetaling.user-task.yml)
* [API](fiatteer-uitbetaling.openapi.yml)
* [Acceptatie criteria](fiatteer-uitbetaling.feature)

### Archiveer uitbetaling

Slaat alle relevante informatie op in een document. Het document wordt in Exact online gearchiveerd als bron van waarheid voor de borgstelling.

* [Document](uitbetaling.message.md)
* [Acceptatie criteria](archiveer.feature)

### Consolideer

Relevante (@Frank, welke informatie?) borgstelling informatie wordt toegevoegd aan een geconsolideerde verzameling zodat het gebruikt kan worden voor:

* @Frank?

<!-- einde -->

* [Acceptatie criteria](consolideer.feature)

### Betaal uit

* [Acceptatie criteria](betaal.uit)

### Archiveer afwijzing

* [Document](afwijzing.message.md)
* [Acceptatie criteria](archiveer.feature)

### Wijs uitbetaling af

* [Acceptatie criteria](wijs-uitbetaling-af.feature)



## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |