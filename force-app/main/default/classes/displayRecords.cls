public class displayRecords {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(String searchString){
        List<Account> ListAcc = new List<Account>();
        ListAcc = [SELECT Id,Name,Phone FROM Account WHERE Name LIKE: searchString];
        return ListAcc;
    }

}