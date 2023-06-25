public class UpdateCountOnAccount {
    public static void incrementCount(List<Contact> ConList){
        List<Id> AccId = new List<Id>();
        List<Account> AccList = new List<Account>();
        List<Account> UpdatedAccount = new List<Account>();
        for(Contact C : ConList){
            AccId.add(C.AccountId);
        }
        AccList = [SELECT Id, Count__c FROM Account WHERE Id IN: AccId];
        for(Account a : AccList){
            a.count__c = a.count__c+1;
            UpdatedAccount.add(a);
            
        }
        update UpdatedAccount;
        
        
    }
    public static void decrementCount(List<Contact> ConList){
        Set<id> AccIds = new Set<id>();
        List<Account> ListAc = new List<Account>();
        List<Account> UpdatedAc = new List<Account>();
        for(Contact C : ConList){
            AccIds.add(C.AccountId);            
        }
        ListAc = [SELECT Id,Count__c FROM Account WHERE ID IN: AccIds];
        for(Account A : ListAc){
            A.count__c = A.count__c - 1;
            UpdatedAc.add(A);
        }
        update UpdatedAc;
        
    }

}