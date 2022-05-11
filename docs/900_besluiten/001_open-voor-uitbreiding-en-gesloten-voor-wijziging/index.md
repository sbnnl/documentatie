# Open voor uitbreiding gesloten voor wijziging

## Context

Een van de randvoorwaarden van het Wsk is minimalisatie van operationele werkzaamheden bij zowel de kredietbank als de uitvoeringsorganisatie van het Wsk.

Om dit mogelijk te maken moeten de systemen van het Wsk gekoppeld worden aan de systemen van de kredietbank. Op dit moment zijn er twee systemen (Allegro en Stratech) in verschillende versies actief bij de Kredietbanken. Daarnaast bestaat er een Schuldenknooppunt. Dit is een platform waarmee standaard berichten uitgewisseld kunnen worden met kredietbanken.

## Besluit

Om huidige en toekomstige systemen te kunnen koppelen zonder dat dit gevolgen heeft voor de systemen van het Wsk worden het "open voor uitbreiding en gesloten voor wijziging" principe gehanteerd. Via een adapter word de algemene processen gekoppeld aan specifieke externe systemen en eventueel versies van externe systemen.

De processen van het Wsk zijn daar waar mogelijk in enkelvoud uitgevoerd en ondersteunen daarom geen batchverwerking. Het is aan de adapter implementatie om een batchproces te vertalen neer meerdere procesinstanties bij het Wsk. Hierbij moet het Wsk ervoor zorgen dat de opdrachtverwerking idempotent is.

|   |   |
| - | - |
| Auteur | Arjan Geertsema |
| Status | Draft |

## Bijlage

[context diagram Wsk adapters](context.puml)