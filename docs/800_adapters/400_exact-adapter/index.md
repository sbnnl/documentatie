# Exact adapter

## Beschrijving

Exact heeft standaard API-limieten ingesteld waardoor er maar met 1 instantie gelimiteerd berichten verwerkt kunnen worden:

* Maximaal 60 berichten per minuut
* Maximaal 5000 berichten per dag

Omdat er voor 1 exact actie vaak meerdere berichten nodig zijn ontstaan er de volgende functionele limieten voor bijvoorbeeld het registeren verkopen:

* Maximaal 20 verkopen per minuut
* Maximaal 1667 verkopen per dag

Voor met name portefeuille overnames levert dit problemen op omdat er dan foutmeldingen ontstaan.

Om dit probleem op te lossen is de verwerking van Exact opdrachten losgekoppeld van het primaire proces waardoor het primaire proces door kan gaan en Exact uiteindelijk consistent zal zijn.

## Proces

[Proces](./proces.bpmn)

## Use-cases

### Bepaal Exact opdracht

Bepaalt de volgende exact opdracht op basis van first in / first out principe.

### Registreer verkoop

Registreert een verkoop in Exact op basis van de borgstelling afgegeven domein gebeurtenis.

Sbf maakt gebruik van Exact online.  Voor **de premie percentage (borgsetelling categorie) van het verzekerd bedrag** van de geaccepteerde borgstelling aanvraag moet er automatisch een factuurregel aangemaakt worden via de [API van Exact online](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoiceLines).

[Pseudo code](RegistreerBorgstellingVerkoopUseCase.java)

Zie [exact knowledge base](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-restapibusinessexamplesalesorder) voor meer informatie.

### Betaal borgstelling uit

Registreert een credit factuur in Exact op basis van de borgstelling uitbetaald domein gebeurtenis.

Sbf maakt gebruik van Exact online. Voor het vastgestelde borgstelling bedrag wordt er automatisch via de API van Exact online een credit factuur en een betaalopdracht aangemaakt.

### Handel Exact fout af

Verwachten en onverwachte fouten kunnen via dit scherm afgehandeld. Dit scherm toont alleen de foutmelding en wanneer bekent de oplossing. Een voorbeeld is het ontbreken van Kredietbank informatie die via Valtimo opgevoerd kan worden.

### Bepaal wachttijd

De wachttijd wordt berekend op basis van het tijdstip dat het laatste bericht naar Exact is verstuurd rekening houdend met de rate-limit van de Exact API.