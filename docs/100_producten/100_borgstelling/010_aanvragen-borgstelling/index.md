# Aanvragen borgstelling

## Beschrijving

Een aanvraag van een borgstelling door een kredietbank voor een saneringskrediet waarvoor het Wsk borg staat. De volgende aanvraag borgstelling producten kunnen afgenomen worden:

* aanvraag borgstelling;
* aanvraag vanuit een portefeuille overname;

Het doel van de aanvraag borgstelling is om tot een beoordeling te komen of er voor een saneringskrediet een borgstelling kan worden afgegeven en om het verzekerd bedrag vast te stellen.

Uit onderzoek is gebleken dat 92% van de aanvragen standaard aanvragen zijn. Deze aanvragen worden via een STP proces automatisch verwerkt waardoor er binnen enkele seconden een resultaat naar de kredietverstrekker verstuurd wordt.

Voor een maatwerk aanvraag borgstelling kan optioneel een verwijzing naar een pro-forma aanvraag opgegeven worden. Wanneer deze verwijzing bestaat dan mag die eenmalig meewegen in de acceptatie van de aanvraag.

<!-- einde -->

[Formulier](product.user-task.yml)

## Proces

* [Proces](proces.bpmn)
 
## Use cases

### Bepaal lopende borgstelling

> Er zit een periode tussen de aanvraag van de borgstelling en de uitbetaling van het krediet. In die periode, die soms maanden kan duren, is het mogelijk dat het onderliggede krediet aangepast wordt waardoor er, na fiattering van de wijziging, een nieuwe aanvraag borgstelling wordt gedaan voor hetzelfde kenmerk.

Stel vast of er al een lopende (aanvraag) borgstelling voor dit kenmerk is.

### Afhandelen aanvraag borgstelling

Er is nog geen lopende (aanvraag) borgstelling voor dit kenmerk, de aanvraag moet worden afgehandeld.

Zie het [afhandelen aanvraag borgstelling proces](afhandelen-aanvraag-borgstelling/index.html) voor meer informatie.

### Afhandelen lopende aanvraag borgstelling

Er is een lopende (aanvraag) borgstelling voor dit kenmerk. Het resultaat van de aanvraag borgstelling moet nogmaals gecomuniceerd worden. Wanneer de lopende aanvraag nog niet is afgerond dan moet het resultaat afgewacht worden.

Zie het [afhandelen lopende aanvraag borgstelling proces](afhandelen-lopende-aanvraag-borgstelling/index.html) voor meer informatie.
