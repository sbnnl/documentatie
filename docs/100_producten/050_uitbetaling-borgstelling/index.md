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

Vraagt de kredietbank om aanvullende informatie aan te leveren.

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel uitbetalingverzoek

Beoordeelt het verzoek tot uitbetaling van de borgstelling en stelt het uit te betalen bedrag vast.

* [Formulier](beoordeel-uitbetaling-verzoek.user-task.yml)
* [API](beoordeel-uitbetaling-verzoek.openapi.yml)
* [Acceptatie criteria](beoordeel-uitbetaling-verzoek.feature)

### Beantwoord aanvullende vragen

Er ontstaat automatisch een taak in de takenlijst van de kredietbank wanneer de beoordelaar om aanvullende informatie heeft gevraagd.

<!-- einde -->

* [Formulier](beantwoord-aanvullende-vragen.user-task.yml)
* [API](beantwoord-aanvullende-vragen.openapi.yml)
* [Acceptatie criteria](beantwoord-aanvullende-vragen.feature)

### Fiatteer uitbetaling

Elk geaccepteerd verzoek tot uitbetaling van de borgstelling moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

* [Formulier](fiatteer-uitbetaling.user-task.yml)
* [API](fiatteer-uitbetaling.openapi.yml)
* [Acceptatie criteria](fiatteer-uitbetaling.feature)

### Betaal borgstelling uit

Sbf maakt gebruik van Exact online. Voor het vastgestelde borgstelling bedrag wordt er automatisch via de API van Exact online een credit factuur en een betaalopdracht aangemaakt.

* [Acceptatie criteria](betaal-borgstelling-uit.feature)

### Archiveer uitbetaling

Nadat de borgstelling is uitbetaald wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](uitbetaling.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling uitbetaald

De borgstelling uitbetaald gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **uitbetaald**.

* [Acceptatie criteria](borgstelling-uitbetaald.feature)

### Archiveer afwijzing

Nadat het verzoek is afgewezen wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](afwijzing.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Uitbetaling afgewezen

De uitbetaalverzoek afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **uitbetaling afgewezen**.

* [Acceptatie criteria](uitbetaling-afgewezen.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |