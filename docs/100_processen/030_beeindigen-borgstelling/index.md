# Beëindigen borgstelling

## Product

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

### Archiveer beëindiging

Nadat de borgstelling beëindigd wordt er een document aangemaakt en opgeslagen in het archief. De wettelijke bewaartermijn voor dit soort documenten is 7 jaar.

* [Document](beeindiging.message.md)
* [Acceptatie criteria](../archiveer.feature)

### Borgstelling beëindigd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. De status van de borgstelling wordt gewijzigd in **beëindigd**.

* [Acceptatie criteria](../verstuur-gebeurtenis.feature)

## Business requirements

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
