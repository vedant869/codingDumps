public class fetchContacts {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(String Con){
        List<Contact> ListCon = new List<Contact>();
        ListCon = [SELECT Id, Name FROM Contact WHERE NAME =: Con];
        return ListCon;
    }

}