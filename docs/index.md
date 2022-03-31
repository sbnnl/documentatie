# Waarborgfonds saneringskredieten

## Context

Iemand met problematische schulden kan bij zijn of haar gemeente terecht voor schuldhulpverlening.
Een gemeente kan proberen een schuldbemiddelingstraject op te starten, waarbij de persoon met schulden in drie jaar tijd maandelijks aan diverse schuldeisers een gedeelte aflost óf de gemeente kan een saneringskrediet aanbieden.
Gemeenten maken in de regel afspraken met een kredietbank om de financiële afhandeling van dit proces te organiseren.

Er zijn 23 kredietbanken in Nederland op dit moment, die zijn verschillend georganiseerd.
Uit onderzoek blijkt dat een deel (75%) van de gemeenten nog aarzelt over de inzet van saneringskredieten.
Een reden hiervoor is tweedelig, aan de ene kant komt dit door onbekendheid en aan de andere kant bestaat er zorg over de mogelijke risico’s van het niet of slechts deels terugbetalen van het saneringskrediet aan de kredietbank.
Omdat kredietbanken soms aan gemeenten vragen borg te staan voor dit risico, komt het risico op saneringskredieten bij gemeenten te liggen.
Naar aanleiding van een petitie uit 2019 van de NVVK een Waarborgfonds voor saneringskredieten (hierna: Wsk) opgericht. Het Wsk biedt in feite een (aantrekkelijke) extra mogelijkheid om saneringskredieten te borgen.

## Missie

De missie van het Waarborgfonds Saneringskredieten is:

> Saneringskredieten aantrekkelijker en toegankelijker maken voor gemeenten om zo de effectiviteit van de hele ketenaanpak rondom problematische schulden te vergroten.

Het Wsk verwezenlijkt deze doelstelling door:

1. Het afgeven van borgstellingen voor saneringskredieten en het uitkeren van de borgstellingen in geval van oninbare kredieten aan deelnemende kredietbanken.
1. Zorgvuldig beheer van de haar toevertrouwde middelen en de eventueel te werven middelen.
1. Het belang van saneringskredieten en de voordelen van het fonds actief onder de aandacht brengen van relevante partijen in het schuldhulpverleningsveld.

## Organisatie

Het werk van het Wsk is belegd bij twee stichtingen:

* Stichting Bemiddeling en Fondsbeheer (SBF)
* Stichting Sociale Banken Nederland (SBN)

De Stichting SBF sluit overeenkomsten met de kredietbanken om garant te staan voor afgesloten Saneringskredieten.

[Context](context.puml)

## Randvoorwaarden

* De meeste kredietbanken maken gebruik van Allegro en enkele van Stratech, het ontwerp dient hierbij aan te sluiten.
* Idealiter wordt voor gegevensuitwisseling gebruik gemaakt van het Schuldenknooppunt. Indien er gegronde redenen zijn hiervan af te wijken, is dat wel mogelijk.
* Het ontwerp moet tot minimale extra werklast aan de kant van de kredietbanken leiden
* Uitwisseling van gegevens dient in lijn met de AVG-wetgeving te gebeuren
* **Handelingen zijn herleidbaar:** Elke handeling moet herleidbaar zijn naar een persoon of systeem.
* **Vierogenprincipe:** Het vierogenprincipe stelt dat voor bepaalde handelingen altijd 2 mensen nodig zijn. Zodat zij elkaar kunnen controleren. Dit om fraude of andere misstanden te voorkomen.
* **Minimalisatie van operationele werkzaamheden:** Werkzaamheden dienen zoveel mogelijk geautomatiseerd en volgens vaste processen plaats te vinden. Output dient uniform te zijn.
* **Data minimalisatie:** In het ontwerp moet gewaarborgd worden dat er niet méér persoonsgegevens verwerkt worden dan strikt noodzakelijk voor het doel van de verwerking.
