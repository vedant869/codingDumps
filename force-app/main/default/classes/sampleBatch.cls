public class sampleBatch implements Database.Batchable<sObject>, Database.allowsCallouts{
    public database.QueryLocator start(Database.BatchableContext bc){
        string q = 'SELECT Id, Name FROM Account';
        return database.getQueryLocator(q);
    }
    public void execute(Database.BatchableContext bc, List<Account> scope){
        for(Account a: scope){
            a.name = 'xyz';
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Successful');
    }

}