# Beoordeel maatwerk aanvraag (simpel)

## Product

Het doel van het product is om te komen tot een weloverwogen keuze of borgstelling mogelijk is. Deze keuze wordt gemaakt door de medewerker van SBN en gefiatteerd door een medewerker van SBF.

<!-- einde -->

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Beoordeel aanvraag

De maatwerk aanvraag wordt beoordeeld door een medewerker van het Wsk (beoordelaar). De medewerker gebruikt email en telefoon om:

* extra informatie op te vragen bij de aanvragende kredietbank;
* aanvullende vragen te stellen aan de aanvragende kredietbank;
* advies in te winnen bij een adviserende kredietbank;

De beoordelaar is verantwoordelijk om de reacties in het systeem vast te leggen.

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
