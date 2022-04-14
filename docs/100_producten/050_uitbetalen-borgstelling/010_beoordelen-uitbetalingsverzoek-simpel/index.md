# Beoordelen uitbetalingsverzoek

## Product

Het doel van beoordelen uitbetalingsverzoek is om vast te stellen of een uitbetalingsverzoek van een borgstelling terecht is.

<!-- einde -->

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Beoordeel uitbetalingsverzoek

Het uitbetalingsverzoek wordt beoordeeld door een medewerker van het Wsk (beoordelaar). De medewerker gebruikt email en telefoon om:

* extra informatie op te vragen bij de aanvragende kredietbank;
* aanvullende vragen te stellen aan de aanvragende kredietbank;

De beoordelaar is verantwoordelijk om de reacties in het systeem vast te leggen.

* [Formulier](beoordeel-uitbetaling-verzoek.user-task.yml)
* [API](beoordeel-uitbetaling-verzoek.openapi.yml)
* [Acceptatie criteria](beoordeel-uitbetaling-verzoek.feature)

### Fiatteer uitbetaling

Elk geaccepteerd verzoek tot uitbetaling van de borgstelling moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

* [Formulier](../020_beoordelen-uitbetalingsverzoek-uitgebreid/fiatteer-uitbetaling.user-task.yml)
* [API](../020_beoordelen-uitbetalingsverzoek-uitgebreid/fiatteer-uitbetaling.openapi.yml)
* [Acceptatie criteria](../020_beoordelen-uitbetalingsverzoek-uitgebreid/fiatteer-uitbetaling.feature)

## Business requirements

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
