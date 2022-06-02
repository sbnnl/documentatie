# Taken worden m.b.v. een plugin architectuur beschikbaat gesteld

## Context

Vanuit processen ontstaat uitval, hierna taken genoemd. Deze taken moeten door mensen afgehandeld worden zodat het proces weer verder kan gaan. Het is kenmerkend voor taken dat deze dynamisch zijn: relatief vaak ontstaan er nieuwe taken vanuit bestaande of nieuwe -producten.

Elke taak heeft een eigen, unieke, context. Deze context wordt gebruikt voor:

* De autorisatie: wie mag de taak afhandelen.
* Het informatiemodel: welke informatie wordt aan de gebruiker getoond.
* De acties: welke acties kunnen uitgevoerd worden op de taak.

## Besluit

We maken gebruik van een plugin architectuur waarbij de taken decentraal beschikbaar gesteld worden. 

Deze architectuur kent de volgende voordelen:

* decentrale verantwoordelijkheid: de eigenaar van de taak is verantwoordelijk voor de autorisatie en afhandeling van de taak waarbij het gebruik van taak context;
* open voor uitbreiding en gesloten voor wijziging: nieuwe plugins kunnen geïntroduceerd worden zonder dat het gevolgen heeft voor de takenlijst;

Via de plugin worden de volgende use-cases beschikbaar gesteld:

* geef mijn taken: geeft een lijst van geclaimde of geautoriseerde taken.
* claim taak: claimt de taak voor de huidige gebruiker
* taak afhandelen: een (web)formulier waar de taak afgehandeld kunnen worden;

Decentrale taken worden via een centrale takenlijst beschikbaar gesteld. De takenlijst is verantwoordelijk voor de volgende use-cases:

* geef mijn taken: geeft een lijst van geclaimde of geautoriseerde taken op basis van de plugin verzameling;
* claim taak: claimt een taak via de plugin;
* doorsturen: stuurt de gebruiker door naar het (web)formulier van de plugin wanneer de taak succesvol is geclaimd;

De takenlijst is stateless: wanneer de taak niet meer bestaat in de plugin dan bestaat het ook niet meer in de takenlijst.

|   |   |
| - | - |
| Auteur | Arjan Geertsema |
| Status | Besloten |

## Bijlage

[context diagram](context.puml)