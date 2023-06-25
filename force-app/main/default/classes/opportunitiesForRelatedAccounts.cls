public class opportunitiesForRelatedAccounts {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> returnAccounts(Id AccountId){
        List<Opportunity> ListOpp = new List<Opportunity>();
        ListOpp = [SELECT Id, Name, AccountId From Opportunity WHERE AccountId =: AccountId];
        return ListOpp;
    }

}