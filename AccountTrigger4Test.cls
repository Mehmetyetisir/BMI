@isTest
public  class AccountTrigger4Test {
    @isTest
    private static void Test1(){

        List<Account> listAcc=new List<Account>();
        account acc1=new account();
        acc1.name='acc1';
        listAcc.add(acc1);

        account acc2=new account();
        acc2.name='acc2';
        listAcc.add(acc2);

        account acc3=new account();
        acc3.name='acc3';
        listAcc.add(acc3);

        insert listAcc;

        for (account acc : listAcc) {
            acc.Description= 'test';
            
        }

        update  listAcc;
        

    }
    
  
}
