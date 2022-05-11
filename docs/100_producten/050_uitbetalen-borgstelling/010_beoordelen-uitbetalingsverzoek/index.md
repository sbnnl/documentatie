# Beoordelen uitbetalingsverzoek

## Product

Het doel van beoordelen uitbetalingsverzoek is om vast te stellen of een uitbetalingsverzoek van een borgstelling terecht is.

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

### Beoordeel uitbetalingsverzoek

Beoordeelt het verzoek tot uitbetaling van de borgstelling en stelt het uit te betalen bedrag vast.

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
