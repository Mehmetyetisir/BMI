public with sharing class CustomerTriggerHandler {
    public static void deletePayments(List<Customer__c> triggerOld) {
        Set<Id> CusIds = new Set<Id>();
        Set<Id> InActIds = new Set<Id>();
        for (Customer__c c : triggerOld) {
            if (c.Active__c == true) {
                CusIds.add(c.Id);    
            } else  {
                InActIds.add(c.Id);
            }
        }
        List<Payment__c> payList = [Select Id, Name From Payment__c where customer__c in : CusIds];
            if (!payList.isEmpty()) {
                delete payList;
            }
        List<Payment__c> payList2 = [Select Id, Name From Payment__c where customer__c in : InActIds and mode__c = 'Online'];
        if (!payList2.isEmpty()) {
            delete payList2;
        }
    }
}