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

### Bepaal aanvraag borgstelling

> Er zit een periode tussen de aanvraag van de borgstelling en de uitbetaling van het krediet. In die periode, die soms maanden kan duren, is het mogelijk dat het onderliggede krediet aangepast wordt waardoor er, na fiattering van de wijziging, een nieuwe aanvraag borgstelling wordt gedaan voor hetzelfde kenmerk.

Stel vast op basis van het kenmerk welke van de onderstaande situaties van toepassing is:

1. Nieuw: er bestaat geen borgstelling aanvraag voor dit kenmerk;
2. Lopend: er bestaat een borgstelling aanvraag voor dit kenmerk maar de aanvraag is nog niet afgerond;
3. Afgerond: er bestaat een borgstelling aanvraag voor dit kenmerk en de aanvraag is afgerond;

### Afhandelen aanvraag borgstelling

Er is nog geen lopende (aanvraag) borgstelling voor dit kenmerk, de aanvraag moet worden afgehandeld.

### Borgstelling aanvraag afgehandeld

De oorspronkelijke borgstelling aanvraag is afgehandeld. Eventuele processen die wachten tot de lopende borgstelling aanvraag is afgerond worden hiermee geinformeerd dat ze verder kunnen gaan in het proces.

### Borgstelling aanvraag afgewezen

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 

### Borgstelling afgegeven

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 

### Borgstelling aanvraag beëindigd

De gebeurtenis wordt toegevoegd aan de gebeurtenissen verzameling van de kredietbank zodat de gebeurtenis door de kredietbank, decentraal, verder verwerkt kan worden. 

### Bepaal borgstelling aanvraag resultaat

Het resultaat van de eerste, en oorspronkelijke, borgstelling aanvraag moet worden vastgesteld zodat exact hetzelfde rersultaat opnieuw wordt gecommuniceerd als gebeurtenis naar de kredietbank.