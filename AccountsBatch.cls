public with sharing class AccountsBatch  implements Database.batchable<Sobject>, Database.stateful {
    public integer count=0;


    public Database.QueryLocator start (Database.BatchableContext bc){
        Database.QueryLocator  q1 = Database.getQueryLocator([select id, description from account where Active__='Yes']);
        return q1;
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account>  updateAccounts = new List<Account>();
        for (account acc : scope) {
            if (acc.Active__c=='Yes') {
           
            acc.Description+= '..... update via Batch apex';
            updateAccounts.add(acc);
            count++;
            }
                
        }
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
            
        }

    }

    public void finish(Database.BatchableContext bc){
        system.debug('done with update all the accounts');
        system.debug('Total number of record Update: '+ count);

    }
}
