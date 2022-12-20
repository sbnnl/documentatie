# Roadmap

## Achtergrond

Deze roadmap beschrijft de epics van het waarborgfonds in volgorde van business waarde en eventuele afhankelijkheden met andere epics.

Het doel van deze roadmap is om inzicht te geven in de volgordelijkheid en afhankelijkheden van de epics waarbij er rekening gehouden is met grote van de epics waardoor er zo snel als mogelijk waarde geleverd kan worden.

## MVP

Uit onderzoek is gebleken dat 92% van de aanvragen standaardaanvragen zijn. Deze aanvragen worden via een STP proces automatisch verwerkt.

* Voor standaardaanvragen is geen pro-forma aanvraag nodig.
* Aangezien de kans klein is dat borgstellingen in de eerste maanden al uitbetaald moeten worden wordt het uitbetalen borgstelling product later gerealiseerd.
* Het functioneel beheer op kredietbanken wordt door de leverancier gedaan.
* Het operationeel monitoren van het waarborgfonds wordt door de leverancier gedaan.
* Een maatwerk aanvraag wordt via het tijdelijke, handmatige, proces afgehandeld. De aanvraag blijven openstaan in het systeem in afwachting van de conversie.
* Het intrekken van borgstellingen wordt via het tijdelijke, handmatige, proces afgehandeld. De borgstellingen blijven openstaan in het systeem in afwachting van de conversie.
* Het uitbetalen van borgstellingen wordt via het tijdelijke, handmatige, proces afgehandeld. De borgstellingen blijven openstaan in het systeem in afwachting van de conversie.

**Features:**

1. [Aanvragen borgstelling]
    1. Beoordelen maatwerk aanvraag valt buiten de scope
1. [Borgstellingen beheren]
    1. Geef borgstellingen dashboard valt buiten de scope
    1. Geef borgstellingen valt buiten de scope
    1. Geef borgstelling valt buiten de scope
1. [Beëindigen borgstelling]
1. [Schuldenknooppunt adapter]

## MVP meerwerk

Op basis van voortschrijdend inzicht zijn de volgende features nog noodzakelijk om live te kunnen gaan:

1. De afwijsreden toevoegen aan de [taak](../producten/borgstelling/aanvragen-borgstelling/accepteren-maatwerk-aanvraag/index.html#beoordeel-aanvraag) en de [brief](../producten/borgstelling/aanvragen-borgstelling/index.html#archiveer-afwijzing).
1. De portefeuille overname datum toevoegen aan [kredietbank beheer](../producten/kredietbanken-beheeren/index.html).
1. Voor portefeuille overnames moet het uitstaand saldo gebruikt worden i.p.v. de bruto kredietsom bij het [registreren van de verkoop](../producten/borgstelling/aanvragen-borgstelling/index.html#registreer-verkoop).
1. [Borgstellingen categorien](../producten/borgstelling-categorien-beheeren/index.html) realiseren en implementeren voor het vaststellen van de premiepercentage en de automatische acceptatie.

## Intrekken borgstelling

In deze epic wordt het voor het waarborgfonds mogelijk om borgstellingen in te trekken.

**Features:**

1. [Intrekken borgstelling]

**Afhankelijkheden:**

1. [Epic operationeel beheer]

## Operationeel beheer

In deze epic wordt de dossier weergave geoptimaliseerd zodat het aansluit bij de behoefte van het waarborgfonds.

**Features:**

1. [Borgstellingen beheren]:
    1. Geef borgstelling

**Afhankelijkheden:**

1. Portaal
1. IAM
1. UX design beheerscherm

## Maatwerk aanvragen borgstelling

Het waarborgfonds kan m.b.v. deze epic maatwerk aanvragen via het systeem afhandelen.

* De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze epic.

**Features:**

1. [Pro-forma aanvragen borgstelling]
2. [Accepteren maatwerk aanvraag]
    1. Ontvangen van email berichten valt buiten de scope
    2. Geef aanvullende informatie valt buiten de scope
    3. Beantwoord aanvullende vragen valt buiten de scope
    4. Geef advies valt buiten de scope

**Afhankelijkheden:**

1. Portaal
1. IAM
1. [Takenlijst]

## Uitbetalen borgstelling

In deze epic wordt een deel van het uitbetalen borgstelling proces gerealiseerd.
De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze epic.

**Features:**

1. [Uitbetalen borgstelling]
2. [Beoordelen uitbetalingsverzoek]
    1. Ontvangen van email berichten valt buiten de scope
    2. Geef aanvullende informatie valt buiten de scope
    3. Beantwoord aanvullende vragen valt buiten de scope

**Afhankelijkheden:**

1. Portaal
1. IAM
1. [Takenlijst]

## Dashboard

Met deze epic wordt er een invulling gegeven aan het dashboard. De borgstellingen informatie wordt beschikbaar gesteld zodat het gekoppeld kan worden aan Excel document.

**Features:**

1. [Borgstellingen beheren]
    1. Geef borgstellingen dashboard

**Afhankelijkheden:**

1. Portaal
1. IAM

## Externe schuldhulpverlener

De kredietbank is niet in alle gevallen ook de schuldhulpverlener. Met deze epic kan schuldhulpverlener, namens de kredietbank, een pro-forma borgstelling aanvragen.

**Features:**

1. [Pro-forma aanvraag adapter]

**Afhankelijkheden:**

1. Portaal
1. IAM
1. Email ontvangen en versturen
1. [Kredietbanken beheren]

[pro-forma aanvragen borgstelling]: ../producten/borgstelling/pro-forma-aanvragen-borgstelling/index.md
[aanvragen borgstelling]: ../producten/borgstelling/aanvragen-borgstelling/index.md
[accepteren maatwerk aanvraag]: ../producten/borgstelling/aanvragen-borgstelling/accepteren-maatwerk-aanvraag/index.md
[borgstellingen beheren]: ../producten/borgstelling/borgstellingen-beheren/index.md
[beëindigen borgstelling]: ../producten/borgstelling/beeindigen-borgstelling/index.md
[intrekken borgstelling]: ../producten/borgstelling/intrekken-borgstelling/index.md
[uitbetalen borgstelling]: ../producten/borgstelling/uitbetalen-borgstelling/index.md
[beoordelen uitbetalingsverzoek]: ../producten/borgstelling/uitbetalen-borgstelling/beoordelen-uitbetalingsverzoek/index.md
[borgstellingen beheren]: ../producten/borgstelling/borgstellingen-beheren/index.md
[vul borgstelling aan]: ../producten/borgstelling/borgstellingen-beheren/index.md#vul-borgstelling(en)-aan

[gebeurtenissen documentatie]: ../producten/gebeurtenissen/index.md
[kredietbanken beheren]: ../producten/kredietbanken-beheeren/index.md
[takenlijst]: ../producten/takenlijst/index.md

[schuldenknooppunt adapter]: ../adapters/schuldenknooppunt/index.md
[Pro-forma aanvraag adapter]: ../adapters/pro-forma-aanvraag-adapter/index.md

[Epic operationeel beheer]: #operationeel-beheer
[Epic maatwerk aanvragen borgstelling]: #maatwerk-aanvragen-borgstelling
[Epic uitbetalen borgstelling]: #uitbetalen-borgstelling