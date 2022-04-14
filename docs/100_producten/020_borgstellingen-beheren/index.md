# Borgstellingen beheren

## Product

Het doel is om het Wsk goed te kunnen beheren door inzicht te krijgen in de groei, de omvang en de risico's van het waarborgfonds. Daarnaast is een ander doel om aan de rapportage verplichtingen richting het ministerie en de toezichthouders te voldoen. 

## Use-cases

### Geef borgstellingen dashboard

Geeft de informatie voor het borgstellingen dashboard dat door SBF en SBN gebruikt wordt. Het Dashboard kan voor 1 of meerdere kredietbanken opgevraagd worden. Voor elke kredietbank moet de gebruiker een kredietbank claim hebben.

<!-- einde -->

* [API](geef-borgstellingen-dashboard.openapi.yml)
* [Acceptatie criteria](geef-borgstellingen-dashboard.feature)

### Geef borgstellingen

Geeft een lijst met borgstellingen. Deze use-case kan gebruikt worden om kenmerken van de kredietbanken om te zetten naar kenmerken van het Wsk. De lijst kan voor 1 of meerdere kredietbanken opgevraagd worden. Voor elke kredietbank moet de gebruiker een kredietbank claim hebben.

<!-- einde -->

* [API](geef-borgstellingen.openapi.yml)
* [Acceptatie criteria](geef-borgstellingen.feature)

### Geef borgstelling

Geeft een borgstelling van een kredietbank. Deze use-case wordt gebruikt door het Wsk om inzicht te krijgen in de status van een borgstelling. De gebruiker moet de kredietbank waar de borgstelling deel van uitmaakt als claim hebben.

<!-- einde -->

* [Scherm](geef-borgstelling.drawio)
* [API](geef-borgstelling.openapi.yml)
* [Acceptatie criteria](geef-borgstelling.feature)

### Vul borgstelling aan

Vult de borgstelling aan met actuele informatie van het saneringskrediet waarvoor de borgstelling is afgegeven. Elke mutatie wordt op datum opgeslagen zodat het gebruikt kan worden om het verloop inzichtelijk te maken. De gebruiker moet de kredietbank waar de borgstelling deel van uitmaakt als claim hebben.

Deze use-case kan in enkelvoud aangeroepen worden of in meervoud om batch verwerking mogelijk te maken.

<!-- einde -->

* [API](vul-borgstelling-aan.openapi.yml)
* [Acceptatie criteria](vul-borgstelling-aan.feature)

## Business requirements

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
