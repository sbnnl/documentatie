# Waarborgfonds saneringskredieten

## Context

Gemeenten in Nederland zijn verantwoordelijk voor de uitvoering van de Wet gemeentelijke schuldhulpverlening (Wgs). Binnen de schuldhulpverlening zien we dat er nu drie hoofdroutes zijn om problematische schulden aan te pakken. Hier is de inzet van saneringskredieten er één van. Het saneringskrediet is daarnaast één van de procesversnellers uit het arrangement van de branchevereniging voor schuldhulp en financiële dienstverlening, de NVVK. Dit arrangement heeft als doel het schuldhulpverleningstraject te verkorten. 

Ruim een kwart van de Nederlandse gemeenten benut momenteel de mogelijkheid van inzet van saneringskredieten. Hiervoor werken zij samen met kredietbanken. De belangstelling voor saneringskredieten is snel gegroeid, zowel aan de kant van gemeenten, als bij schuldeisers. Het geeft mensen met financiële problemen rust: in plaats van een veelheid van schuldeisers resteert er slechts één schuldeiser (de kredietbank) en één schuld (het saneringskrediet). Het geeft duidelijkheid aan de voorkant van het hulpverleningsproces aan zowel de persoon met financiële problemen als aan schuldeisers. Schuldeisers schrijven een deel van de (oninbare) vordering af en besparen op debiteurenbeheer.

Uit onderzoek blijkt dat een deel van de gemeenten nog aarzelt over de inzet van saneringskredieten. Een eerste reden is onbekendheid met het instrument. Er is inmiddels, met succes, geinvesteerd in voorlichting. Een tweede reden is de zorg over de mogelijke risico's van het niet of slechts deels terugbetalen van het saneringskrediet bij de kredietbank. Dit risico komt dan immers bij de gemeente te liggen. Door de oprichting van het Waarborgfonds Saneringskredieten (Wsk) wordt dit risico voor gemeenten afgedekt. 

Er zijn in Nederland 23 kredietbanken die voor gemeenten saneringskredieten kunnen verstrekken. Zij kunnen door zich aan te melden bij het Wsk de saneringskredieten die zij voor gemeenten verstrekken laten borgen bij het Wsk. Hiervoor betalen de gemeenten via de kredietbank een premie. 

Het Wsk is met steun van het Ministerie van Sociale Zaken en Werkgelegenheid opgericht en werkt vanuit twee stichtngen op non-profit basis. Na de opstart periode zal er toegegroeid worden naar een revolverend fonds. 

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

* De meeste kredietbanken maken gebruik van Allegro en een enkele van Stratech, het ontwerp dient hierbij aan te sluiten.
* Idealiter wordt voor gegevensuitwisseling gebruik gemaakt van het Schuldenknooppunt. Indien er gegronde redenen zijn hiervan af te wijken, is dat wel mogelijk.
* Het ontwerp moet tot minimale extra werklast aan de kant van de kredietbanken leiden
* Uitwisseling van gegevens dient in lijn met de AVG-wetgeving te gebeuren
* **Handelingen zijn herleidbaar:** Elke handeling moet herleidbaar zijn naar een persoon of systeem.
* **Vierogenprincipe:** Het vierogenprincipe stelt dat voor bepaalde handelingen altijd 2 mensen nodig zijn. Zodat zij elkaar kunnen controleren. Dit om fraude of andere misstanden te voorkomen.
* **Minimalisatie van operationele werkzaamheden:** Werkzaamheden dienen zoveel mogelijk geautomatiseerd en volgens vaste processen plaats te vinden. Output dient uniform te zijn.
* **Data minimalisatie:** In het ontwerp moet gewaarborgd worden dat er niet méér persoonsgegevens verwerkt worden dan strikt noodzakelijk voor het doel van de verwerking.
