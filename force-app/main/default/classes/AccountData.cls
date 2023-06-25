public class AccountData {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount(){
        List<Account> ListAcc = new List<Account>();
        ListAcc = [SELECT Id, Name, Phone FROM Account LIMIT 10];
        System.debug('List of Account >> '+ListAcc);
        return ListAcc;
    }

}