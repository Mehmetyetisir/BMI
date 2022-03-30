public with sharing class OpportunityTriggerHandler {
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 1
    public static void setDefaultCloseDate(List<Opportunity> newList){
        for(Opportunity newOpp : newList){
            if(newOpp.StageName == 'Closed Won' || newOpp.StageName == 'Closed Lost'){
                newOpp.CloseDate = Date.today();
            } else {
                newOpp.CloseDate = Date.today().addDays(15);
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 2
    public static void updateCloseDate(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName && (newOpp.StageName == 'Closed Lost' || newOpp.StageName == 'CLosed Won')){
                newOpp.CloseDate = Date.today();
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 5
    public static void updateDescription(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName && newOpp.StageName == 'Closed Lost'){
                newOpp.Description = 'Opportunity is lost. Please log a case with investigation team to start investigation.';
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -2 Question 2
    public static void validateOppUpdation(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName){
                if(oldOpp.StageName == 'Closed Won'){
                    newOpp.addError('Stage cannot be changed from Closed/won');
                }
                if(oldOpp.StageName == 'Closed Lost'){
                    newOpp.addError('Stage cannot be changed from Closed/Lost');
                }
            }
        }
    }
}