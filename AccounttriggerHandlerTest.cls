@isTest
public  class AccounttriggerHandlerTest {
    @isTest
    public static void test1(){

        List<Account> listAcc=new List<Account>();
        account acc1=new account();
        acc1.name='acc1';
        acc1.active__c='No';
        listAcc.add(acc1);

        account acc2=new account();
        acc2.name='acc2';
        acc2.active__c='No';
        listAcc.add(acc2);

        account acc3=new account();
        acc3.name='acc3';
        acc3.active__c='Yes';
        listAcc.add(acc3);

        insert listAcc;

        for (account acc : listAcc) {
       
            acc.active__c='Yes';
            acc.Description= 'test';
            
        }

        update  listAcc;
        

    }
    @isTest
    private static void test2(){

        List<Account> listAcc=new List<Account>();
        account acc1=new account();
        acc1.name='acc1';
        acc1.active__c='No';
        listAcc.add(acc1);

        account acc2=new account();
        acc2.name='acc2';
        acc2.active__c='No';
        listAcc.add(acc2);

        account acc3=new account();
        acc3.name='acc3';
        acc3.active__c='Yes';
        listAcc.add(acc3);

        insert listAcc;

       List<Contact> listContact = new List<Contact>();
       for (Integer i = 0; i < 30; i++) {
           contact c=new contact();
           c.lastName = 'test soql'+i;
           if (i<10) {
               c.accountId=acc1.id;
               
           } else if (i<20) {
            c.accountId=acc2.id;

                } else if (i<30) {
               c.accountId=acc3.id;

                    
                }
                listContact.add(c);
           
       }

        insert  listContact;

        for (account acc : listAcc) {
       
            acc.vip__c=true;
            acc.Description= 'test';
            
        }

        update  listAcc;
        

    }
    }

    
    

