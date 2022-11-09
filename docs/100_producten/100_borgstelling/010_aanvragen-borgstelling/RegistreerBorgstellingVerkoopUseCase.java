public class RegistreerBorgstellingVerkoopUseCaseHandler implements UseCaseHandler<RegistreerBorgstellingVerkoopUseCase>
{
    private readonly Mediator mediator;

    public RegistreerVerkoopUseCase(Mediator mediator) 
    {
        this.mediator = mediator;
    }

    public void handle(RegistreerVerkoopUseCase useCase) 
    {
        var aanvraag = mediator.ask(new GeefBorgstellingAanvraag(useCase.borgstellingId));
        var borgstellingCategorie = mediator.ask(new GeefBorgstellingCategorie(aanvraag.BorgstellingCategorieId));
        var kredietbank = mediator.ask(new GeefKredietbank(aanvraag.KredietbankId));
        
        var port = new RegistreerBorgstellingVerkoop();
        port.Aanvraag = aanvraag;
        port.BorgstellingCategorie = aanvraag.BorgstellingCategorie;
        port.Kredietbank = aanvraag.Kredietbank;

        mediator.send(port);
    }
}

public class ExactService implements PortHandler<RegistreerBorgstellingVerkoop>
{
    private readonly ExactApi api;

    public ExactService(ExactApi api) {
        this.api = api;
    }

    public void handle(RegistreerVerkoop port) {
        var accountId = api.getAccountId(port.Kredietbank.KredietbankId);
        if(accountId == null) {
            const account = new Account();
            account.AccountId = port.Kredietbank.KredietbankId;
            account.Name = port.Kredietbank.Kredietbank.Naam;

            accountId = api.createAccount(account);
        }

        var itemId =  api.getItemId(port.BorgstellingCategorie.BorgstellingCategorieId));
        if(itemId == null) {
            const item = new Item();

            item.ItemId = port.BorgstellingCategorie.BorgstellingCategorieId;
            item.Name = port.BorgstellingCategorie.Naam;

            itemId = api.createItem(item);
        }

        const salesOrder = new SalesOrder();
        salesOrder.OrderID = port.BorgstellingId;
        salesOrder.OrderedBy = accountId;
        salesOrder.Description = String.format("Borgstelling voor saneringskrediet met kenmerk %s.", port.Aanvraag.Kenmerk);

        const salesOrderLine = new SalesOrderLine();
        salesOrderLine.AmountFC = port.Aanvraag.BrutoKredietsom * port.BorgstellingCategorie.PremiePercentage;;
        salesOrderLine.itemId = itemId;
        salesOrderLine.Description = String.format("Borgstelling %s voor saneringskrediet met kenmerk %s.", port.BorgstellingCategorie.Naam, port.Aanvraag.Kenmerk);

        salesOrder.SalesOrderLines = { salesOrderLine };

        api.createSalesOrder(salesOrder);
    }
}