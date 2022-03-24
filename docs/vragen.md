# Vragen

* [ ] [Hoe ziet het contract eruit? Graag in Word of PDF formaat aanleveren in of zelf toevoegen.](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/100_producten/010_aanvraag-borgstelling/contract.message.md) --> FD: dan bedoel je denk ik de bevestiging van de borgstelling van een lening? Deze moet nog gemaakt worden.
* [ ] Wat is de huisstijl van Wsk? Graag een logo in vector formaat en een document die de huisstijl beschrijf (kleurgebruik, lettertypes, spatiëring, etc.) --> FD: Ik ga navragen of wij een logo in vector formaat kunnen ontvangen. Wij beschikken nog niet over een geformuleerde huisstijl.
* [ ] Welke dashboards moeten er beschikbaar gesteld worden (zijn aparte dashboards voor SBN en SBF noodzakelijk)? --> FD: ik denk dat een dashboard genoeg is.
* [ ] Geef per dashboard aan wat de informatiebehoefte is, graag in Excel een versie met dummy informatie aanleveren. --> FD: Ga ik mee aan de slag.
* [x] [Hoeveel (absoluut of percentage) mag de bruto kredietsom afwijken van een geaccepteerde pro forma aanvraag om ook geaccepteerd te worden?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/100_producten/010_aanvraag-borgstelling/index.md#beoordeel-aanvraag) --> FD: zet de afwijking eerst maar op 5%.
* [x] [Welke extra informatie in geval van een overname moet er aangeleverd worden?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/commands/registreer_borgstelling_overname.yml)
    * [x] FD: Naast de informatie uit het basisproces (inclusief de ingangsdatum lening) geen andere informatie geloof ik. 
* [ ] [Goede voorbeelden bedenken voor data types:](https://github.com/sbnnl/documentatie/tree/feature/aanvraag-borgstelling/docs/data-dictionary/types)
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/aanvullende_opmerkingen.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/aanvullende_vragen.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/afwijs_reden.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/antwoord_op_aanvullende_vragen.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/bijzondere_omstandigheden.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/inkomen_zekerheid_uitleg.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/reden_risico_aanvaardbaar.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/terugbetaling_risicos.yml
    * [ ] https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/toelichting_advies.yml
* [x] [Is er een maximum bruto_kredietsom?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/bruto_kredietsom.yml) --> FD: Nee
* [x] [Is er een maximum netto kredietsom?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/data-dictionary/types/netto_kredietsom.yml) -->  FD: Nee
* [x] [Moet er extra informatie aangeleverd worden bij een beëindiging van een borgstelling?](https://github.com/sbnnl/documentatie/blob/feature/beeindiging-borgstelling/docs/100_producten/030_beeindiging-borgstelling/product.openapi.yml) --> FD: Een (automatisch) bericht dat de lening is afbetaald zou wenselijk zijn met reden, volledig afgelost of deels afgeboekt.
* [ ] [Wat moet er gebeuren nadat een borgstelling beëindigd wordt?](https://github.com/sbnnl/documentatie/blob/feature/beeindiging-borgstelling/docs/100_producten/030_beeindiging-borgstelling/index.md)
    * [ ] FD: einddatum van borgstelling registreren plus reden vastleggen.
* [ ] [Kan de informatie verwijderd worden na afwijzing van een borgstelling aanvraag?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/100_producten/010_aanvraag-borgstelling/index.md)
    * [ ] FD: Nee, gegevens moeten bewaard blijven.
    * [ ] AJG: Er moet doelbinding zijn. Wat is het doel?
* [ ] [Kan de informatie verwijderd worden na beëindiging van een borgstelling?](https://github.com/sbnnl/documentatie/blob/feature/beeindiging-borgstelling/docs/100_producten/030_beeindiging-borgstelling/index.md)
    * [ ] FD: Nee, gegevens moeten bewaard blijven.
    * [ ] AJG: Er moet doelbinding zijn. Wat is het doel?
* [ ] [Kan de informatie verwijderd worden na uitbetaling van een borgstelling?](https://github.com/sbnnl/documentatie/blob/feature/uitbetaling-borgstelling/docs/100_producten/040_uitbetaling-borgstelling/index.md)
    * [ ] FD: Nee, deze gegevens moeten ook bewaard blijven.
    * [ ] AJG: Er moet doelbinding zijn. Wat is het doel?
* [ ] [Hoe kan Exact online ingezet worden voor verzamel facturatie? Zijn sales orders een optie?](https://github.com/sbnnl/documentatie/blob/feature/aanvraag-borgstelling/docs/100_producten/010_aanvraag-borgstelling/index.md#registreer-verkoop)
    
