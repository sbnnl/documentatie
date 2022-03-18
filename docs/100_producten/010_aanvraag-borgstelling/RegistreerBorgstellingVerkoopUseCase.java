public class RegistreerBorgstellingerkoopUseCaseHandler implements UseCaseHandler<RegistreerBorgstellingVerkoopUseCase>
{
    private readonly Mediator mediator;

    public RegistreerVerkoopUseCase(Mediator mediator) 
    {
        this.mediator = mediator;
    }

    public void handle(RegistreerVerkoopUseCase useCase) 
    {
        var aanvraag = mediator.ask(new GeefBorgstellingAanvraag(useCase.borgstellingId));
        
        var port = new RegistreerBorgstellingVerkoop();
        port.BorgstellingId = aanvraag.BorgstellingId;
        port.KredietbankId = aanvraag.KredietbankId;
        port.Premie = aanvraag.BrutoKredietsom / 100;;
        port.Omschrijving = String.format("Borgstelling voor saneringskrediet met kenmerk %s.", aanvraag.Kenmerk);

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
        var accountId = api.GetAccountId(port.KredietbankId);        
        var itemId =  api.GetItemId("Borgstelling"));

        const salesOrder = new SalesOrder();
        salesOrder.OrderID = port.BorgstellingId;
        salesOrder.OrderedBy = accountId;
        salesOrder.Description = port.Omschrijving;

        const salesOrderLine = new SalesOrderLine();
        salesOrderLine.AmountFC = port.Premie;
        salesOrderLine.itemId = itemId;
        salesOrderLine.Description = port.Omschrijving;

        salesOrder.SalesOrderLines = { salesOrderLine };

        api.CreateSalesOrder(salesOrder);
    }
}