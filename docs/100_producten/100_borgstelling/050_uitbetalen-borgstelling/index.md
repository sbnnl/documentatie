# Uitbetalen borgstelling

## Product

Het doel van uitbetalen borgstelling is om tot een beoordeling te komen of de borgstelling van een saneringskrediet uitbetaald mag worden.

<!-- einde -->

## Proces

[Proces](proces.bpmn)

## Use-cases

### Bepaal uitbetaling verzoek

> Een kredietbank kan meerdere uitbetalingsverzoeken doen totdat de borgstelling uitbetaald of -ingetrokken is.

Stel vast op basis van het kenmerk welke van de onderstaande situaties van toepassing is:

1. Nieuw: als de volgende scenario's niet van toepassing zijn.
2. Lopend: er bestaat een uitbetaalverzoek voor dit kenmerk maar de aanvraag is nog niet afgerond;
3. Uitbetaald: er bestaat een uitbetaalverzoek voor dit kenmerk en de borgstelling is uitbetaald;

### Uitbetaling verzoek afgehandeld

Het lopende uitbetalingsverzoek is afgehandeld. Eventuele processen die wachten tot de lopende uitbetalingsverzoek is afgerond worden hiermee geïnformeerd dat ze verder kunnen gaan in het proces.

### Borgstelling aanvraag afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 

### Borgstelling uitbetaald

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden.

### Borgstelling verzoek afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 

### Bepaal borgstelling aanvraag resultaat

@Niels is dit nodig?