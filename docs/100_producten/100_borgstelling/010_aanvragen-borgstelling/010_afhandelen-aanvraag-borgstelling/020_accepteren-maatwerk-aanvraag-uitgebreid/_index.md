# Accepteren maatwerk aanvraag (uitgebreid)

## Product

Het doel van het product is om te komen tot een weloverwogen keuze of borgstelling mogelijk is. Deze keuze wordt gemaakt door de medewerker van SBN en gefiatteerd door een medewerker van SBF. Onderzoek wijst uit dat voor 8% van de aanvragen een maatwerk beoordeling noodzakelijk is.

<!-- einde -->

## Proces

* [Proces](proces.bpmn)
* [Acceptatie criteria](proces.feature)

## Use-cases

### Aanvullende informatie gevraagd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

* [Acceptatie criteria](../../../verstuur-gebeurtenis.feature)

### Geef aanvullende informatie

De kredietbank moet aanvullende informatie aanleveren wanneer [bepaal status](#bepaal-status) heeft geleid tot de status **maatwerk**. Er ontstaat automatisch een taak in de takenlijst van de kredietbank.

<!-- einde -->

* [Formulier](geef-aanvullende-informatie.user-task.yml)
* [API](geef-aanvullende-informatie.openapi.yml)
* [Acceptatie criteria](geef-aanvullende-informatie.feature)

### Beoordeel aanvraag

Een maatwerk aanvraag met de aanvullende informatie, eventuele antwoorden op vragen en een eventueel advies van een andere kredietbank wordt beoordeeld door het Wsk.

Deze taak kent de volgende uitkomsten:

* Aanvraag goedgekeurd
* Aanvraag afgewezen
* Vraag gesteld
* Advies gevraagd

<!-- einde -->

* [Formulier](beoordeel-aanvraag.user-task.yml)
* [API](beoordeel-aanvraag.openapi.yml)
* [Acceptatie criteria](beoordeel-aanvraag.feature)

### Aanvullende vragen gesteld

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

* [Acceptatie criteria](../../../verstuur-gebeurtenis.feature)

### Beantwoord aanvullende vragen

Er ontstaat automatisch een taak in de takenlijst van de kredietbank wanneer de beoordelaar om aanvullende informatie heeft gevraagd.

<!-- einde -->

* [Formulier](beantwoord-aanvullende-vragen.user-task.yml)
* [API](beantwoord-aanvullende-vragen.openapi.yml)
* [Acceptatie criteria](beantwoord-aanvullende-vragen.feature)

### Advies gevraagd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de adviserende kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 
De advies vragen moeten evenredig verdeeld worden over de deelnemende kredietbanken.

* [Acceptatie criteria](../../../verstuur-gebeurtenis.feature)

### Geef advies

Aangesloten kredietbanken kunnen door het Wsk gevraagd worden om een advies uit te brengen over een maatwerk borgstelling aanvraag. Deze "geef advies taken" moeten evenredig over de kredietbanken verdeeld worden. Er ontstaat automatisch een taak in de takenlijst van de adviserende kredietbank.

<!-- einde -->

* [Formulier](geef-advies.user-task.yml)
* [API](geef-advies.openapi.yml)
* [Acceptatie criteria](geef-advies.feature)

### Fiatteer aanvraag

Elke maatwerk aanvraag moet gefiatteerd worden door SBF als invulling van het vier-ogen-principe.

<!-- einde -->

* [Formulier](fiatteer-aanvraag.user-task.yml)
* [API](fiatteer-aanvraag.openapi.yml)
* [Acceptatie criteria](fiatteer-aanvraag.feature)

## Business requirements

| Nummer | Omschrijving                                                         | Eigenaar                  |
| -------| -------------------------------------------------------------------- | ------------------------- |
| 1      | Een maatwerk beoordeling moet binnen 5 werkdagen beoordeeld zijn.    | Frank Dijkstra |
| 2      | Een positief oordeel van een medewerker van SBN moet gefiatteerd worden door een medewerker van SBF. | Frank Dijkstra |
| 3      | Advies vragen moeten evenredig verdeeld worden over de deelnemende kredietbanken. | Frank Dijkstra |