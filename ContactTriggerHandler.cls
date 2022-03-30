public with sharing class ContactTriggerHandler {
  public static void contactUpdateValidation1(List<contact> cntTriggerNew,
  List<contact> cntTriggerOld,
  map<id, contact> cntTriggerNewMap,
  map<id, contact> cntTriggerOldMap) {

    string customError=system.label.contactValidation1;

    for (contact eachContact : cnttriggerNew) {
        if (eachContact.LeadSource=='Partner Referral') {
            eachContact.addError(customError);
            
        }
        
    }
      
  }
  // public static void contactUpdateValidation2(List<contact> cntTriggerNew,
  // List<contact> cntTriggerOld,
  // map<id, contact> cntTriggerNewMap,
  // map<id, contact> cntTriggerOldMap) {

  //   for (contact eachcontact : cntTriggerNew) {
  //       if (eachcontact.LeadSource && cntTriggeroldmap.get(eachcontact.id).LeadSource) {
  //           eachcontact.LeadSource.addError('Cannt update Lead Source! Please User');
            
  //       }
        
  //   }
      
  // }
}
