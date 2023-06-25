public class getAllContacts {
    @AuraEnabled(cacheable=true)
    public static List<Contact> returnContactList(String SearchContacts){
        List<Contact> ListCon = new List<Contact>();
        ListCon = [SELECT Id,Name,Phone FROM Contact WHERE lastname LIKE: SearchContacts LIMIT 10];
        System.debug('Contacts '+ListCon);
        return ListCon;
        
    }

}