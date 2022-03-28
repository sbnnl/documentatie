# Gebeurtenissen

## Context

Gebeurtenissen beschrijven welke opdrachten in de systemen van het Wbf correct zijn verwerkt. Deze gebeurtenissen worden, in volgorde van registratie, centraal beschikbaar gesteld aan afnemers van deze gebeurtenissen zodat die de gebeurtenissen verder kunnen verwerken.

De afnemer moet zelf registeren welke gebeurtenissen correct verwerkt zijn door het kenmerk op te slaan. Het kenmerk mag als idempotency sleutel gebruikt worden.

Het laatste opgeslagen kenmerk moet meegeven worden als offset om alleen niet verwekte gebeurtenissen te ontvangen. 

* [API](product.openapi.yml)


## Business requirements

Wat zijn de (non)functionele requirements? Denk hierbij aan zaken als doorlooptijd, vierogenprincipe, etc.

| Nummer | Omschrijving                         | Eigenaar                  |
| -------| ------------------------------------ | ------------------------- |
| 1      | Omschrijving                         | Frank Dijkstra            |