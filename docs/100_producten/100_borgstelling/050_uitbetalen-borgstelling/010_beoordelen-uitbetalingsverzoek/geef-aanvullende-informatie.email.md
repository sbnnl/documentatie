{{ salutation }}

Wij hebben een verzoek gekregen om de borgstelling voor het saneringskrediet met kenmerk *{{ model.kenmerk }}* uit te betalen. Om te beoordelen of wij tot uitbetaling over kunnen gaan willen wij je graag nog een paar vragen stellen. Deze vragen helpen ons om vast te stellen welke acties er zijn ondernomen om het saneringskrediet te kunnen innen en of er is voldaan aan het fondsbeleid.

Hieronder staan de financiële gegevens zoals die bij ons bekend zijn. Deze gegevens worden gebruikt om het uit te betalen bedrag vast te stellen.
Controleer daarom of deze gegevens juist zijn.

|   |   |
| - | - |
| Bruto kredietsom                          | *{{ model.kredietsom.bruto }}*                  |
| Netto kredietsom                          | *{{ model.kredietsom.netto }}*                  |
| Aflossingen                               | *{{ model.betalingen.aflossing }}*              |
| Vordering kredietvergoeding               | *{{ model.vorderingen.kredietvergoeding }}*     |
| Voorstand                                 | *{{ model.voorstand }}*                         |
| Lopende rente                             | *{{ model.lopende_rente }}*                     |

De volgende vragen willen wij je graag stellen:

* Zijn de financiële gegevens, zoals die hierboven vermeld staan, juist?
* Om welke reden is het saneringskrediet oninbaar gebleken? (meerdere antwoorden mogelijk)
  * Overleden
  * Verhuis naar een onbekend adres
  * Afloscapaciteit is tussentijds herberekend (in dit geval bewijs herberekening meesturen)
  * Anders, namelijk....
* Welke acties zijn ondernomen om het krediet te innen? (meerdere antwoorden mogelijk)
  * Herinnering gestuurd naar klant
  * Aanmaning gestuurd naar klant
  * In gebreken stelling gestuurd naar klant
  * Opeising saneringskrediet gestuurd naar klant
  * Informatie ingewonnen bij de gemeente
  * Informatie ingewonnen bij schuldhulpverlenende instelling (indien van toepassing)
  * Contact gezocht met de klant om afspraken te maken, via: (meerdere antwoorden mogelijk)
    * Telefoon
    * Huisbezoek
    * Brief
    * E-mail
  * Acties ondernomen om de schuld nog (deels) te innen, door middel van: (meerdere antwoorden mogelijk)
    * Deurwaarder
    * Huisbezoek
    * Betalingsregeling
    * Anders, namelijk...
* Is aan het incassobeleid van de kredietbank volledig voldaan?
* Zijn er nog opmerkingen die relevant kunnen zijn voor het Waarborgfonds?

Is er iets niet duidelijk of heb je zelf nog een vraag, neem dan contact op via het volgende mail adres: waarborgfonds@sbn.nl

Met vriendelijke groet,

{{ signature }}