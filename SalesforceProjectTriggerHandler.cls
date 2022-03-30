public with sharing class SalesforceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(list<salesforce_project__c> spTriggerNew ) {

        
    }

    @future
    public static void updateProjectDescription(set<id> setSpId){

        list<salesforce_project__c> lsrSP=[select id,description__c from salesforce_project__c where id in:setSpId];

        for (salesforce_project__c eachSp : lsrSP) {
            eachSp.description__c += 'Update from future';
            
        }
        update lsrSP;
    }
}
