# Handmatige muteren

## Product

Kredietbanken kunnen via het portaal van het schuldenknooppunt handmatig aan sluiten op het waarborgfonds.
Kredietbanken kunnen daar een bestand met daarin alle saneringskredieten die actief zijn geweest sinds de laatste aanlevering uploaden.

De bestanden worden geëxporteerd vanuit verschillende back-office systemen zoals Allegro en Stratech. Specifieke adapters zetten dit formaat om naar een bericht met een generieke verzameling van saneringskredieten. Op deze manier is de app gesloten voor wijziging en open voor uitbreiding. Alle gegevens die het Wsk niet mag hebben worden er op deze manier automatisch uit gefilterd waardoor de privacy by design principes gevolgd worden.

Het bericht wordt door het Wsk verwerkt. Het Wsk vergelijk de generieke verzameling van saneringskredieten met de actieve borgstellingen. De verschillen worden vertaald naar [opdrachten voor het Wsk](../../producten/borgstelling/index.md#interface).

* [Sequence diagram](sequence-diagram.puml)
* [Klasse diagram](class-diagram.puml)
