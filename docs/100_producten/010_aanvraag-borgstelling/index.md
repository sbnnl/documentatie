# Aanvraag borgstelling

## Product

@Frank, graag hier het doel van het product beschrijven:

Een registratie van een nieuw verstrekt saneringskrediet waarvoor het Wsk borg staat. 

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde van de lijst -->

* [Dashboard](product.dashboard.yml)
* [Formulier](product.user-task.yml)
* [API](product.openapi.yml)
* [Acceptatie criteria](product.feature)

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

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

De kredietbank moet aanvullende informatie aanleveren wanneer [bepaal status](#bepaal-status) heeft geleid tot de status **maatwerk**. Er ontstaat automatisch een taak in de takenlijst van de kredietbank.

<!-- einde van de lijst -->

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel aanvraag

Een aanvraag en de aanvullende informatie wordt beoordeeld door een andere aangesloten kredietbank. Deze "beoordeel aanvraag taken" moeten evenredig over de kredietbanken verdeeld worden. Er ontstaat automatisch een taak in de takenlijst van de beoordelende kredietbank.

Deze taak kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* onvolledig

<!-- einde van de lijst -->

* [Formulier](beoordeel-aanvraag.user-task.yml)
* [API](beoordeel-aanvraag.openapi.yml)
* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Beantwoord aanvullende vragen

Er ontstaat automatisch een taak in de takenlijst van de kredietbank wanneer de beoordelaar om aanvullende informatie heeft gevraagd.

<!-- einde van de lijst -->

* [Formulier](beantwoord-aanvullende-vragen.user-task.yml)
* [API](beantwoord-aanvullende-vragen.openapi.yml)
* [Acceptatie criteria](beantwoord-aanvullende-vragen.feature)

### Maak contract

Nadat de aanvraag is goedgekeurd wordt er een borgstelling contract aangemaakt.

* [Document](contract.message.md)
* [Acceptatie criteria](maak-contract.feature)

### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Aanvraag goedgekeurd

De aanvraag goedgekeurd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
