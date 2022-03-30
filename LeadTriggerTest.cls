@isTest
public class LeadTriggerTest {
    @isTest
    private static void InsertLeadTest() {
        
        list<lead>  insList=new  list<Lead>();
        lead Id=new lead();
        Id.LastName='Abc';
        Id.Company='mmm';
        Id.LeadSource='Web';
        insList.add(Id);

        lead Id2=new lead();
        Id2.LastName='ads';
        Id2.Company='yyy';
        Id2.LeadSource='Phone Inquiry';
        insList.add(Id2);

        insert insList;

        list<lead>  insList1=new  list<Lead>();
        for (Integer i = 1; i < 40; i++) {
            lead  Id3=new lead();
            Id3.LastName='Abc'+i;
            Id3.Company='mmm'+i;
            if (i<20) {
                Id3.LeadSource='Web';
                
            } else {
                Id3.LeadSource = 'Phone Inquiry';
            }
            insList1.add(Id3);
                
        }
        


        Test.startTest();
        insert insList1;
        Test.stopTest();



    }
    
}
