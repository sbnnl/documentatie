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

De status van een aanvraag wordt automatisch vastgesteld op basis van regels in het beslissingsmodel. Het beslissingsmodel kent de volgende uitkomsten:

* goedgekeurd
* afgewezen
* maatwerk

@Frank hoeveel (absoluut of percentage) mag de bruto kredietsom afwijken van een geaccepteerde pro forma aanvraag om ook geaccepteerd te worden?

<!-- einde -->

* [Acceptatie criteria](bepaal-status.feature)

### Geef aanvullende informatie

De kredietbank moet aanvullende informatie aanleveren wanneer [bepaal status](#bepaal-status) heeft geleid tot de status **maatwerk**. Er ontstaat automatisch een taak in de takenlijst van de kredietbank.

<!-- einde van de lijst -->

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel aanvraag

Een maatwerk aanvraag met de aanvullende informatie, eventuele antwoorden op vragen en een eventueel advies van een andere kredietbank wordt beoordeeld door het Wsk.

Deze taak kent de volgende uitkomsten:

* Aanvraag goedgekeurd
* Aanvraag afgewezen
* Aanvraag onvolledig
* Vraag om advies

<!-- einde van de lijst -->

* [Formulier](beoordeel-aanvraag.user-task.yml)
* [API](beoordeel-aanvraag.openapi.yml)
* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Geef advies

Aangesloten kredietbanken kunnen door het Wsk gevraagd worden om een advies uit te brengen over een maatwerk borgstelling aanvraag. Deze "geef advies taken" moeten evenredig over de kredietbanken verdeeld worden. Er ontstaat automatisch een taak in de takenlijst van de adviserende kredietbank.

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

### Activeer borgstelling



### Registreer verkoop

Wsf maakt gebruik van Exact online. Voor 1% van de bruto kredietsom van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

**pseudo code**:

[pseudo code](maak-factuurregel.java)

Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.



### Aanvraag afgewezen

De aanvraag afgewezen gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Aanvraag goedgekeurd

De aanvraag goedgekeurd gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |
