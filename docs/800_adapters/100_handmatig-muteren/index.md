# Handmatige muteren

## Product

Met de handmatig muteren browser app is het voor kredietbanken mogelijk om handmatig aan te sluiten op het waarborgfonds.
Kredietbanken kunnen m.b.v. de app een bestand met daarin alle saneringskredieten die actief zijn geweest sinds de laatste aanlevering aanleveren.
De app vergelijkt het bestand met de actieve borgstellingen van het Wsk. De verschillen worden vertaald naar opdrachten die door de producten van het Wsk verwerkt kunnen worden.

De bestanden worden geëxporteerd vanuit verschillende back-office systemen zoals Allegro en Stratech. Specifieke adapters zetten dit formaat om naar een generieke verzameling van saneringskredieten. Op deze manier is de app gesloten voor wijziging en open voor uitbreiding.

Het Wsk wordt gevrijwaard van het ontvangen van ongewenste informatie omdat de verwerking van het bestand in de browser plaats vindt, het bestand wordt dus niet naar een server van het Wsk verstuurd, het blijft bij de kredietbank.

* [Scherm](scherm.drawio)
* [Sequence diagram](sequence-diagram.puml)
* [Klasse diagram](class-diagram.puml)
