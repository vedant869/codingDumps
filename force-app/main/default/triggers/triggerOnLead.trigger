trigger triggerOnLead on Lead (before insert, before update) {
    List<Lead> ExistingLead = new List<Lead>();
    List<String> LeadNames = new List<String>();
    for(Lead L : trigger.new){
        LeadNames.add(L.Name);
        
    }
    AggregateResult ar = [SELECT Name, Sum(Amount) FROM Opportunity Group By Name];
    ExistingLead = [SELECT Id, Name FROM Lead WHERE NAME IN:LeadNames];
    if(ExistingLead!=null){
        for(Lead L : ExistingLead){
            L.addError('Cannot create dups');
        }
    }

}