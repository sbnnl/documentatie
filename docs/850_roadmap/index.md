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

## Operationeel beheer

In deze epic krijgt het waarborgfonds inzage in de processen zodat het operationele vragen kan beantwoorden.

**Features:**

1. [Borgstellingen beheren]:
    1. Geef borgstellingen
    1. Geef borgstelling

**Afhankelijkheden:**

1. Portaal
1. IAM

## Maatwerk aanvragen borgstelling

Het waarborgfonds kan m.b.v. deze epic maatwerk aanvragen via het systeem afhandelen.

* De pro-forma aanvraag kan alleen door de kredietbank aangevraagd worden.
* De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze epic.
* De documenten van openstaande maatwerk aanvragen borgstelling moet geconverteerd / ingelezen worden zodat er nog maar één bron van waarheid is.

**Features:**

1. [Pro-forma aanvragen borgstelling]
1. [Accepteren maatwerk aanvraag]
    1. Ontvangen van email berichten valt buiten de scope
    1. Geef aanvullende informatie valt buiten de scope
    1. Beantwoord aanvullende vragen valt buiten de scope
    1. Geef advies valt buiten de scope
1. Conversie openstaande maatwerk aanvragen borgstelling

**Afhankelijkheden:**

1. Portaal
1. IAM
1. [Takenlijst]

## Uitbetalen borgstelling

In deze epic wordt een groot deel van het uitbetalen borgstelling proces gerealiseerd.
De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze epic. De documenten van uitbetaalde borgstellingen moeten geconverteerd / ingelezen worden zodat er nog maar één bron van waarheid is.

**Features:**

1. [Uitbetalen borgstelling]
1. [Beoordelen uitbetalingsverzoek]
    1. Ontvangen van email berichten valt buiten de scope
    1. Geef aanvullende informatie valt buiten de scope
    1. Beantwoord aanvullende vragen valt buiten de scope
1. Conversie uitbetaalde borgstellingen

**Afhankelijkheden:**

1. Portaal
1. IAM
1. [Takenlijst]

## Externe schuldhulpverleners

De kredietbank is niet in alle gevallen ook de schuldhulpverlener. Met deze epic kan de schuldhulpverlener, namens de kredietbank, een pro-forma borgstelling aanvragen.

**Features:**

1. [Pro-forma aanvraag adapter]

**Afhankelijkheden:**

1. Portaal
1. IAM
1. Email ontvangen en versturen
1. [Kredietbanken beheren]

## Email communicatie

In deze epic wordt het mogelijk om via het systeem via email te communiceren met kredietbanken om het werkproces verder te optimaliseren.

**Features:**

1. [Accepteren maatwerk aanvraag]
    1. Ontvangen van email berichten
    1. Geef aanvullende informatie
    1. Beantwoord aanvullende vragen
    1. Geef advies
1. [Beoordelen uitbetalingsverzoek]
    1. Ontvangen van email berichten
    1. Geef aanvullende informatie
    1. Beantwoord aanvullende vragen

**Afhankelijkheden:**

1. [Epic maatwerk aanvragen borgstelling]
1. [Epic uitbetalen borgstelling]
1. Email ontvangen en versturen

## Intrekken borgstelling

In deze epic wordt het voor het waarborgfonds mogelijk om borgstellingen in te trekken. De documenten van ingetrokken borgstellingen moeten geconverteerd / ingelezen worden zodat er nog maar één bron van waarheid is.

**Features:**

1. [Intrekken borgstelling]
1. Conversie ingetrokken borgstellingen

**Afhankelijkheden:**

1. [Epic operationeel beheer]

## Dashboard

Met deze epic wordt er een invulling gegeven aan het dashboard. Deze epic bestaat uit twee onderdelen: een REST endpoint die de informatie beschikbaar stelt en een best practice dashboard die deze informatie ophaalt en vertaalt.

**Features:**

1. [Borgstellingen beheren]
    1. Geef borgstellingen dashboard

**Afhankelijkheden:**

1. Portaal
1. IAM

[pro-forma aanvragen borgstelling]: ../producten/pro-forma-aanvragen-borgstelling/index.md
[aanvragen borgstelling]: ../producten/aanvragen-borgstelling/index.md
[accepteren maatwerk aanvraag]: ../producten/aanvragen-borgstelling/accepteren-maatwerk-aanvraag/index.md
[borgstellingen beheren]: ../producten/borgstellingen-beheren/index.md
[beëindigen borgstelling]: ../producten/beeindigen-borgstelling/index.md
[intrekken borgstelling]: ../producten/intrekken-borgstelling/index.md
[uitbetalen borgstelling]: ../producten/uitbetalen-borgstelling/index.md
[beoordelen uitbetalingsverzoek]: ../producten/uitbetalen-borgstelling/beoordelen-uitbetalingsverzoek/index.md
[gebeurtenissen documentatie]: ../producten/gebeurtenissen/index.md
[borgstellingen beheren]: ../producten/borgstellingen-beheren/index.md
[vul borgstelling aan]: ../producten/borgstellingen-beheren/index.md#vul-borgstelling(en)-aan
[kredietbanken beheren]: ../producten/kredietbanken-beheeren/index.md
[takenlijst]: ../producten/takenlijst/index.md

[schuldenknooppunt adapter]: ../adapters/schuldenknooppunt/index.md
[Pro-forma aanvraag adapter]: ../adapters/pro-forma-aanvraag-adapter/index.md

[Epic operationeel beheer]: #operationeel-beheer
[Epic maatwerk aanvragen borgstelling]: #maatwerk-aanvragen-borgstelling
[Epic uitbetalen borgstelling]: #uitbetalen-borgstelling