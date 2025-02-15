@isTest
public class SoqlDemo2Test{
    @isTest
    private static void soqlDemoTest1(){
        //1. prepare the DATA.
            //do dmls here
            list<account> listAcc = new list<account>();
            account acc1 = new account();
            acc1.name = 'acc1';
            acc1.industry = 'Energy';
            listAcc.add(acc1);
    
            account acc2 = new account();
            acc2.name = 'acc2';
            acc2.industry = 'Energy';
            listAcc.add(acc2);
    
            account acc3 = new account();
            acc3.name = 'acc3';
            acc3.industry = 'Banking';
            listAcc.add(acc3);
            insert listAcc;

            list<contact> listContact = new list<contact>();
            for (Integer i = 0; i < 300; i++) {
                contact c = new contact();
                c.lastName = 'test soql ' + i;
                if (i < 100) {
                    c.accountid = acc1.id;
                } else if(i < 200){
                    c.accountid = acc2.id;
                } else if(i < 300){
                    c.accountid = acc3.id;
                }
                listContact.add(c);
            }
            insert listContact;

            //END 1. 

            //Start 2. step
            //reset gov limits
            Test.startTest();
            SoqlDemo2.childToParent_soql1();
            Test.stopTest();
            //END 2.
    }
}