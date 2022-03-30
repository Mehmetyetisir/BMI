public with sharing class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew,
                                        List<account> accTriggerOld,
                                        map<id, account> accTriggerNewMap,
                                        map<id, account> accTriggerOldMap) 
{ 
        for (account eachAcc : accTriggerNew) {
            //boolean flag to check if we want to update description
            //so false
            Boolean updateDesc = false;
            if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
                system.debug('before and active is yes');
                //true, we want to update it when Active is yes.
                updateDesc = true;
            }
            //if oldMap not null, then old value exists, so it is update
            if(accTriggerOldMap != null){
                Account oldAcc = accTriggerOldMap.get(eachAcc.id);

                if (eachAcc.active__c == 'Yes'
                && oldAcc.active__c != eachAcc.active__c) {
                    system.debug('before update and active is changed to yes');
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.description = 'Account is now active. Enjoy!';
            }
        }
    }
    public static void updateVIPForAllContact(List<account> accTriggerNew,
                                            List<account> accTriggerOld,
                                             map<id, account> accTriggerNewMap,
                                            map<id, account> accTriggerOldMap) {
            Set<Id> setAccIds = new set<Id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c !=accTriggeroldMap.get(eachAcc.id).VIP__c) {
                setAccIds.add(eachAcc.Id);
                
            }
            
        }
        List<Contact> listOfContacts = [select id, name, account.id, vip__c from contact where Account.Id in :setAccIds];
        for (contact eachContact : listOfContacts) {
            
            Account newAcc =accTriggerNewMap.get(eachcontact.account.id);
            boolean accVIP = newAcc.VIp__c;
            eachContact.vip__c = accVIP;
        }
        if (!listOfContacts.isEmpty()) {
            update listOfContacts;
            
        }
        
    }


}
