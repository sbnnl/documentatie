const String PRODUCT_NAAM = 'Borgstelling saneringskrediet';

void registreerVerkoop(UUID borgstellingId, UUID kredietbankId, float bedrag, String kenmerk) {
    UUID accountId = exact.getAccountId(kredietbankId);
    UUID itemId = exact.getItemId(PRODUCT_NAAM);   

    exact.createSalesOrder({
        OrderID: borgstellingId,
        OrderedBy: customerId,
        Description: String.format("Borgstelling voor saneringskrediet met kenmerk %s.", kenmerk),
        SalesOrderLines: [{
            AmountFC: bedrag,
            Item: itemId,
            Description: String.format("Borgstelling voor saneringskrediet met kenmerk %s.", kenmerk)
        }]
    });
}