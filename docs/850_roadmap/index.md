# Roadmap

## Achtergrond

Deze roadmap beschrijft de features van het waarborgfonds in volgorde van business waarde en eventuele afhankelijkheden met andere features.

Het doel van deze roadmap is om inzicht te geven in de volgordelijkheid en afhankelijkheden van de features waarbij er rekening gehouden is met grote van de features waardoor er zo snel als mogelijk waarde geleverd kan worden.

## MVP

Uit onderzoek is gebleken dat 92% van de aanvragen standaardaanvragen zijn. Deze aanvragen worden via een STP proces automatisch verwerkt.
Voor standaardaanvragen is geen voorbeoordeling nodig.
Aangezien de kans klein is dat borgstellingen in de eerste maanden al uitbetaald moeten worden wordt het uitbetalen borgstelling product later gerealiseerd.
Het functioneel beheer op kredietbanken wordt door de leverancier gedaan.
Het operationeel monitoren van het waarborgfonds wordt door de leverancier gedaan.
De maatwerkaanvragen worden via het tijdelijke, handmatige, proces afgehandeld maar blijven openstaan in het systeem.

**Scope:**

1. Aanvragen borgstelling
    1. Beoordelen maatwerk aanvraag valt buiten de scope
1. Borgstelling beheren
    1. Geef borgstellingen dashboard valt buiten de scope
    1. Geef borgstellingen valt buiten de scope
    1. Geef borgstelling valt buiten de scope
1. Beëindigen borgstelling
1. Schuldenknooppunt adapter

## Operationeel beheer

In deze feature krijgt het waarborgfonds inzage in de processen zodat het operationele vragen kan beantwoorden.

**Scope:**

1. Borgstelling beheren:
    1. Geef borgstellingen
    1. Geef borgstelling

**Afhankelijkheden:**

1. Portaal
1. IAM

## Maatwerk aanvragen borgstelling

Het waarborgfonds kan m.b.v. deze feature maatwerk aanvragen via het systeem afhandelen.
De voorbeoordeling kan alleen door de kredietbank aangevraagd worden.
De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze feature.

**Scope:**

1. Voorbeoordeling
1. Beoordelen maatwerk aanvraag
    1. Ontvangen van email berichten valt buiten de scope
    1. Geef aanvullende informatie valt buiten de scope
    1. Beantwoord aanvullende vragen valt buiten de scope
    1. Geef advies valt buiten de scope
1. Conversie openstaande maatwerk aanvragen borgstelling

**Afhankelijkheden:**

1. Portaal
1. IAM
1. Takenlijst

## Uitbetalen borgstelling

In deze feature wordt een groot deel van het uitbetalen borgstelling proces gerealiseerd.
De email interactie met de kredietbank vanuit het systeem valt buiten de scope van deze feature.

**Scope:**

1. Uitbetalen borgstelling
1. Beoordelen uitbetalingsverzoek
    1. Ontvangen van email berichten valt buiten de scope
    1. Geef aanvullende informatie valt buiten de scope
    1. Beantwoord aanvullende vragen valt buiten de scope

**Afhankelijkheden:**

1. Portaal
1. IAM
1. Takenlijst

## Voorbeoordelen namens kredietbank

De kredietbank is niet in alle gevallen ook de schuldhulpverlener. Met deze feature kan de schuldhulpverlener, namens de kredietbank, een voorbeoordeling aanvragen.

**Scope:**

1. Voorbeoordelen namens de kredietbank

**Afhankelijkheden:**

1. Portaal
1. IAM
1. Email ontvangen en versturen
1. Kredietbanken beheren

## Email communicatie

In deze feature wordt het mogelijk om via het systeem via email te communiceren met kredietbanken om het werkproces verder te optimaliseren.

**Scope:**

1. Beoordelen maatwerk aanvraag
    1. Ontvangen van email berichten
    1. Geef aanvullende informatie
    1. Beantwoord aanvullende vragen
    1. Geef advies
1. Beoordelen uitbetalingsverzoek
    1. Ontvangen van email berichten
    1. Geef aanvullende informatie
    1. Beantwoord aanvullende vragen

**Afhankelijkheden:**

1. Maatwerk aanvragen borgstelling
1. Uitbetalen borgstelling
1. Email ontvangen en versturen

## Intrekken borgstelling

In deze feature wordt het voor het waarborgfonds mogelijk om borgstellingen in te trekken.

**Scope:**

1. Intrekken borgstelling

**Afhankelijkheden:**

1. Operationeel beheer

## Dashboard

Met deze feature wordt er een invulling gegeven aan het dashboard. Deze feature bestaat uit twee onderdelen: een REST endpoint die de informatie beschikbaar stelt en een best practice dashboard die deze informatie ophaalt en vertaalt.

**Scope:**

1. Borgstelling beheren
    1. Geef borgstellingen dashboard

**Afhankelijkheden:**

1. Portaal
1. IAM
