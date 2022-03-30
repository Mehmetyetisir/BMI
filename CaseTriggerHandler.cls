public with sharing class CaseTriggerHandler {
    public static void newCaseWithStatus(list<case> triggernew,
                                        list<case> triggerold,   
                                        Map<Id,case> triggernewMap,
                                        Map<Id,case> triggeroldmap){
        for (case eachcase : triggernew) {
            if (eachCase.Origin=='Email') {
                eachCase.Status ='Escalated';
                eachCase.Priority = 'High';
                
            }
            
        }
                                            
                                        
    }
}