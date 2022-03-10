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

```plantuml

cloud "Kredietbank A" {
    [Stratech V1] as KbaStratech
    [Adapter] as KbaAdapter

    KbaStratech <--> KbaAdapter
}

cloud "Kredietbank B" {
    [Stratech V2] as KbfStratech
    [Adapter] as KbfAdapter

    KbfStratech <--> KbfAdapter
}


cloud "Kredietbank C" {
    [Allegro V1] as KbbAllegro
    [Adapter] as KbbAdapter

    KbbAllegro <--> KbbAdapter
}

cloud "Kredietbank D" {
    [Allegro V2] as KbcAllegro
    [Adapter] as KbcAdapter

    KbcAllegro <--> KbcAdapter
}

cloud "Kredietbank E" {
    [Allegro V1] as KbdAllegro
    [Adapter] as KbdAdapter

    KbdAdapter <--> KbdAllegro
}

cloud "Kredietbank F" {
    [Allegro V2] as KbeAllegro
    [Adapter] as KbeAdapter

    KbeAdapter <--> KbeAllegro
}

cloud "SBN" {
    [Waarborgfonds] as WBF
    [Schuldenknooppunt]    
    [Adapter] as SchuldenknooppuntAdapter
}

KbfAdapter <--> WBF
KbaAdapter <--> WBF
KbbAdapter <--> WBF
KbcAdapter <--> WBF
WBF <--> SchuldenknooppuntAdapter
SchuldenknooppuntAdapter <--> Schuldenknooppunt

Schuldenknooppunt <--> KbdAdapter
Schuldenknooppunt <--> KbeAdapter

```
<small>context diagram WBF adapters</small>

