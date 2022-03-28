# Gebeurtenissen beschikbaar stellen via REST

## Context

Een gebeurtenis ontstaat wanneer er een opdracht is verwerkt in de systemen van het Wbf. Deze gebeurtenissen worden beschikbaar gesteld aan afnemers (o.a. Kredietbanken), zodat die de gebeurtenissen verder kunnen verwerken in de eigen systemen (o.a. Allegro en Stratech).

Deze gebeurtenissen kunnen op verschillende manieren beschikbaar gesteld worden:

1. PUSH vs. PULL;
1. Rijke vs. arme gebeurtenissen;
1. Stateless vs. stateful;
1. Centraal vs. decentraal;


### PUSH vs. PULL

Gebeurtenissen kunnen naar de afnemer gestuurd worden zodra ze ontstaan (PUSH) of de afnemer haalt zelf de gebeurtenissen op (PULL). 

### Rijke vs. arme gebeurtenissen

Alle relevante informatie kan toegevoegd worden aan de gebeurtenis (rijk) of de gebeurtenis bevat alleen een verwijzing naar de plek waar verdere informatie opgehaald kan worden (arm).

### Stateless vs. stateful aanbieder

De aanbieder van gebeurtenissen kan per afnemer bijhouden welke gebeurtenissen correct verwerkt zijn zodat het pro-actief alleen gebeurtenissen aanbiedt die nog niet verwerkt zijn (Stateful) of de afnemer is zelf verantwoordelijk om bij te houden welke gebeurtenissen verwerkt zijn zodat het zelf pro-actief aan kan geven vanaf welk punt het gebeurtenissen wil ontvangen (stateless).

### Centraal vs. decentraal

Gebeurtenissen kunnen op een centrale plek opgeslagen en beschikbaar gesteld worden (centraal) of gebeurtenissen worden bij de bron opgeslagen en via aggregatie op een centrale aangeboden worden (decentraal).


## Besluit

Arme gebeurtenissen worden centraal beschikbaar opgeslagen en beschikbaar gesteld aan afnemers. Afnemers moeten deze gebeurtenissen zelf ophalen en ze moeten zelf registreren welke gebeurtenissen verwerkt zijn. De volgende afwegingen hebben geleid tot dit besluit:

1. Arme gebeurtenissen: in het kader van data minimalisatie en data veiligheid is er gekozen voor arme gebeurtenissen. Zo wordt er geen gevoelige informatie gedupliceerd en wordt het standaard autorisatie model gebruikt om aanvullende informatie beschikbaar te stellen.
1. Sateless aanbieder: dit zorgt ervoor dat de aanbieder gesloten is voor wijziging en open voor uitbreiding. Elke afnemer kan, mits het de juiste autorisatie heeft, zelf besluiten hoe het de gebeurtenissen wil gebruiken. Afnemers zijn ook vrij om de verweking opnieuw te beginnen en nieuwe afnemers kunnen zonder aanpassingen toegevoegd worden. Het kenmerk van de gebeurtenis mag als idempotency sleutel gebruikt worden door de afnemer.
1. Centraal opgeslagen: gebeurtenissen zijn feiten die nooit meer verdwijnen of aangepast mogen worden kunnen. Om deze reden kunnen deze gebeurtenissen prima centraal opgeslagen worden wat de eenvoud en robuustheid ten goede komt.
1. PULL: de verwachting is dat veel van de afnemers vanuit afgeschermde omgevingen de gebeurtenissen moeten verwerken. Het is daarom een vereiste om de gebeurtenissen via het standaard HTTP protocol beschikbaar te stellen. Via dit protocol kunnen gebeurtenissen via REST (PUSH) en Server Sent Events (PULL + PUSH) beschikbaar gesteld worden. Omwille van de eenvoud en het lage volume hebben is er gekozen voor het REST protocol.

|   |   |
| - | - |
| Auteur | Arjan Geertsema |
| Status | Draft |