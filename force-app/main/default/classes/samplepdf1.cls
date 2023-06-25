public class samplepdf1 {
    public String currentRecordId {get;set;}
    public list<account> accountrecord{get;set;}
    public string accountid{get;set;}
    public account acc{get;set;}
    public samplepdf1(ApexPages.StandardController stdController){
        accountid = ApexPages.currentPage().getParameters().get('id');
        this.acc = (Account)stdController.getRecord();
        currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
        System.debug('currentRecordId >> '+currentRecordId);
        
    }    
    public pagereference save()
    {
        upsert acc;
        savepdf();
        // send the user to the account to view results
        return new PageReference('/'+accountid);
    }
    public PageReference savepdf() {
        PageReference pdf = Page.samplepdf1vf;//new PageReference('/'+accountid);Page.samplepdf1vf;
        // add parent id to the parameters for standardcontroller
        pdf.getParameters().put('id',accountid);
        // create the new attachment
        Attachment attach = new Attachment();
        // the contents of the attachment from the pdf
        Blob body;
        try {
            // returns the output of the page as a PDF
            body = pdf.getContentasPDF();
        } catch (VisualforceException e) {
            body = Blob.valueOf('unable to get content as pdf');
        }
        attach.Body = body;
        // add the user entered name
        attach.Name = acc.name+'.pdf';
        attach.IsPrivate = false;
        // attach the pdf to the account
        attach.parentid = accountid;
        attach.ContentType = 'application/pdf';
        insert attach;
        return null;
    } 
    
}