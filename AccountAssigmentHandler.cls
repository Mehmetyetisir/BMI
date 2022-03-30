public  class AccountAssigmentHandler {
   public static void updateOpp(List<Account> newAcc, List<Account> oldAcc, Map<Id,Account> newMapAcc, Map<Id,Account> oldMapAcc ){

   List<opportunity> oppList = new List<Opportunity>();
   oppList =[select id , stageName 
            from opportunity 
            where AccountId =: newAcc
            and StageName != 'Closed Won' 
            and createdDate < Last_N_Days:30 ];
    if (!oppList.isEmpty()) {
        for (opportunity eachOpp : oppList) {
            eachOpp.StageName='Closed Lost';
            
        }
        update oppList;
        
    }
   }
}

