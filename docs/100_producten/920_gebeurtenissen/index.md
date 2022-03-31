# Gebeurtenissen

## Product

Vanuit producten ontstaan er gebeurtenissen. Dit product stelt deze gebeurtenissen centraal beschikbaar zodat die door andere producten, decentraal, verder verwerkt kunnen worden.

Gebeurtenissen beschrijven welke opdrachten in de systemen van het Wsk correct zijn verwerkt. Deze gebeurtenissen worden, in volgorde van registratie, centraal beschikbaar gesteld aan afnemers van deze gebeurtenissen zodat die de gebeurtenissen verder kunnen verwerken.

De afnemer moet zelf registeren welke gebeurtenissen correct verwerkt zijn door het kenmerk op te slaan. Het kenmerk mag als idempotency sleutel gebruikt worden.

Het laatste opgeslagen kenmerk moet meegeven worden als offset om alleen niet verwekte gebeurtenissen te ontvangen.

* [API](product.openapi.yml)

## Use-cases

### Geef gebeurtenissen

Geeft een lijst met gebeurtenissen. Het gaat om arme gebeurtenissen, d.w.z. dat er geen informatie wordt toegevoegd aan de gebeurtenissen. De gebeurtenis verwijst alleen naar een API resource waar je meer informatie over de gebeurtenis op kan vragen.

* [Acceptatie criteria](geeft-gebeurtenissen.feature)

## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |