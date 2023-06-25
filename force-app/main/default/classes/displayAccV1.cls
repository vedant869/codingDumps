public class displayAccV1 {
    @AuraEnabled
    public static List<account> returnAcc(List<String>AccName){
        List<account> ListAcc = new List<account>();
        ListAcc = [SELECT Id, Name FROM Account WHERE Name IN: AccName];
        return ListAcc;
    }

}