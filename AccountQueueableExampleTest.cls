@IsTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
     static void setup() {
         List<Account> accounts = new List<Account>();

         for (Integer i = 0; i < 100; i++) {
             //accounts.add(new Account(name='Test Account'+i));
             account acc1 =new account(name='Test Account'+i);
             accounts.add(acc1);
             //accounts.add(new account(name='Test Account'+i));

             
         }
         insert accounts;
        
    }
    @isTest
    private static void testQueueable() {
        List<Account> accs=[select id , name from account];
        AccountQueueableExample accQObj = new AccountQueueableExample(accs);
        Test.startTest();
        system.enqueueJob(accQObj);
        Test.stopTest();
        Integer count = [select COUNT() from account where name like '%SI'];
        system.assert((count==100));
        system.assertEquals(100, count);


        
    }


}
