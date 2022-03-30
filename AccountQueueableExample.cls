public with sharing class AccountQueueableExample implements Queueable {
     public List<Account> accountList;
    public AccountQueueableExample(List<Account> accList) {
        accountList = accList;

    }
    public void execute (QueueableContext context){
        system.debug('Reached in execute method');
        system.debug('accountList=' + accountList);

        for (Account acc : accountList) {
            acc.Name += '--SI';
            //bu line da ekledigin seyleri cikarabilirsiniz
            //acc.Name = acc.Name.remove('--SI');
            
        }
        update accountList;
    }
}
