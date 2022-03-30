@isTest
public  class SoqlDemoTest {
    @isTest
    private static void test1(){
        //prepare the date
        List<Account> listAcc=new List<Account>();
        account acc1 =new account();
        acc1.name='acc1';
        listAcc.add(acc1);

        account acc2 =new account();
        acc2.name='acc2';
        listAcc.add(acc2);

        account acc3 =new account();
        acc3.name='acc3';
        listAcc.add(acc3);
        insert listAcc;

        SoqlDemo.accountSoql_1();
        
    }
    @isTest
    private static void test2(){
        //prepare the date
        List<Account> listAcc=new List<Account>();
        account acc1 =new account();
        acc1.name='acc1';
        acc1.phone='56666662';
        acc1.AccountNumber='atddgs455';
        listAcc.add(acc1);

        account acc2 =new account();
        acc2.name='acc2';
        acc2.phone='56666662';
        acc2.AccountNumber='atddgs455';
        listAcc.add(acc2);

        account acc3 =new account();
        acc3.name='acc3';
        acc3.phone='56666662';
        acc3.AccountNumber='atddgs455';
        listAcc.add(acc3);
        insert listAcc;

        SoqlDemo.accountSoql_2();
        SoqlDemo.accountSoql_3();


        
    }
    @isTest
    private static void test4(){
    List<Account> listAcc2=new List<Account>();
        account acc1 =new account();
        acc1.name='acc1';
        listAcc.add(acc1);
        insert listAcc2;
        SoqlDemo.accountSOQL_Filter();
    }
    
    
}
