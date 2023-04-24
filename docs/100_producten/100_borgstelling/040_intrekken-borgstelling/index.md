# Intrekken borgstelling

## Beschrijving

Het doel van de intrekking borgstelling is om in geval van oninbaarheid van een saneringskrediet geen uitbetalingsverplichting te hebben. Dit kan voorkomen wanneer na een positieve beoordeling voor het afgeven van een borgstelling er nieuwe feiten naar voren komen die bij de beoordeling bekend waren en in strijd zijn met het fondsbeleid.

<!-- einde -->

[Scherm](product.user-task.yml)

## Proces

* [Proces](proces.bpmn)

## Use-case

### Intrekken borgstelling

Start het proces intrekken borgstelling.

### Archiveer intrekking

Nadat de borgstelling is ingetrokken wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

[Document](intrekking.message.md)

### Borgstelling ingetrokken

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wijzigt in **ingetrokken**.

## Business requirements

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
