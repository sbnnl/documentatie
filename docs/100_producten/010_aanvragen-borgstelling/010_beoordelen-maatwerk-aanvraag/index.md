# Beoordeel maatwerk aanvraag

## Product

Het doel van het product is om te komen tot een weloverwogen keuze of borgstelling mogelijk is. Deze keuze wordt gemaakt door de medewerker van SBN en gefiatteerd door een medewerker van SBF.

<!-- einde -->

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Geef aanvullende informatie

* [Email](geef-aanvullende-informatie.email.md)
* [Acceptatie criteria](../../verstuur-email.feature)

### Beantwoord aanvullende vragen

* [Email](beantwoord-aanvullende-vragen.email.md)
* [Acceptatie criteria](../../verstuur-email.feature)

### Geef advies

Aangesloten kredietbanken kunnen door het Wsk gevraagd worden om een advies uit te brengen over een maatwerk borgstelling aanvraag. Deze "geef advies berichten" moeten evenredig over de kredietbanken verdeeld worden.

* [Email](geef-advies.email.md)
* [Acceptatie criteria](../../verstuur-email.feature)

### Beoordeel aanvraag

Een maatwerk aanvraag met de aanvullende informatie, eventuele antwoorden op vragen en een eventueel advies van een andere kredietbank wordt beoordeeld door het Wsk.

Deze taak kent de volgende uitkomsten:

* Aanvraag goedgekeurd
* Aanvraag afgewezen
* Vraag gesteld
* Advies gevraagd

<!-- einde -->

* [Formulier](beoordeel-aanvraag.user-task.yml)
* [API](beoordeel-aanvraag.openapi.yml)
* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Fiatteer aanvraag

Elke maatwerk aanvraag moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

<!-- einde -->

* [Formulier](fiatteer-aanvraag.user-task.yml)
* [API](fiatteer-aanvraag.openapi.yml)
* [Acceptatie criteria](fiatteer-aanvraag.feature)

## Business requirements

| Nummer | Omschrijving                                                         | Eigenaar                  |
| -------| -------------------------------------------------------------------- | ------------------------- |
| 1      | Doorlooptijd: Een maatwerk beoordeling moet binnen 5 werkdagen beoordeeld zijn.    | Frank Dijkstra |
| 2      | Vier ogen: Een positief oordeel van een medewerker van SBN moet gefiatteerd worden door een medewerker van SBF. | Frank Dijkstra |
