public class ArchiveerContractUseCaseHandler implements UseCaseHandler<ArchiveerContractUseCase>
{
    private readonly Mediator mediator;

    public ArchiveerContractUseCase(Mediator mediator) 
    {
        this.mediator = mediator;
    }

    public void handle(RegistreerVerkoopUseCase useCase) 
    {
        var aanvraag = mediator.ask(new GeefBorgstellingAanvraag(useCase.borgstellingId));
        
        var maakContract = new MaakContract();
        maakContract.BorgstellingId = aanvraag.BorgstellingId;
        maakContract.Kenmerk = aanvraag.Kenmerk;
        maakContractv.Bedrag = aanvraag.BrutoKredietsom;
        maakContract.Datum = new Date();
        maakContract.EindDatum = port.Datum.plusMonths(36);
        maakContract.Kredietbank = aanvraag.Kredietbank;

        var contract = mediator.ask(maakContract);

        var archiveerDocument = new ArchiveerBorgstellingDocument();
        archiveerDocument.DocumentId = useCase.ContractId;
        archiveerDocument.KredietbankId = aanvraag.KredietbankId;
        archiveerDocument.Onderwerp =  String.format("Borgstelling contract %s met kenmerk %s.", aanvraag.BorgstellingId, aanvraag.Kenmerk);
        archiveerDocument.VerlooptOp = port.Datum.plusYears(7);
        archiveerDocument.Kenmerken = [ aanvraag.BorgstellingId, "Borgstelling contract", aanvraag.KredietbankId, aanvraag.Kenmerk ];
        archiveerDocument.Bestand = new Bestand();
        archiveerDocument.Bestand.Naam = String.format("borgstelling-contract-%s.pdf", aanvraag.BorgstellingId);;
        archiveerDocument.Bestand.Data = contract.toBase64String();

        mediator.send(archiveerDocument);
    }
}

public class ExactService implements PortHandler<ArchiveerBorgstellingDocument>
{
    private readonly ExactApi api;

    public ExactService(ExactApi api) {
        this.api = api;
    }

    public void handle(RegistreerVerkoop port) {
        var accountId = api.getAccountId(port.KredietbankId);        
        
        const document = new Document();
        document.ID = port.DocumentId;
        document.Account = accountId;
        document.Subject = port.Omschrijving;
        document.ExpiryDate =  port.VerlooptOp;

        //TODO: uitzoeken hoe kenmerken toe te voegen?
        
        api.createDocument(document);

        const documentAttachment = new DocumentAttachment();

        documentAttachment.Attachment = port.Bestand.Data;
        documentAttachment.Document = port.DocumentId;
        documentAttachment.FileName = port.Bestand.Naam;
        
        api.createDocumentAttachment(documentAttachment);
    }
}