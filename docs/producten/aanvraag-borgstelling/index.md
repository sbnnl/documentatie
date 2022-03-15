# Aanvraag borgstelling

## Product

@Frank, graag hier het doel van het product beschrijven:

Een registratie van een nieuw verstrekt saneringskrediet waarvoor het Wsk borg staat. 

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde van de lijst -->

* [Scherm](product.user-task.yml)
* [API](product.openapi.yml)
* [Acceptatie criteria](product.feature)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

Dit product bestaat uit de volgende use-cases:

### Registreer aanvraag

Registreer aanvraag wordt vanuit de REST adapter aangeroepen. De use-case is verantwoordelijk voor:

* autorisatie controle:
    * de gebruiker moet beschikken over **"REGISTREER_AANVRAAG"** permissie;
    * de gebruiker moet beschikken over een **kredietbank claim** die overeenkomt met de kredietbank uit de aanvraag;
* registratie van de aanvraag;
* starten van het proces;

<!-- einde van de lijst -->

* [Acceptatie criteria](registreer-aanvraag-use-case.feature)

### Bepaal status

De status van een aanvraag wordt automatisch vastgesteld op basis van regels in het beslissingsmodel. [Zie het proces voor meer informatie](#proces). Het beslissingsmodel kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* maatwerk

### Geef aanvullende informatie

De aanvrager moet aanvullende informatie aanleveren wanneer [bepaal status](#bepaal-status) heeft geleid tot de status **maatwerk**. Er ontstaat automatisch een taak in de takenlijst van de aanvrager.

<!-- einde van de lijst -->

* [Taak](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel aanvraag

Een aanvraag en de aanvullende informatie wordt beoordeeld door een andere aangesloten kredietbank. Deze "beoordeel aanvraag taken" moeten evenredig over de kredietbanken verdeeld worden. Er ontstaat automatisch een taak in de takenlijst van de beoordelende kredietbank.

Deze taak kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* onvolledig

<!-- einde van de lijst -->

* [Taak](beoordeel-aanvraag.user-task.yml)
* [API](beoordeel-aanvraag.openapi.yml)
* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Beantwoord aanvullende vragen

Er ontstaat automatisch een taak in de takenlijst van de aanvrager wanneer de beoordelaar om aanvullende informatie heeft gevraagd.

### Maak contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt.

* [Contract](contract.message.md)
* [Acceptatie criteria](maak-contract-use-case.feature)

### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt gedeeld met de aanvrager.

### Aanvraag goedgekeurd

De aanvraag afgewezen goedgekeurd gebeurtenis wordt gedeeld met de aanvrager.

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
