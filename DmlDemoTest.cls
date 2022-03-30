@isTest
public  class DmlDemoTest {
    @isTest
    private static void DmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc=[select id, name from account where name ='Salesforse Inc.' limit 1];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('Salesforse Inc.', listAcc[0].name);
    }
    @isTest
    private static void DmlDemoTest2(){

    account acc=new account();
    acc.name =' SoftInnovas';
    insert acc;
        DmlDemo.dmlUpdateDemo_2();

        List<contact> listContact=[select id, lastname from contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', ListContact[0].lastname);
        
    }
    @isTest
    private static void dmlDemoTest3(){
        DmlDemo.dmMultipleRecordInsert_right();
        List<Account> Acc=[select id, name from account];
        system.assertEquals(3, Acc.size());

    }
   
}
