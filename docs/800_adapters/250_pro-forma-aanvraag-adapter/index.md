# Pro-forma aanvraag adapter

## Product

In een aantal gevallen is de kredietbank die het saneringskrediet verstrekt niet verantwoordelijk voor het voortraject in de schuldhulpverlening casus.
De schuldhulpverlener (gemeente of private partij) stelt dan de schulden en de afloscapaciteit van de client vast.
Voor maatwerkaanvragen (ongeveer 8% van de aanvragen) moet deze schuldhulpverlener een pro-forma aanvraag kunnen doen waarbij deze schuldhulpverlener de aanvullende vragen moet beantwoorden waarmee het Wsk de aanvraag kan beoordelen.

Voor het Wsk zijn alleen de kredietbanken een contract partij. Om de schuldhulpverlener toegang te geven tot het pro-forma aanvragen borgstelling product zonder dat het een contract partij van de Wsk wordt is deze adapter ontworpen.

De schuldhulpverlener kan een pro-forma aanvraag verzoek mailen naar een e-mail adres van de kredietvbank bij het Wsk. Wanneer de afzender in een toegestane lijst van email adressen voorkomt, wordt er automatisch een geautoriseerde link retour gestuurd waarmee de schuldhulpverlener, namens de kredietbank, een pro-forma aanvraag kan doen:

1. De schuldhulpverlener krijgt toegang tot een formulier waarmee de pro-forma aanvraag gestart wordt.
1. De schuldhulpverlener ontvangt het resultaat van deze pro-forma aanvraag per email.
1. De schuldhulpverlener kan de geaccepteerde pro-forma aanvraag als bijlage bij de saneringskrediet aanvraag bijvoegen waardoor de kredietbank op basis van het pro-forma borgstelling kenmerk eenmalig gebruik kan maken van de geaccepteerde pro-forma borgstelling.

* [Sequence diagram](sequence-diagram.puml)

## Process

[Proces](proces.bpmn)

## Use-cases

### Bepaal afzender

Stelt de kredietbank vast aan de hand van de email adres van de ontvanger en stelt vast of het emailadres van de afzender voorkomt in de lijst van toegestane schuldhulpverleners van de kredietbank.

### Verstuur autorisatie

* [Email](autorisatie.email.md)
* [Acceptatie criteria](../../100_processen/verstuur-email.feature)

### Verstuur afwijzing

* [Email](afwijzing.email.md)
* [Acceptatie criteria](../../100_processen/verstuur-email.feature)

## Business requirements

| Nummer | Omschrijving     | Eigenaar                  |
| -------| ---------------- | ------------------------- |
| 1      | Een geautoriseerde pro-forma aanvraag link mag maximaal 1 keer gebruikt worden.                                 | Frank Dijkstra |
| 2      | Een geautoriseerde pro-forma aanvraag link is maximaal 1 uur geldig.                                            | Frank Dijkstra |
| 3      | Per kredietbank moet een lijst met toegestane email adressen m.b.v. wildcards geconfigureerd kunnen worden      | Frank Dijkstra |
