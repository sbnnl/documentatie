# Beheer op actieve borgstellingen

## Context

@Frank, graag hier het doel van het product beschrijven:

* Vertaling van algemene missie, visie, doelen en randvoorwaarden naar product specifieke doelen en doelstellingen.
* Wat moet het product kunnen?
* Waar moet het aan voldoen om succesvol te zijn?

<!-- einde -->

* [API](product.openapi.yml)

## Use-cases

### Geef borgstellingen dashboard

Geeft de informatie voor het borgstellingen dashboard dat door SBF en SBN gebruikt wordt. Het Dashboard kan voor 1 of meerdere kredietbanken opgevraagd worden. Voor elke kredietbank moet de gebruiker een kredietbank claim hebben.

* [Acceptatie criteria](geef-borgstellingen-dashboard.feature)

### Geef borgstellingen

Geeft een lijst met borgstellingen. Deze use-case kan gebruikt worden om kenmerken van de kredietbanken om te zetten naar kenmerken van het Wsk. De lijst kan voor 1 of meerdere kredietbanken opgevraagd worden. Voor elke kredietbank moet de gebruiker een kredietbank claim hebben.

* [Acceptatie criteria](geef-borgstellingen.feature)

### Vul borgstelling aan

Vult de borgstelling aan met actuele informatie van het saneringskrediet waarvoor de borgstelling is afgegeven. Elke mutatie wordt op datum opgeslagen zodat het gebruikt kan worden om het verloop inzichtelijk te maken.

* [Acceptatie criteria](vul-borgstelling-aan.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |