public with sharing class LeadTriggerHandler {
    public static void InsertLead(list<Lead> triggernew,
                                        list<Lead> triggerold,   
                                        Map<Id,Lead> triggernewMap,
                                        Map<Id,Lead> triggeroldmap){
        for (lead eachlist : triggernew) {
            if (eachlist.LeadSource=='Web') {
                eachlist.Rating='Cold';
                
                
            } else{
                eachlist.Rating='Hot';
            }
            
        }
}
}
