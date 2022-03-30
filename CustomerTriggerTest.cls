@isTest
public  class CustomerTriggerTest {
    @TestSetup
    static void TestSetUpMethod1(){
        List<Customer__c>  cstList=new  List<Customer__c>();
        for (Integer i = 0; i < 10; i++) {
            customer__c  Cst=new customer__c();
            if (i<4) {
                cst.active__c=true;
                
            } else {
                cst.active__c=false;
            }
            cstList.add(cst); 
        }
        

        insert cstList;

        list<Payment__c> pytList=new list<Payment__c>();
        for (customer__c eachcst : cstList) {

            for (Integer i = 0; i < 10; i++) {

                payment__c  pyt1=new payment__c();

                pyt1.customer__c=eachcst.id;

                if (i<5) {
                    pyt1.mode__c='Cash';
                    
                } else {
                    pyt1.mode__c='Online';
                }

                pytList.add(pyt1);
            
            }
            
  
        }
        insert pytlist;
        
    }

    @istest
     private static void deleteCustomermethod() {

        List<Customer__c>  cstList=new  List<Customer__c>();

        cstList=[select id from customer__c];

        test.startTest();
        delete cstList;
        test.stopTest();
     }
    
}
