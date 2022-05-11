# Schuldenknooppunt adapter

## Product

De schuldenknooppunt adapter zorgt ervoor dat het schuldenknooppunt gekoppeld wordt aan het waarborgfonds. Deze koppeling bestaat uit de volgende onderdelen:

1. Op basis van statuswijzigingen in het schuldenknooppunt moeten er opdrachten verstuurd worden naar het Wsk;
1. Gebeurtenissen die bij het Wsk hebben plaatsgevonden moeten verwerkt worden in het schuldenknooppunt;
1. Periodiek aanlevering van actieve saneringskredieten en saneringskredieten die actief zijn geweest in de periode sinds de laatste aanlevering;

De adapter kan binnen of buiten het waarborgfonds gerealiseerd worden. Wanneer de adapter buiten het waarborgfonds wordt gerealiseerd spreken we over een externe adapter waarbij de communicatie met waarborgfonds via een REST API verloopt.

* [Interne adapter](context-intern.puml)
* [Externe adapter](context-extern.puml)

## Opdrachten versturen

Opdrachten moeten op basis van status wijzigingen in het schuldenknooppunt naar het Wsk verstuurd worden. Alle opdrachten worden idempotent door het Wsk verwerkt, maar niet als het anders staat aangegeven. In dat geval wordt beschreven welke aanvullende maatregelen getroffen moeten worden om de opdracht verwerking idempotent te maken.

### Registreer voorbeoordeling

Zie de documentatie van het product [voorbeoordeling] voor meer informatie.

### Registreer aanvraag

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Registreer overname

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Beëindig borgstelling

Zie de documentatie van het product [beëindigen borgstelling] voor meer informatie.

### Verzoek uitbetaling

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

## Gebeurtenissen verwerken

Gebeurtenissen ontstaan vanuit de producten van het waarborgfonds. Deze gebeurtenissen worden, in volgorde van aanmaken, via REST beschikbaar gesteld. De adapter moet zelf bijhouden welke gebeurtenis het laatste verwerkt is zodat het uitlezen vanaf dit punt gestart kan worden. Zie [gebeurtenissen documentatie] voor meer informatie.

### Voorbeoordeling goedgekeurd

Zie de documentatie van het product [voorbeoordeling] voor meer informatie.

### Voorbeoordeling afgewezen

Zie de documentatie van het product [voorbeoordeling] voor meer informatie.

### Borgstelling afgegeven

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling aanvraag afgewezen

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling aanvraag beëindigd

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling beëindigd

Zie de documentatie van het product [beëindigen borgstelling] voor meer informatie.

### Borgstelling ingetrokken

Zie de documentatie van het product [intrekken borgstelling] voor meer informatie.

### Borgstelling uitbetaald

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

### Uitbetaalverzoek afgewezen

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

## Periodieke aanlevering

Periodiek moeten er gegevens aangeleverd van saneringskredieten die sinds de laatste aanlevering actief zijn geweest. Zie [vul borgstelling aan] documentatie van het product [borgstellingen beheren].

[voorbeoordeling]: ../../producten/voorbeoordeling/index.md
[aanvragen borgstelling]: ../../producten/aanvragen-borgstelling/index.md
[beëindigen borgstelling]: ../../producten/beeindigen-borgstelling/index.md
[intrekken borgstelling]: ../../producten/intrekken-borgstelling/index.md
[uitbetalen borgstelling]: ../../producten/uitbetalen-borgstelling/index.md
[gebeurtenissen documentatie]: ../../producten/gebeurtenissen/index.md
[borgstellingen beheren]: ../../producten/borgstellingen-beheren/index.md
[vul borgstelling aan]: ../../producten/borgstellingen-beheren/index.md#vul-borgstelling(en)-aan