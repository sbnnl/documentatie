# Voorbeoordelen namens de kredietbank

## Product

In een aantal gevallen is de kredietbank die het saneringskrediet verstrekt niet verantwoordelijk voor het voortraject in de schuldhulpverlening casus.
De schuldhulpverlener (gemeente of private partij) stelt dan de schulden en de afloscapaciteit van de client vast.
Voor maatwerkaanvragen (ongeveer 8% van de aanvragen) moet deze schuldhulpverlener een voorbeoordeling kunnen aanvragen waarbij deze schuldhulpverlener de aanvullende vragen moet beantwoorden waarmee het Wsk de aanvraag kan beoordelen.

Voor het Wsk zijn alleen de kredietbanken een contract partij. Om de schuldhulpverlener toegang te geven tot het voorbeoordelen product zonder dat het een contract partij van de Wsk wordt is deze adapter bedacht.

De schuldhulpverlener kan een voorbeoordeling verzoek mailen naar een e-mail adres van de kredietbanken bij het Wsk. Wanneer de afzender in een toegestane lijst van email adressen voorkomt, wordt er automatisch een geautoriseerde link retour gestuurd waarmee de schuldhulpverlener, namens de kredietbank, een voorbeoordeling kan aanvragen:

1. De schuldhulpverlener krijgt toegang tot een formulier waarmee de voorbeoordeling aangevraagd wordt.
1. De schuldhulpverlener ontvangt het resultaat van deze voorbeoordeling per email.
1. De schuldhulpverlener kan de geaccepteerde voorbeoordeling als bijlage bij de saneringskrediet aanvraag bijvoegen waardoor de kredietbank op basis van het kenmerk in de voorbeoordeling eenmalig gebruik kan maken van de geaccepteerde voorbeoordeling.

* [Sequence diagram](sequence-diagram.puml)

## Process

[Proces](proces.bpmn)

## Use-cases

### Bepaal afzender

Stelt de kredietbank vast aan de hand van de email adres van de ontvanger en stelt vast of het emailadres van de afzender voorkomt in de lijst van toegestane voorbeoordelaars van de kredietbank.

### Verstuur voorbeoordelen namens

* [Email](voorbeoordelen-namens.email.md)
* [Acceptatie criteria](../../100_producten/verstuur-email.feature)

### Verstuur Verstuur afwijzing

* [Email](afwijzing.email.md)
* [Acceptatie criteria](../../100_producten/verstuur-email.feature)

## Business requirements

| Nummer | Omschrijving     | Eigenaar                  |
| -------| ---------------- | ------------------------- |
| 1      | Een geautoriseerde voorbeoordeling link mag maximaal 1 keer gebruikt worden.                                 | Frank Dijkstra |
| 2      | Een geautoriseerde voorbeoordeling link is maximaal 1 uur geldig.                                            | Frank Dijkstra |
| 3      | Per kredietbank moet een lijst met toegestane email adressen m.b.v. wildcards geconfigureerd kunnen worden   | Frank Dijkstra |
