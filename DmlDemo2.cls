public class DmlDemo2 {
    public static void dmlUpdateDemo_2_co() {

        salesforce_project__c sp = [select id, name from                salesforce_project__c ORDER BY createdDate DESC LIMIT 1];
        salesforce_ticket__C st = new salesforce_ticket__c();

        st.subject__c = 'Learn Apex';
        st.Priority__c = 'High';
        st.status__c = 'New';
        st.salesforce_project__c = sp.id;
        insert st;
        system.debug('salesforce ticket: ' + st);
        
    }
    public static void dmlMultipleRecordInsert_right() {
        List<Account> listAccount = new List<Account>();

        Account  acc = new Account();
        acc.Name = 'SoftInnovas 28 Feb v0';
        acc.AccountNumber = 'acbx-1';
        acc.active__c = 'Yes';
        system.debug('before saving acc = ' + acc);
        listAccount.add(acc);

        for (integer  i=1; i< 150; i++) {

            Account  acc2 = new Account();
        acc2.Name = 'SoftInnovas 28 Feb v0'+i;
        acc2.AccountNumber = 'acbx-1'+i;
        acc2.active__c = 'Yes';
        listAccount.add(acc2);
            
        }
        system.debug('size of list ' + listAccount.size());
        if (!ListAccount.isEmpty()) {
            insert listAccount;
            
        }
        
    }
    public static void dmlmultipleRecordUpdate_right() {
        List<Account> listAcc = [select id, name from account where CreatedDate = today];

        List<Account> updateAccounts = new  List<Account>();

        for (Account acc : listAcc) {
            acc.Name = acc.name + 'via B.O';

            updateAccounts.add(acc);
            
        }

        if (!updateAccounts.isEmpty()) {

            update updateAccounts;
            
        }

        
    }
    public static void deletAcc() {
        List<Account> listAcc = [select id, name from account where CreatedDate = today];
        delete listAcc;
        // bu sekilde yazilabilir  Delete[select id, name from account where CreatedDate = today];
        
    }
}
