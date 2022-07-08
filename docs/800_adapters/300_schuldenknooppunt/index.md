# Schuldenknooppunt adapter

## Product

De schuldenknooppunt adapter zorgt ervoor dat het schuldenknooppunt gekoppeld wordt aan het waarborgfonds. Deze koppeling bestaat uit de volgende onderdelen:

1. Berichten die door het schuldenknooppunt beschikbaar worden gesteld moeten omgezet worden in opdrachten voor het waarborgfonds;
1. Gebeurtenissen van het waarborgfonds moeten omgezet worden in berichten en verstuurd worden naar het schuldenknooppunt;
1. Periodiek moet er een bericht verstuurd worden naar het schuldenknooppunt waarmee alle actieve saneringskredieten mee worden opgevraagd;

Http over SSL wordt gebruikt als transport mechanisme en SOAP is het protocol. Authenticatie en autorisatie verloopt via een PKIoverheid certificaat (X.509) die door het waarborgfonds aangevraagd moet worden. Dit certificaat moet door het schuldenknooppunt vertrouwd worden en het waarborgfonds moet het certificaat van het schuldenknooppunt vertrouwen: two-way authentication. Voor de acceptatieomgeving worden self signed certificaten door het schuldenknooppunt beschikbaar gesteld. De informatiestromen zijn niet per kredietbank logisch gescheiden.

Functionele uitval, berichten die syntactisch niet juist zijn of die inhoudelijk niet juist zijn, worden afgehandeld door de functioneel beheerder van de kredietbank via het schuldenknooppunt. Dit proces wordt gestart door het foutieve bericht als verwerkt te markeren en [een foutmelding bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3321888769/Waarborgfonds+Foutbericht) naar het schuldenknooppunt te sturen.

Een WSDL wordt door de leverancier van het schuldenknooppunt beschikbaar gesteld en hiermee kan, in de taal naar keuze, service code mee gegenereerd worden.

[Zie de documentatie van het schuldenknooppunt voor meer informatie.](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3315695621/Waarborgfonds)

* [Context](context.puml)
* [Pseudo code](pseudo-code.cs)

## Berichten verwerken

Berichten worden in context van een kredietbank door het schuldenknooppunt beschikbaar gesteld. Voor elk bericht stelt het schuldenknooppunt een XML schema beschikbaar die gebruikt kan worden voor het valideren van de berichten. De berichten moeten omgezet worden in opdrachten voor waarborgfonds zoals ze hieronder staan beschreven.

### Registreer pro-forma aanvraag

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3316645913/Registreer+voorbeoordeling) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie de documentatie van het product [pro-forma aanvragen borgstelling] voor meer informatie.

### Registreer aanvraag

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3322740737/Aanvraag+borgstelling) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Registreer overname

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3322740754/Aanvraag+overname) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Beëindig borgstelling

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3322806288) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie de documentatie van het product [beëindigen borgstelling] voor meer informatie.

### Verzoek uitbetaling

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3322806304/Borgstelling+uitbetalen) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

### Vul borgstelling aan

[Schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3322740770/Verwerk+saneringskredieten+informatie) omzetten naar Wsk opdracht en use-case uitvoeren.

Zie [vul borgstelling aan] documentatie van het product [borgstellingen beheren].

## Berichten versturen

Gebeurtenissen ontstaan vanuit de producten van het waarborgfonds. Deze gebeurtenissen worden, in context van een kredietbank en in volgorde van aanmaken, beschikbaar gesteld. De adapter is verantwoordelijk voor de conversie van gebeurtenissen naar berichten en het versturen van de berichten naar het schuldenknooppunt. Voor elk bericht stelt het schuldenknooppunt een XML schema beschikbaar die gebruikt kan worden voor het valideren van de berichten. De adapter moet zelf bijhouden welke gebeurtenis het laatste verwerkt is zodat het uitlezen vanaf dit punt gestart kan worden. Zie [gebeurtenissen documentatie] voor meer informatie.

### Pro-forma borgstelling afgegeven

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [pro-forma aanvragen borgstelling] voor meer informatie.

### Pro-forma aanvraag afgewezen
Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [pro-forma aanvragen borgstelling] voor meer informatie.

### Borgstelling afgegeven

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling aanvraag afgewezen

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling aanvraag beëindigd

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [aanvragen borgstelling] voor meer informatie.

### Borgstelling beëindigd

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [beëindigen borgstelling] voor meer informatie.

### Borgstelling ingetrokken

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [intrekken borgstelling] voor meer informatie.

### Borgstelling uitbetaald

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

### Uitbetaalverzoek afgewezen

Wsk gebeurtenis omzetten naar een [schuldenknooppunt bericht](https://innovadis.atlassian.net/wiki/spaces/NVVK/pages/3317006433/Gebeurtenis) en versturen.

Zie de documentatie van het product [uitbetalen borgstelling] voor meer informatie.

## Periodiek berichten versturen

Periodiek moeten er gegevens aangeleverd van saneringskredieten die sinds de laatste aanlevering actief zijn geweest. Dit proces wordt gestart door de adapter die periodiek een bericht verstuurd naar elke aangesloten kredietbank waarmee de kredietbank gevraagd wordt om te antwoorden met alle saneringskredieten die sinds de laatste aanlevering actief zijn geweest. Zie [bericht vul borgstelling aan](#vul-borgstelling-aan) voor meer informatie.

[pro-forma aanvragen borgstelling]: ../../processen/pro-forma-aanvragen-borgstelling/index.md
[aanvragen borgstelling]: ../../processen/aanvragen-borgstelling/index.md
[beëindigen borgstelling]: ../../processen/beeindigen-borgstelling/index.md
[intrekken borgstelling]: ../../processen/intrekken-borgstelling/index.md
[uitbetalen borgstelling]: ../../processen/uitbetalen-borgstelling/index.md
[gebeurtenissen documentatie]: ../../proprocessenducten/gebeurtenissen/index.md
[borgstellingen beheren]: ../../processen/borgstellingen-beheren/index.md
[vul borgstelling aan]: ../../processen/borgstellingen-beheren/index.md#vul-borgstelling(en)-aan