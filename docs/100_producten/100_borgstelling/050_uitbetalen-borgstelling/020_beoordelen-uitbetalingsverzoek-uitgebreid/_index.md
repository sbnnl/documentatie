# Beoordelen uitbetalingsverzoek

## Product

Het doel van beoordelen uitbetalingsverzoek is om vast te stellen of een uitbetalingsverzoek van een borgstelling terecht is.

<!-- einde -->

## Proces

[Proces](proces.bpmn)

## Use-cases

### Aanvullende informatie gevraagd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Geef aanvullende informatie

Vraagt de kredietbank om aanvullende informatie aan te leveren.

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)

### Beoordeel uitbetalingsverzoek

Beoordeelt het verzoek tot uitbetaling van de borgstelling en stelt het uit te betalen bedrag vast.

* [Formulier](beoordeel-uitbetaling-verzoek.user-task.yml)
* [API](beoordeel-uitbetaling-verzoek.openapi.yml)

### Aanvullende vragen gesteld

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Beantwoord aanvullende vragen

Er ontstaat automatisch een taak in de takenlijst van de kredietbank wanneer de beoordelaar om aanvullende informatie heeft gevraagd.

* [Formulier](beantwoord-aanvullende-vragen.user-task.yml)
* [API](beantwoord-aanvullende-vragen.openapi.yml)

### Fiatteer uitbetaling

Elk geaccepteerd verzoek tot uitbetaling van de borgstelling moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

* [Formulier](fiatteer-uitbetaling.user-task.yml)
* [API](fiatteer-uitbetaling.openapi.yml)

## Business requirements

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
