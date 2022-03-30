@isTest
public  class DmlDemo2Test {
    @isTest
    private static void dmlDemotest3(){
        //1.prepare data
   salesforce_project__c sp = new salesforce_project__c();
   sp.project_Name__c='Teach Test to falcons';
   sp.Description__c = 'All 50% are great';
   sp.status__c = 'New';
   insert sp;

     test.startTest();
        //2.call method
   DmlDemo2.dmlUpdateDemo_2_co();
    test.stopTest();

        //3.Assert
   List<salesforce_ticket__C> st = [select id, subject__c, salesforce_project__c from salesforce_ticket__c where subject__c='Learn Apex'];

   system.assertEquals(1, st.size());



}
}
