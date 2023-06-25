public class HelperForCon {
    public static void sendErrorOnDelete(List<Account> ListAcc){
        List<Id> AccId = new List<Id>();
        List<Id> AccIds = new List<Id>();
        List<Contact> ListCon = new List<Contact>();
        for(Account A : ListAcc){
            AccId.add(A.id);
            
        }
        ListCon = [SELECT Id,AccountId FROM Contact WHERE AccountId IN:AccId ];
        for(Contact C:ListCon){
            AccIds.add(C.accountId);
        }
        for(Account a:ListAcc){
            if(AccIds.contains(a.Id)){
               // a.addError('Cant delete as related con already exist');
            }
        }
        
    }

}