public with sharing class OpportunityTriggerHandler2 {
    @future
    public static void UpdateHighestAmount(Set<Id> setAccIds){
        List<Account>  AccList1=new  List<Account>();
        AccList1=[select Id , Target_Amount__c , Highest_Amount_Opportunity_Name__c ,
                    (select Name, Amount from Opportunities ORDER BY Amount Desc ) 
                    from Account where Id = : setAccIds ];

        for (Account  eachAccList : AccList1) {
            if (eachAccList.Opportunities.size()>0) {
                eachAccList.Highest_Amount_Opportunity_Name__c=eachAccList.Opportunities[0].Name;
                
            }
            
        }
        update AccList1;


    }
    @future
    public static void UpdateTargerAmount(Set<Id> setAccIds2) {
        List<Account> AccList2=new  List<Account>();
        AccList2=[select Id, Target_Amount__c, Target_Amount_Achieved_Opportunity_Name__c ,(select name,    Amount from opportunities where stageName='Closed Won' order by Amount desc) from Account where Id =: setAccIds2 ];

        for (Account eachAccList2 : AccList2) {
            if (eachAccList2.Opportunities.size()>0) {
                if (eachAccList2.Opportunities[0].Amount>eachAccList2.Target_Amount__c) {
                    eachAccList2.Target_Amount_Achieved_Opportunity_Name__c=eachAccList2.Opportunities[0].Name;
                    
                }
                else {
                    eachAccList2.Target_Amount_Achieved_Opportunity_Name__c='Null';
                    
                }
                
                
            }
            
        }
        update AccList2;

        
    }
    @Future
    public static void UpdateTotalMountGenerate(Set<Id> setAccIds3) {
        List<Account> AccList3=new  List<Account>();
        AccList3=[select Id,Total_Amount_Generated__c,(select name,    Amount from opportunities where stageName='Closed Won' order by Amount desc) from Account where Id =: setAccIds3 ];

        for (Account acc : accList) {
            Decimal totalAmount=0;
            for (Opportunity op : acc.Opportunities) {
                totalAmount
                
            }
            
        }
        
    }
}
