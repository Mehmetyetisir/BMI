@isTest
public  class OpportunityTriggerTest {
    @isTest
    private static void method1() {
        List<Opportunity> opplist=new List<Opportunity>();
        Opportunity op=new Opportunity();
        op.name='TestOpp';
        op.StageName='Closed Won';
        op.CloseDate=date.today();
        opplist.add(op);

        Opportunity op3=new Opportunity();
        op3.name='TestOpp1';
        op3.StageName='Closed Lost';
        date dt=date.today().addDays(25);
        op3.CloseDate=dt;
        opplist.add(op3);

        Opportunity op2=new Opportunity();
        op2.name='TestOpp2';
        op2.StageName='Prospecting';
        date dt1=date.today().addDays(20);
        op2.CloseDate=dt1;
        opplist.add(op2);

        test.startTest();
        insert opplist;
        test.stopTest();

        for (Opportunity  opp : opplist) {
            
            opp.Description='update';

            if (opp.StageName=='Closed Won') {
                opp.StageName='Closed Lost';
                
            }
            if (opp.StageName=='Closed Lost') {
                
                opp.StageName='Prospecting';
            }
            
        }
        
        update opplist;
        
    }
}
