public class triggerOnTopxHandler {
    public static void updateOpportunity(List<Top_X_Designation__c> ListTopX){
        Set<id> SetOppToUpdate = new set<id>();
        List<Opportunity> ListOppToUpdate = new List<Opportunity>();
        List<Opportunity> ListOppUpdated = new List<Opportunity>();
        for(Top_X_Designation__c t : ListTopX){
            if(t.Type__c == 'Contract Flow Down' && t.Document_Attached__c == true){
                SetOppToUpdate.add(t.Opportunity__c);
            }
        }
        ListOppToUpdate = [SELECT Id, Handoff_Attached__c FROM Opportunity WHERE ID IN: SetOppToUpdate];
        for(Opportunity O : ListOppToUpdate){
            O.Handoff_Attached__c = 'Yes';
            ListOppUpdated.add(O);
        }
        update ListOppUpdated;
        
    }
    public static void upateOppForDeletedRec (List<Top_X_Designation__c> ListTopX){
        List<Opportunity> ListDeletedOpp = new List<Opportunity>();
        List<Opportunity> ListOppToUpdate = new List<Opportunity>();
        Set<Id> OpportunityIds = new Set<Id>();
        for(Top_X_Designation__c TopX : ListTopX){
            OpportunityIds.add(TopX.Opportunity__c);
        }
        ListDeletedOpp = [SELECT Id, Handoff_Attached__c FROM Opportunity WHERE Id IN: OpportunityIds];
        for(Opportunity O : ListDeletedOpp){
            O.Handoff_Attached__c = 'No';
            ListOppToUpdate.add(O);
        }
        update ListOppToUpdate;
    }
    

}