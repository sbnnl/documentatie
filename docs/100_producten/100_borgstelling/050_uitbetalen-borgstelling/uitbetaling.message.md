Beste heer, mevrouw,

Het Waarborgfonds Saneringskredieten (Wsk) heeft met u een overeenkomst voor de borgstelling van saneringskredieten.

Wij hebben van u een verzoek ontvangen voor de uitbetaling van de borgstelling van saneringskrediet met kenmerk *{{ model.kenmerk }}*. Wij hebben dit verzoek beoordeeld.

Het bedrag dat wij uitbetalen hebben wij vastgesteld en is als volgt opgebouwd:

|                                           |                               |
| ----------------------------------------- | ----------------------------- |
| Netto kredietsom                          | *{{ model.kredietsom.netto }}*                  |
| Aflossingen                               | *{{ model.aflossingen }}*                   |
| Rente over vervallen termijnen            | *{{ model.rente_over_vervallen_termijnen }}*                     |
| __Totaal uit te betalen__                 | __*{{ model.uit_te_betalen }}*__              |

Het bedrag wordt uitbetaald op rekeningnummer *{{ model.bankrekening.naam }}* t.n.v. *{{ model.bankrekening.nummer }}*.

Heeft u nog vragen over deze brief, dan kunt u contact met ons opnemen.

Met vriendelijke groet,

{{ signature }}