public class searchAccount {
    public static List<Account> getAccount(String Name){
        List<Account> ListAcc = new List<Account>();
        ListAcc = [SELECT ID, Name FROM Account WHERE NAME =: Name];
        return ListAcc;
        
        
    }

}