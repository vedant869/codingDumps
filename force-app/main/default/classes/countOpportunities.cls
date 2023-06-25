public class countOpportunities {
    public static void countOppOnAcc(List<Opportunity> Opp){
        List<Account> ListAcc = new List<Account>();
        Set<Id> AccId = new Set<Id>();
        for(Opportunity O: Opp){
            AccId.add(O.Id);
        }
        ListAcc = [SELECT ID,(SELECT ID FROM Opportunities) FROM Account WHERE ID IN: AccId];
        for(Account Acc : ListAcc){
            
        }
    }

}