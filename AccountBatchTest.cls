@isTest
public with sharing class AccountBatchTest {
    @isTest
    public static void testAccDescriptionUpdate(){
        account acc1 =new account();
        acc1.name='Test Account1';

        account acc2 =new account();
        acc2.name='Test Account2';

        List<Account> accList = new List<Account>{acc1,acc2};
        for (Integer i = 0; i < 900; i++) {
            Account acc = new Account();
            acc.Name ='Test Account'+i;
            accList.add(acc);
            
        }
        insert accList;


        Test.startTest();
        AccountsBatch accBatch = new AccountsBatch();
        Database.executeBatch(accBatch, 950);
        Test.stopTest();


        List<Account>  accUpdateList = [select id, name, description from Account];
        for (Account acc : accUpdatelist) {

            system.assert(acc.Description.contains('apex'));
            
        }



    }
    
}
