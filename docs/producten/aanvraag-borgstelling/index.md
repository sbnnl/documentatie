# Aanvraag borgstelling

## Product

::: context

@Frank, graag hier het doel van het product beschrijven:

Een registratie van een nieuw verstrekt saneringskrediet waarvoor het Wsk borg staat. 

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

:::

* [API](product.openapi.yml)
* [Acceptatie criteria](product.feature)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

Dit product bestaat uit de volgende use-cases:

### Registreer aanvraag

::: context

Registreer aanvraag wordt vanuit de REST adapter aangeroepen. De use-case is verantwoordelijk voor:

* autorisatie controle:
    * de gebruiker moet beschikken over **"REGISTREER_AANVRAAG"** permissie;
    * de gebruiker moet beschikken over een **kredietbank claim** die overeenkomt met de kredietbank uit de aanvraag;
* registratie van de aanvraag;
* starten van het proces;

:::

* [Acceptatie criteria](registreer-aanvraag-use-case.feature)

### Bepaal status

De status van een aanvraag wordt automatisch vastgesteld op basis van regels in het beslissingsmodel. [Zie het proces voor meer informatie](#proces). Het beslissingsmodel kent de volgende uitkomsten:

* goedgekeurd
* afgekeurd
* maatwerk

### Beantwoord aanvullende vragen

::: context

De aanvrager moet aanvullende informatie aanleveren wanneer [bepaal status](#bepaal-status) heeft geleid tot de status **maatwerk**. Er ontstaat automatisch een taak in de takenlijst van de aanvrager.

:::

* [API](beantwoord-aanvullende-vragen.openapi.yml)
* [Acceptatie criteria](beantwoord-aanvullende-vragen.feature)

### Beoordeel aanvraag

### Maak contract

* [Contract](contract.message.md)
* [Acceptatie criteria](maak-contract-use-case.feature)

### Aanvraag afgewezen

### Aanvraag goedgekeurd


## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
