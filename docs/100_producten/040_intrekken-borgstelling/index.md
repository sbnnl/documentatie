# Intrekken borgstelling

## Context

@Frank, graag hier het doel van het product beschrijven:

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde -->

* [Scherm](product.user-task.yml)
* [API](product.openapi.yml)

## Proces

* [Proces](proces.bpmn)

## Use-case

### Intrekken borgstelling

Start het proces intrekken borgstelling.

* [Acceptatie criteria](intrekken-borgstelling.feature)

### Archiveer intrekking

Nadat de borgstelling is ingetrokken wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](intrekking.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling ingetrokken

De borgstelling ingetrokken gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt wijzigt in **ingetrokken**.

* [Acceptatie criteria](borgstelling-ingetrokken.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |