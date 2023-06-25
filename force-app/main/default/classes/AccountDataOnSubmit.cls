public class AccountDataOnSubmit {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecords(String searchItem){
        List<Account> ListAcc = new List<Account>();
        
     //   String searchquery = 'SELECT Id, Name, Phone FROM Account WHERE name LIKE:  \'%'+searchItem+'%\' LIMIT 10' ;
     //   ListAcc = Database.query(searchquery);

        ListAcc = [SELECT Id, Name, Phone FROM Account WHERE name LIKE: searchItem LIMIT 10  ];
        System.debug('List of Account '+ListAcc);
        return ListAcc;
    }

}