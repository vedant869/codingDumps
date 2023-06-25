public class pdfController {
    //public List<Account> acts { get; set;}
    public static List<Account> getPdf(){
        List<Account> acts = [SELECT Id, Name FROM Account WHERE Id = '0015i00000R1dteAAB'];
        System.debug('Account >> '+acts[0].name);
        return acts;
    }

}