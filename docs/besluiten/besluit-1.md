# Open voor uitbreiding gesloten voor wijziging

## Context

Een van de randvoorwaarden van het WBF is minimalisatie van operationele werkzaamheden bij zowel de kredietbank als de uitvoeringsorganisatie van het WBF. 

Om dit mogelijk te maken moeten de systemen van het WBF gekoppeld worden aan de systemen van de kredietbank. Op dit moment zijn er twee systemen (Allegro en Stratech) in verschillende versies actief bij de Kredietbanken en daarnaast bestaat er een Schuldenknooppunt die wellicht ook als informatiebron kan dienen.

## Besluit

Om huidige en toekomstige systemen te kunnen koppelen zonder dat dit gevolgen heeft voor de systemen van het WBF worden het "open voor uitbreiding en gesloten voor wijziging" principe gehanteerd. Via een adapter word de algemene processen gekoppeld aan specifieke externe systemen en eventueel versies van externe systemen. 

De processen van het WBF zijn daar waar mogelijk in enkelvoud uitgevoerd en ondersteunen daarom geen batchverwerking. Het is aan de adapter implementatie om een batchproces te vertalen neer meerdere procesinstanties bij het WBF. Hierbij moet het WBF ervoor zorgen dat de opdrachtverwerking idempotent is.

|   |   |
| - | - |
| Auteur | Arjan Geertsema |
| Status | Draft |

## Bijlage

[context diagram WBF adapters](besluit-1/context.puml)

