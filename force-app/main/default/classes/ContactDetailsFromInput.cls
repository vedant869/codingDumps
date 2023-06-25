public class ContactDetailsFromInput {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactDetails(String Con){
        List<Contact> ListCon = new List<Contact>();
        ListCon = [SELECT Id,Name,Phone FROM Contact WHERE Name =: Con];
        return ListCon;
        
    }

}